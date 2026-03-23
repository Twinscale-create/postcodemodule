/**
 * expand_pc4_full.mjs
 *
 * Downloadt CBS PC4 2024 ZIP, leest GeoPackage (centroids RD→WGS84)
 * + Excel (inwoners, pct_vrouw, leeftijd, pct_koop) voor alle ~4000 postcodes.
 * Genereert scripts/insert_pc4_full.sql — INSERT + UPDATE voor alle postcodes.
 *
 * Gebruik: node scripts/expand_pc4_full.mjs <service_role_key>
 */
import { createRequire } from 'module'
import { get } from 'https'
import { writeFileSync, mkdirSync, existsSync } from 'fs'
import { join } from 'path'
import os from 'os'
const require = createRequire(import.meta.url)
const AdmZip   = require('adm-zip')
const XLSX     = require('xlsx')
const initSqlJs = require('sql.js')

const CBS_URL    = 'https://download.cbs.nl/postcode/2025-cbs_pc4_2024_v1.zip'
const SUPPRESSED = -99997

// ── Kolommen in het CBS Excel-bestand ──────────────────────────────────────
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

// ── RD New (EPSG:28992) → WGS84 (EPSG:4326) ──────────────────────────────
// Bron: Benaderingsformules NSGI (https://www.nsgi.nl)
function rd2wgs84(x, y) {
  const X0 = 155000, Y0 = 463000
  const phi0 = 52.156160556, lam0 = 5.387638889
  const dX = (x - X0) * 1e-5, dY = (y - Y0) * 1e-5

  const Kp = [
    [0, 1, 3235.65389],
    [2, 0,  -32.58297],
    [0, 2,  -0.24750],
    [2, 1,  -0.84978],
    [0, 3,  -0.06550],
    [2, 2,   0.01709],
    [1, 0,   0.00738],
    [4, 0,  -0.01021],
    [2, 3,  -0.00342],
    [1, 1,  -0.00039],
    [4, 1,  -0.00022],
  ]
  const Lp = [
    [1, 0, 5260.52916],
    [1, 1,  105.94684],
    [1, 2,    2.45656],
    [3, 0,   -0.81885],
    [1, 3,    0.05594],
    [3, 1,   -0.05607],
    [0, 1,    0.01199],
    [3, 2,   -0.00256],
    [1, 4,    0.00128],
    [0, 2,    0.00022],
    [2, 0,   -0.00022],
  ]

  let dPhi = 0, dLam = 0
  for (const [p, q, Kpq] of Kp) dPhi += Kpq * Math.pow(dX, p) * Math.pow(dY, q)
  for (const [p, q, Lpq] of Lp) dLam += Lpq * Math.pow(dX, p) * Math.pow(dY, q)

  const lat = phi0 + dPhi / 3600
  const lon = lam0 + dLam / 3600
  return { lat: Math.round(lat * 1e6) / 1e6, lon: Math.round(lon * 1e6) / 1e6 }
}

// ── GeoPackage geometry header → bounding box centroid ────────────────────
// GeoPackage header: 2 bytes magic + 1 version + 1 flags + 4 SRS + [envelope]
function gpkgCentroid(buf) {
  if (!buf || buf.length < 8) return null
  const flags = buf[3]
  const envelopeType = (flags >> 1) & 0x07  // bits 1-3
  if (envelopeType === 0) return null        // geen envelope, skip
  // Envelope start na 8-byte header
  // envelopeType 1 = bbox (4 doubles = minX maxX minY maxY)
  // Alle coordinaten zijn doubles (8 bytes), little-endian
  const view = new DataView(buf.buffer, buf.byteOffset)
  const minX = view.getFloat64(8,  true)
  const maxX = view.getFloat64(16, true)
  const minY = view.getFloat64(24, true)
  const maxY = view.getFloat64(32, true)
  return rd2wgs84((minX + maxX) / 2, (minY + maxY) / 2)
}

// ── Download helper ───────────────────────────────────────────────────────
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
  process.stderr.write('Downloaden CBS PC4 2024...\n')
  const buf = await download(CBS_URL)
  const zip = new AdmZip(buf)
  const entries = zip.getEntries()

  // Vind Excel en GeoPackage
  const xlsEntry  = entries.find(e => /\.xlsx?$/i.test(e.entryName))
  const gpkgEntry = entries.find(e => /\.gpkg$/i.test(e.entryName))
  if (!xlsEntry)  { console.error('Geen Excel gevonden in ZIP'); process.exit(1) }
  if (!gpkgEntry) { console.error('Geen GeoPackage gevonden in ZIP'); process.exit(1) }
  process.stderr.write(`  Excel:      ${xlsEntry.entryName}\n`)
  process.stderr.write(`  GeoPackage: ${gpkgEntry.entryName}\n`)

  // ── Excel inlezen ─────────────────────────────────────────────────────
  process.stderr.write('Excel inlezen...\n')
  const wb  = XLSX.read(xlsEntry.getData(), { type: 'buffer' })
  const ws  = wb.Sheets[wb.SheetNames[0]]
  const raw = XLSX.utils.sheet_to_json(ws, { header: 1, defval: null })
  const cbsByPc4 = new Map()
  for (const row of raw.slice(9)) {
    const d = bereken(row)
    if (d) cbsByPc4.set(d.pc4, d)
  }
  process.stderr.write(`  ${cbsByPc4.size} postcodes met inwoners > 0\n`)

  // ── GeoPackage inlezen (sql.js) ───────────────────────────────────────
  process.stderr.write('GeoPackage inlezen (centroids)...\n')
  const SQL   = await initSqlJs()
  const gpkgBuf = gpkgEntry.getData()
  const db    = new SQL.Database(gpkgBuf)

  // Zoek de tabel en geometriekolom
  const tables = db.exec("SELECT table_name, column_name FROM gpkg_geometry_columns LIMIT 5")
  if (!tables[0]) { console.error('Geen gpkg_geometry_columns'); process.exit(1) }
  const tableName = tables[0].values[0][0]
  const geomCol   = tables[0].values[0][1]
  process.stderr.write(`  Tabel: ${tableName}, kolom: ${geomCol}\n`)

  // Zoek de postcode-kolom (naam bevat 'pc4' of 'postcode')
  const colRes = db.exec(`PRAGMA table_info(${tableName})`)
  const cols   = colRes[0].values.map(v => v[1].toLowerCase())
  const pc4Col = cols.find(c => c.includes('pc4') || c.includes('postcode'))
  if (!pc4Col) { console.error('Geen postcode-kolom gevonden:', cols); process.exit(1) }
  process.stderr.write(`  Postcode-kolom: ${pc4Col}\n`)

  const stmt = db.prepare(`SELECT "${pc4Col}", "${geomCol}" FROM ${tableName}`)
  const coordsByPc4 = new Map()
  while (stmt.step()) {
    const row = stmt.getAsObject()
    const pc4 = String(row[pc4Col]).padStart(4, '0')
    const geomBuf = row[geomCol]
    if (!geomBuf) continue
    const center = gpkgCentroid(typeof geomBuf === 'string' ? Buffer.from(geomBuf, 'binary') : geomBuf)
    if (center) coordsByPc4.set(pc4, center)
  }
  stmt.free()
  db.close()
  process.stderr.write(`  ${coordsByPc4.size} postcodes met coordinaten\n`)

  // ── Combineren ────────────────────────────────────────────────────────
  const rows = []
  for (const [pc4, coords] of coordsByPc4) {
    const cbs = cbsByPc4.get(pc4)
    rows.push({
      pc4,
      lat: coords.lat,
      lon: coords.lon,
      inwoners:  cbs?.inwoners  ?? 0,
      pct_vrouw: cbs?.pct_vrouw ?? null,
      leeftijd:  cbs?.leeftijd  ?? null,
      pct_koop:  cbs?.pct_koop  ?? null,
    })
  }
  process.stderr.write(`  ${rows.length} postcodes totaal (met coordinaten)\n`)

  // ── SQL genereren ────────────────────────────────────────────────────
  const sqlLines = rows.map(r => {
    const vrw  = r.pct_vrouw !== null ? r.pct_vrouw : 'NULL'
    const lft  = r.leeftijd  !== null ? r.leeftijd  : 'NULL'
    const koop = r.pct_koop  !== null ? r.pct_koop  : 'NULL'
    return `INSERT INTO pc4_cbs (postcode, lat, lon, inwoners, pct_vrouw, cbs_leeftijd, pct_koop, cbs_inkomen, pct_hbo, bron_jaar)
  VALUES ('${r.pc4}', ${r.lat}, ${r.lon}, ${r.inwoners}, ${vrw}, ${lft}, ${koop}, 0, 0, 2024)
  ON CONFLICT (postcode) DO UPDATE SET
    lat          = EXCLUDED.lat,
    lon          = EXCLUDED.lon,
    inwoners     = EXCLUDED.inwoners,
    pct_vrouw    = COALESCE(EXCLUDED.pct_vrouw, pc4_cbs.pct_vrouw),
    cbs_leeftijd = COALESCE(EXCLUDED.cbs_leeftijd, pc4_cbs.cbs_leeftijd),
    pct_koop     = COALESCE(EXCLUDED.pct_koop, pc4_cbs.pct_koop),
    bron_jaar    = 2024,
    updated_at   = NOW();`
  })

  const totalInwoners = rows.reduce((s, r) => s + (r.inwoners || 0), 0)
  const sql = `-- TwinScale: ALLE CBS PC4 2024 postcodes (~4000) met echte lat/lon + CBS data
-- Gegenereerd door scripts/expand_pc4_full.mjs
-- Bron: CBS 2025-cbs_pc4_2024_v1.zip (Excel + GeoPackage centroids)
-- Inwoners totaal: ${totalInwoners.toLocaleString('nl-NL')}
-- Postcodes: ${rows.length}
--
-- Plak in Supabase SQL Editor → Run (of gebruik run_expand_pc4.mjs)

${sqlLines.join('\n\n')}

-- Controleer:
SELECT
  COUNT(*) AS totaal_postcodes,
  SUM(CASE WHEN inwoners > 0 THEN 1 ELSE 0 END) AS met_inwoners,
  SUM(inwoners) AS totaal_inwoners
FROM pc4_cbs;
`

  writeFileSync('scripts/insert_pc4_full.sql', sql)
  console.log(`\n✅ Klaar!`)
  console.log(`  ${rows.length} postcodes (met lat/lon uit GeoPackage)`)
  console.log(`  ${cbsByPc4.size} postcodes met CBS inwoners-data`)
  console.log(`  Totaal inwoners: ${totalInwoners.toLocaleString('nl-NL')}`)
  console.log(`\n  → scripts/insert_pc4_full.sql`)
  console.log(`  Volgende stap: node scripts/run_expand_pc4.mjs <service_role_key>`)
}

main().catch(e => { console.error(e); process.exit(1) })
