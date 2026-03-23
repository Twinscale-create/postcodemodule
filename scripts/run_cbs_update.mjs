/**
 * run_cbs_update.mjs
 * Leest CBS 2024 data en update pc4_cbs via Supabase REST API.
 * Werkt met service_role key — bypast RLS.
 * Update: pct_vrouw, cbs_leeftijd, pct_koop, bron_jaar (kolommen die al bestaan)
 * inwoners wordt apart gedaan via alter_pc4_add_inwoners.sql + update_pc4_inwoners.sql
 */
import { createRequire } from 'module'
import { get } from 'https'
const require = createRequire(import.meta.url)
const AdmZip  = require('adm-zip')
const XLSX    = require('xlsx')

const SERVICE_KEY = process.argv[2]
if (!SERVICE_KEY) { console.error('Gebruik: node run_cbs_update.mjs <service_role_key>'); process.exit(1) }

const SUPABASE_URL = 'https://dltpqygzxhambupwobms.supabase.co'
const CBS_URL      = 'https://download.cbs.nl/postcode/2025-cbs_pc4_2024_v1.zip'
const SUPPRESSED   = -99997
const BATCH_SIZE   = 50

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

  const pct_vrouw   = vrw !== null ? Math.round((vrw / inw) * 1000) / 10 : null
  const totL = l0 + l1 + l2 + l3 + l4
  const leeftijd = totL > 0 ? Math.round(((7*l0 + 20*l1 + 35*l2 + 55*l3 + 75*l4) / totL) * 10) / 10 : null
  return { pc4, inwoners: inw, pct_vrouw, leeftijd, pct_koop: koop }
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

async function patchBatch(rows) {
  // Per rij een PATCH (PostgREST ondersteunt geen bulk PATCH op verschillende PKs)
  const results = await Promise.all(rows.map(async r => {
    const body = { bron_jaar: 2024 }
    if (r.pct_vrouw  !== null) body.pct_vrouw    = r.pct_vrouw
    if (r.leeftijd   !== null) body.cbs_leeftijd = r.leeftijd
    if (r.pct_koop   !== null) body.pct_koop     = r.pct_koop

    const res = await fetch(`${SUPABASE_URL}/rest/v1/pc4_cbs?postcode=eq.${r.pc4}`, {
      method: 'PATCH',
      headers: {
        'apikey': SERVICE_KEY,
        'Authorization': `Bearer ${SERVICE_KEY}`,
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      body: JSON.stringify(body)
    })
    return res.status
  }))
  const ok  = results.filter(s => s >= 200 && s < 300).length
  const err = results.filter(s => s >= 400).length
  return { ok, err }
}

async function main() {
  // 1. Haal postcodes op die al in de DB zitten
  process.stderr.write('Ophalen bestaande postcodes uit Supabase...\n')
  const dbRes = await fetch(`${SUPABASE_URL}/rest/v1/pc4_cbs?select=postcode&limit=2000`, {
    headers: { 'apikey': SERVICE_KEY, 'Authorization': `Bearer ${SERVICE_KEY}` }
  })
  const dbRows = await dbRes.json()
  if (!Array.isArray(dbRows)) { console.error('DB fout:', JSON.stringify(dbRows)); process.exit(1) }
  const dbPostcodes = new Set(dbRows.map(r => r.postcode))
  process.stderr.write(`  ${dbPostcodes.size} postcodes in DB\n`)

  // 2. Download CBS data
  process.stderr.write('Downloaden CBS PC4 2024...\n')
  const buf = await download(CBS_URL)
  const zip = new AdmZip(buf)
  const xlsEntry = zip.getEntries().find(e => /\.xlsx?$/i.test(e.entryName))
  const wb  = XLSX.read(xlsEntry.getData(), { type: 'buffer' })
  const ws  = wb.Sheets[wb.SheetNames[0]]
  const raw = XLSX.utils.sheet_to_json(ws, { header: 1, defval: null })

  const cbsData = raw.slice(9).map(bereken).filter(Boolean)
  const toUpdate = cbsData.filter(r => dbPostcodes.has(r.pc4))
  process.stderr.write(`  ${cbsData.length} CBS postcodes, ${toUpdate.length} zitten in DB → worden bijgewerkt\n`)

  // 3. Batch UPDATE via REST
  process.stderr.write('Bijwerken pct_vrouw, cbs_leeftijd, pct_koop via REST API...\n')
  let totalOk = 0, totalErr = 0
  for (let i = 0; i < toUpdate.length; i += BATCH_SIZE) {
    const batch = toUpdate.slice(i, i + BATCH_SIZE)
    const { ok, err } = await patchBatch(batch)
    totalOk  += ok
    totalErr += err
    process.stderr.write(`\r  ${i + batch.length}/${toUpdate.length} — OK: ${totalOk}, Err: ${totalErr}   `)
  }
  process.stderr.write('\n')

  // 4. Genereer ook update_pc4_inwoners.sql (alleen inwoners, voor na de ALTER TABLE)
  const { writeFileSync } = await import('fs')
  const inwSql = toUpdate.map(r =>
    `UPDATE pc4_cbs SET inwoners = ${r.inwoners} WHERE postcode = '${r.pc4}';`
  ).join('\n')
  writeFileSync('scripts/update_pc4_inwoners.sql', `-- Alleen inwoners updaten — run NA alter_pc4_add_inwoners.sql\n${inwSql}\n`)

  console.log(`\n✅ Klaar!`)
  console.log(`  Bijgewerkt via REST: ${totalOk} postcodes (pct_vrouw, cbs_leeftijd, pct_koop)`)
  console.log(`  Fouten: ${totalErr}`)
  console.log(`\nNog te doen (2 kleine scripts in Supabase SQL Editor):`)
  console.log(`  1. scripts/alter_pc4_add_inwoners.sql  (voegt inwoners kolom toe)`)
  console.log(`  2. scripts/update_pc4_inwoners.sql     (${toUpdate.length} regels, echte CBS inwoners)`)
  console.log(`  3. scripts/create_klant_dichtheid_fn_v2.sql`)
  console.log(`  4. scripts/setup_pc4_cbs.sql`)
}

main().catch(e => { console.error(e); process.exit(1) })
