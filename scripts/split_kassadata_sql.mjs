/**
 * split_kassadata_sql.mjs
 * Splitst insert_kassadata.sql in chunks van 500 rijen
 * voor Supabase SQL Editor (limiet op querygrootte)
 */
import { readFileSync, writeFileSync } from 'fs'

const src = readFileSync('scripts/insert_kassadata.sql', 'utf-8')

// Haal alle value-rijen op: regels die beginnen met spaties + '('
const allRows = src.split('\n').filter(l => l.trim().startsWith('('))
console.log(`Totaal rijen: ${allRows.length}`)

const CHUNK = 500
const header = `INSERT INTO kassadata
  (transactie_id, datum, tijd, klant_id, postcode, gender, leeftijd, email,
   categorie, aantal_items, bedrag_excl, korting, bedrag_totaal, betaalmethode, medewerker_id)
VALUES`
const footer = `\nON CONFLICT (transactie_id) DO NOTHING;`

let fileNum = 1
for (let i = 0; i < allRows.length; i += CHUNK) {
  const chunk = allRows.slice(i, i + CHUNK)
  const sql = `-- Kassadata deel ${fileNum} van ${Math.ceil(allRows.length / CHUNK)} (rijen ${i+1}–${Math.min(i+CHUNK, allRows.length)})\n${header}\n${chunk.join(',\n').replace(/,\s*$/, '')}${footer}\n`
  const filename = `scripts/insert_kassadata_${String(fileNum).padStart(2,'0')}.sql`
  writeFileSync(filename, sql)
  console.log(`✅ ${filename} (${chunk.length} rijen)`)
  fileNum++
}
console.log(`\nKlaar — voer in Supabase SQL Editor uit: deel 01, dan 02, dan 03, etc.`)
