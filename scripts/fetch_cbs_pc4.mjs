/**
 * fetch_cbs_pc4.mjs
 *
 * Downloadt het CBS PC4 2024 bestand (officieel CBS StatLine publicatie),
 * parseert de Excel en genereert echte SQL UPDATE statements voor pc4_cbs.
 *
 * Echte CBS data (peildatum 1 jan 2024, versie 1, gepubliceerd 14 mei 2025):
 *   ✓ inwoners      — aantal inwoners per PC4
 *   ✓ pct_vrouw     — berekend uit aantal vrouwen / inwoners
 *   ✓ cbs_leeftijd  — gewogen gemiddelde op basis van leeftijdsklassen
 *   ✓ pct_koop      — percentage koopwoningen (direct in CBS bestand)
 *   ✗ cbs_inkomen   — NIET beschikbaar in PC4 v1 (CBS publiceert inkomen
 *                     pas in de "vol" versie, verwacht ~2026)
 *   ✗ pct_hbo       — NIET beschikbaar op PC4 niveau (alleen wijk/buurt)
 *
 * Gebruik: node scripts/fetch_cbs_pc4.mjs
 * Output:  scripts/update_pc4_real.sql  (plak in Supabase SQL Editor)
 *
 * Bron: https://download.cbs.nl/postcode/2025-cbs_pc4_2024_v1.zip
 */

import { createRequire } from 'module'
import { get } from 'https'
import { writeFileSync } from 'fs'

const require = createRequire(import.meta.url)
const AdmZip  = require('adm-zip')
const XLSX    = require('xlsx')

const CBS_URL = 'https://download.cbs.nl/postcode/2025-cbs_pc4_2024_v1.zip'

// CBS Excel kolomposities (0-indexed, na de header-rijen)
// Row 7 = kolomnamen, Row 8 = eenheden, Row 9+ = data
const COL = {
  PC4:       0,   // Postcode-4 (getal)
  INW:       1,   // Totaal inwoners (x1)
  MAN:       2,   // Mannen (x1)
  VRW:       3,   // Vrouwen (x1)
  L_0_14:    4,   // Leeftijd 0-14 jaar (x1)
  L_15_24:   5,   // Leeftijd 15-24 jaar (x1)
  L_25_44:   6,   // Leeftijd 25-44 jaar (x1)
  L_45_64:   7,   // Leeftijd 45-64 jaar (x1)
  L_65P:     8,   // Leeftijd 65+ jaar (x1)
  KOOP:      30,  // % Koopwoningen
}

// Geheim/onderdrukt waarde = -99997 (CBS privacy: 0-4 bewoners)
const SUPPRESSED = -99997

function safeVal(v) {
  if (v === null || v === undefined || v === SUPPRESSED) return null
  return typeof v === 'number' ? v : Number(v)
}

function bereken(row) {
  const pc4    = String(row[COL.PC4]).padStart(4, '0')
  const inw    = safeVal(row[COL.INW])
  const vrw    = safeVal(row[COL.VRW])
  const l0     = safeVal(row[COL.L_0_14])  ?? 0
  const l1     = safeVal(row[COL.L_15_24]) ?? 0
  const l2     = safeVal(row[COL.L_25_44]) ?? 0
  const l3     = safeVal(row[COL.L_45_64]) ?? 0
  const l4     = safeVal(row[COL.L_65P])   ?? 0
  const koop   = safeVal(row[COL.KOOP])

  if (!inw || inw <= 0) return null   // lege postcode — sla over

  // pct_vrouw: % vrouwen op inwoners totaal
  const pct_vrouw = vrw !== null ? Math.round((vrw / inw) * 1000) / 10 : null

  // cbs_leeftijd: gewogen gemiddelde met klasmidpunten
  //   0-14 → 7,  15-24 → 20,  25-44 → 35,  45-64 → 55,  65+ → 75
  const totLeeft = l0 + l1 + l2 + l3 + l4
  const leeftijd = totLeeft > 0
    ? Math.round(((7*l0 + 20*l1 + 35*l2 + 55*l3 + 75*l4) / totLeeft) * 10) / 10
    : null

  return { pc4, inw, pct_vrouw, leeftijd, pct_koop: koop }
}

function download(url) {
  return new Promise((resolve, reject) => {
    const chunks = []
    get(url, res => {
      const total = parseInt(res.headers['content-length'] || '0', 10)
      let done = 0
      process.stderr.write(`Downloading CBS PC4 2024 (${(total/1e6).toFixed(1)} MB)...\n`)
      res.on('data', d => {
        chunks.push(d)
        done += d.length
        const pct = total ? Math.round(done / total * 100) : '?'
        process.stderr.write(`\r  ${pct}%   `)
      })
      res.on('end', () => {
        process.stderr.write('\nKlaar.\n')
        resolve(Buffer.concat(chunks))
      })
      res.on('error', reject)
    }).on('error', reject)
  })
}

async function main() {
  const buf = await download(CBS_URL)
  process.stderr.write('Uitpakken ZIP...\n')
  const zip      = new AdmZip(buf)
  const xlsEntry = zip.getEntries().find(e => /\.xlsx?$/i.test(e.entryName))
  if (!xlsEntry) throw new Error('Geen Excel bestand gevonden in ZIP')

  process.stderr.write(`Parsen: ${xlsEntry.entryName}\n`)
  const wb   = XLSX.read(xlsEntry.getData(), { type: 'buffer' })
  const ws   = wb.Sheets[wb.SheetNames[0]]

  // header: row 1 = index, data begint op rij-index 9 (row 8 = eenheden, row 7 = labels)
  const raw  = XLSX.utils.sheet_to_json(ws, { header: 1, defval: null })

  // Rij 7 = kolomnamen (0-indexed), rij 9+ = data
  const dataRows = raw.slice(9).filter(r => r[COL.PC4] && r[COL.PC4] !== 'Postcode-4')

  const results = []
  for (const row of dataRows) {
    const r = bereken(row)
    if (r) results.push(r)
  }

  process.stderr.write(`Verwerkt: ${results.length} PC4 postcodes\n`)

  // Genereer SQL
  const updateLines = results.map(r => {
    const parts = []
    parts.push(`  inwoners     = ${r.inw}`)
    if (r.pct_vrouw  !== null) parts.push(`  pct_vrouw    = ${r.pct_vrouw}`)
    if (r.leeftijd   !== null) parts.push(`  cbs_leeftijd = ${r.leeftijd}`)
    if (r.pct_koop   !== null) parts.push(`  pct_koop     = ${r.pct_koop}`)
    parts.push(`  bron_jaar    = 2024`)
    parts.push(`  updated_at   = NOW()`)
    return `UPDATE pc4_cbs SET\n${parts.join(',\n')}\nWHERE postcode = '${r.pc4}';`
  })

  const sql = `-- ══════════════════════════════════════════════════════════════
-- TwinScale: ECHTE CBS PC4 data — peildatum 1 jan 2024
-- Bron: CBS StatLine "Statistische gegevens per postcode 2024 v1"
-- Gepubliceerd: 14 mei 2025
-- Gegenereerd: ${new Date().toISOString().slice(0, 10)}
--
-- ✓ inwoners      — echt (CBS 2024)
-- ✓ pct_vrouw     — echt (CBS 2024, berekend)
-- ✓ cbs_leeftijd  — echt (CBS 2024, gewogen gem. leeftijdsklassen)
-- ✓ pct_koop      — echt (CBS 2024)
-- ✗ cbs_inkomen   — BLIJFT geschat (CBS publiceert PC4-inkomen
--                    pas in "vol" versie, verwacht ~2026)
-- ✗ pct_hbo       — NIET beschikbaar op PC4 niveau (CBS publiceert
--                    onderwijsniveau alleen op wijk/buurt niveau)
--
-- Stap 1: Draai eerst scripts/alter_pc4_add_inwoners.sql
-- Stap 2: Plak dit bestand in Supabase SQL Editor → Run
-- ══════════════════════════════════════════════════════════════

-- Voortgang check achteraf:
-- SELECT COUNT(*) AS bijgewerkt FROM pc4_cbs WHERE bron_jaar = 2024 AND inwoners > 0;

${updateLines.join('\n\n')}

-- Klaar — controleer:
SELECT
  COUNT(*) AS totaal,
  SUM(CASE WHEN inwoners > 0 THEN 1 ELSE 0 END) AS met_echte_inwoners,
  ROUND(AVG(inwoners)) AS gem_inwoners,
  ROUND(AVG(pct_vrouw), 1) AS gem_pct_vrouw,
  ROUND(AVG(cbs_leeftijd), 1) AS gem_leeftijd,
  ROUND(AVG(pct_koop), 1) AS gem_pct_koop
FROM pc4_cbs;
`

  writeFileSync('scripts/update_pc4_real.sql', sql)
  process.stderr.write(`✅ Geschreven: scripts/update_pc4_real.sql (${results.length} UPDATE statements)\n`)
  console.log(`-- ${results.length} PC4 postcodes verwerkt met echte CBS 2024 data`)
}

main().catch(e => { console.error(e); process.exit(1) })
