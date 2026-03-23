/**
 * run_expand_pc4.mjs
 *
 * Laadt alle ~4071 CBS PC4 2024 postcodes met echte lat/lon (GeoPackage centroids)
 * en CBS-data (inwoners, pct_vrouw, leeftijd, pct_koop) rechtstreeks in Supabase.
 * Gebruikt directe PostgreSQL verbinding voor snelheid (geen REST API rate limit).
 *
 * Gebruik: node scripts/run_expand_pc4.mjs
 */
import { createRequire } from 'module'
import { get } from 'https'
const require = createRequire(import.meta.url)
const AdmZip    = require('adm-zip')
const XLSX      = require('xlsx')
const initSqlJs = require('sql.js')
const { Client } = require('pg')

const CBS_URL    = 'https://download.cbs.nl/postcode/2025-cbs_pc4_2024_v1.zip'
const SUPPRESSED = -99997
const BATCH_SIZE = 200

const DB = {
  host:     'db.dltpqygzxhambupwobms.supabase.co',
  port:     5432,
  user:     'postgres',
  password: 'Appelszijnlekker!',
  database: 'postgres',
  ssl:      { rejectUnauthorized: false }
}

const COL = { PC4: 0, INW: 1, VRW: 3, L_0_14: 4, L_15_24: 5, L_25_44: 6, L_45_64: 7, L_65P: 8, KOOP: 30 }
function safe(v) { return (v === null || v === undefined || v === SUPPRESSED) ? null : Number(v) }

function bereken(row) {
  const pc4  = String(row[COL.PC4]).padStart(4, '0')
  const inw  = safe(row[COL.INW])
  const vrw  = safe(row[COL.VRW])
  const l0   = safe(row[COL.L_0_14]) ?? 0
  const l1   = safe(row[COL.L_15_24]) ?? 0
  const l2   = safe(row[COL.L_25_44]) ?? 0
  const l3   = safe(row[COL.L_45_64]) ?? 0
  const l4   = safe(row[COL.L_65P])   ?? 0
  const koop = safe(row[COL.KOOP])
  if (!inw || inw <= 0) return null
  const pct_vrouw = vrw !== null ? Math.round((vrw / inw) * 1000) / 10 : null
  const totL = l0 + l1 + l2 + l3 + l4
  const leeftijd = totL > 0 ? Math.round(((7*l0 + 20*l1 + 35*l2 + 55*l3 + 75*l4) / totL) * 10) / 10 : null
  return { pc4, inwoners: inw, pct_vrouw, leeftijd, pct_koop: koop }
}

function rd2wgs84(x, y) {
  const X0 = 155000, Y0 = 463000
  const phi0 = 52.156160556, lam0 = 5.387638889
  const dX = (x - X0) * 1e-5, dY = (y - Y0) * 1e-5
  const Kp = [[0,1,3235.65389],[2,0,-32.58297],[0,2,-0.24750],[2,1,-0.84978],[0,3,-0.06550],[2,2,0.01709],[1,0,0.00738],[4,0,-0.01021],[2,3,-0.00342],[1,1,-0.00039],[4,1,-0.00022]]
  const Lp = [[1,0,5260.52916],[1,1,105.94684],[1,2,2.45656],[3,0,-0.81885],[1,3,0.05594],[3,1,-0.05607],[0,1,0.01199],[3,2,-0.00256],[1,4,0.00128],[0,2,0.00022],[2,0,-0.00022]]
  let dPhi = 0, dLam = 0
  for (const [p, q, Kpq] of Kp) dPhi += Kpq * Math.pow(dX, p) * Math.pow(dY, q)
  for (const [p, q, Lpq] of Lp) dLam += Lpq * Math.pow(dX, p) * Math.pow(dY, q)
  return { lat: Math.round((phi0 + dPhi / 3600) * 1e6) / 1e6, lon: Math.round((lam0 + dLam / 3600) * 1e6) / 1e6 }
}

function gpkgCentroid(buf) {
  if (!buf || buf.length < 8) return null
  const envelopeType = (buf[3] >> 1) & 0x07
  if (envelopeType === 0) return null
  const view = new DataView(buf.buffer, buf.byteOffset)
  const minX = view.getFloat64(8, true), maxX = view.getFloat64(16, true)
  const minY = view.getFloat64(24, true), maxY = view.getFloat64(32, true)
  return rd2wgs84((minX + maxX) / 2, (minY + maxY) / 2)
}

function download(url) {
  return new Promise((resolve, reject) => {
    const chunks = []
    get(url, res => {
      const total = parseInt(res.headers['content-length'] || '0')
      let done = 0
      res.on('data', d => { chunks.push(d); done += d.length; process.stderr.write(`\r  Download: ${Math.round(done/total*100)}%   `) })
      res.on('end', () => { process.stderr.write('\n'); resolve(Buffer.concat(chunks)) })
      res.on('error', reject)
    }).on('error', reject)
  })
}

async function main() {
  // 1. Download CBS ZIP
  process.stderr.write('Downloaden CBS PC4 2024...\n')
  const buf = await download(CBS_URL)
  const zip = new AdmZip(buf)
  const entries = zip.getEntries()
  const xlsEntry  = entries.find(e => /\.xlsx?$/i.test(e.entryName))
  const gpkgEntry = entries.find(e => /\.gpkg$/i.test(e.entryName))

  // 2. Excel → CBS data
  process.stderr.write('Excel inlezen...\n')
  const wb  = XLSX.read(xlsEntry.getData(), { type: 'buffer' })
  const ws  = wb.Sheets[wb.SheetNames[0]]
  const raw = XLSX.utils.sheet_to_json(ws, { header: 1, defval: null })
  const cbsByPc4 = new Map()
  for (const row of raw.slice(9)) {
    const d = bereken(row)
    if (d) cbsByPc4.set(d.pc4, d)
  }
  process.stderr.write(`  ${cbsByPc4.size} postcodes met CBS-data\n`)

  // 3. GeoPackage → centroids
  process.stderr.write('GeoPackage inlezen...\n')
  const SQL   = await initSqlJs()
  const db    = new SQL.Database(gpkgEntry.getData())
  const tables = db.exec("SELECT table_name, column_name FROM gpkg_geometry_columns LIMIT 1")
  const tableName = tables[0].values[0][0]
  const geomCol   = tables[0].values[0][1]
  const colRes    = db.exec(`PRAGMA table_info(${tableName})`)
  const cols      = colRes[0].values.map(v => v[1].toLowerCase())
  const pc4Col    = cols.find(c => c.includes('pc4') || c.includes('postcode'))

  const stmt = db.prepare(`SELECT "${pc4Col}", "${geomCol}" FROM ${tableName}`)
  const rows = []
  while (stmt.step()) {
    const row   = stmt.getAsObject()
    const pc4   = String(row[pc4Col]).padStart(4, '0')
    const geom  = row[geomCol]
    const center = geom ? gpkgCentroid(typeof geom === 'string' ? Buffer.from(geom, 'binary') : geom) : null
    if (!center) continue
    const cbs = cbsByPc4.get(pc4)
    rows.push({
      pc4,
      lat:      center.lat,
      lon:      center.lon,
      inwoners: cbs?.inwoners  ?? 0,
      pct_vrouw: cbs?.pct_vrouw ?? null,
      leeftijd:  cbs?.leeftijd  ?? null,
      pct_koop:  cbs?.pct_koop  ?? null,
    })
  }
  stmt.free(); db.close()
  process.stderr.write(`  ${rows.length} postcodes met lat/lon\n`)

  const totalInw = rows.reduce((s, r) => s + (r.inwoners || 0), 0)
  process.stderr.write(`  Totaal inwoners: ${totalInw.toLocaleString('nl-NL')}\n`)

  // 4. Upload naar database
  process.stderr.write('Verbinden met database...\n')
  const client = new Client(DB)
  await client.connect()
  process.stderr.write('Verbonden!\n')

  let inserted = 0, updated = 0, errs = 0
  for (let i = 0; i < rows.length; i += BATCH_SIZE) {
    const batch = rows.slice(i, i + BATCH_SIZE)
    // Multi-row INSERT via unnest voor snelheid
    const pcs   = batch.map(r => r.pc4)
    const lats  = batch.map(r => r.lat)
    const lons  = batch.map(r => r.lon)
    const inws  = batch.map(r => r.inwoners)
    const vrws  = batch.map(r => r.pct_vrouw)
    const lfts  = batch.map(r => r.leeftijd)
    const koops = batch.map(r => r.pct_koop)

    // Nationale CBS gemiddelden als fallback voor onderdrukte waarden (kleine postcodes)
    const NL_VRW  = 50.5   // % vrouwen landelijk
    const NL_LFT  = 43.0   // gem. leeftijd landelijk
    const NL_KOOP = 54.0   // % koopwoningen landelijk

    const sql = `
      INSERT INTO pc4_cbs (postcode, lat, lon, inwoners, pct_vrouw, cbs_leeftijd, pct_koop, cbs_inkomen, pct_hbo, bron_jaar)
      SELECT
        postcode, lat, lon, inwoners,
        COALESCE(pct_vrouw,    ${NL_VRW}),
        COALESCE(cbs_leeftijd, ${NL_LFT}),
        COALESCE(pct_koop,     ${NL_KOOP}),
        0, 0, 2024
      FROM unnest($1::text[], $2::float[], $3::float[], $4::int[], $5::float[], $6::float[], $7::float[])
        AS t(postcode, lat, lon, inwoners, pct_vrouw, cbs_leeftijd, pct_koop)
      ON CONFLICT (postcode) DO UPDATE SET
        lat          = EXCLUDED.lat,
        lon          = EXCLUDED.lon,
        inwoners     = EXCLUDED.inwoners,
        pct_vrouw    = COALESCE(EXCLUDED.pct_vrouw, pc4_cbs.pct_vrouw),
        cbs_leeftijd = COALESCE(EXCLUDED.cbs_leeftijd, pc4_cbs.cbs_leeftijd),
        pct_koop     = COALESCE(EXCLUDED.pct_koop, pc4_cbs.pct_koop),
        bron_jaar    = 2024,
        updated_at   = NOW()
    `
    try {
      await client.query(sql, [pcs, lats, lons, inws, vrws, lfts, koops])
      inserted += batch.length
    } catch (e) {
      errs++
      process.stderr.write(`\n  ❌ Fout batch ${i}: ${e.message}\n`)
    }
    process.stderr.write(`\r  ${Math.min(i + BATCH_SIZE, rows.length)}/${rows.length} postcodes...`)
  }
  process.stderr.write('\n')

  // Controleer
  const check = await client.query(`
    SELECT COUNT(*) total, SUM(CASE WHEN inwoners > 0 THEN 1 ELSE 0 END) met_inwoners, SUM(inwoners) totaal_inwoners
    FROM pc4_cbs
  `)
  await client.end()

  const r = check.rows[0]
  console.log('\n✅ Klaar!')
  console.log(`  Postcodes in DB:  ${r.total}`)
  console.log(`  Met inwoners:     ${r.met_inwoners}`)
  console.log(`  Totaal inwoners:  ${Number(r.totaal_inwoners).toLocaleString('nl-NL')}`)
  console.log(`  Fouten:           ${errs}`)
}

main().catch(e => { console.error(e); process.exit(1) })
