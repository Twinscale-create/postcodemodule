/**
 * gen_pc4_cbs_sql.mjs
 *
 * Leest de CBS-profielen uit src/data/nl_kansen.ts en genereert
 * een SQL INSERT voor de pc4_cbs tabel in Supabase.
 *
 * Gebruik: node scripts/gen_pc4_cbs_sql.mjs
 * Output:  scripts/insert_pc4_cbs.sql
 *
 * Zodra echte CBS API-data beschikbaar is (CBS StatLine):
 * vervang dit script door fetch_cbs_api.mjs — de tabelstructuur blijft gelijk.
 */

import { readFileSync, writeFileSync } from 'fs'

// Lees nl_kansen.ts als tekst en extract de data met regex
const src = readFileSync('src/data/nl_kansen.ts', 'utf-8')

// Extraheer elke { postcode: '...', lat: ..., ... } regel
const rowRegex = /\{\s*postcode:\s*'(\d+)',\s*lat:\s*([\d.]+),\s*lon:\s*([\d.]+),\s*cbs_inkomen:\s*(\d+),\s*cbs_leeftijd:\s*([\d.]+),\s*pct_vrouw:\s*([\d.]+),\s*pct_hbo:\s*([\d.]+),\s*pct_koop:\s*([\d.]+)\s*\}/g

const rows = []
let match
while ((match = rowRegex.exec(src)) !== null) {
  const [, postcode, lat, lon, inkomen, leeftijd, pct_vrouw, pct_hbo, pct_koop] = match
  rows.push({ postcode, lat, lon, inkomen, leeftijd, pct_vrouw, pct_hbo, pct_koop })
}

if (rows.length === 0) {
  console.error('❌ Geen postcodes gevonden in nl_kansen.ts — check het formaat')
  process.exit(1)
}

// Genereer SQL
const values = rows.map(r =>
  `  ('${r.postcode}', ${r.lat}, ${r.lon}, ${r.inkomen}, ${r.leeftijd}, ${r.pct_vrouw}, ${r.pct_hbo}, ${r.pct_koop}, 2024)`
)

const sql = `-- TwinScale: CBS-profielen per PC4 postcode
-- Gegenereerd door scripts/gen_pc4_cbs_sql.mjs
-- Bron: synthetisch op basis van regionale CBS-patronen (placeholder tot echte API)
-- Vervang door echte CBS StatLine data via fetch_cbs_api.mjs zodra beschikbaar
--
-- Plak dit in Supabase SQL Editor → Run (NADAT setup_pc4_cbs.sql is uitgevoerd)

INSERT INTO pc4_cbs
  (postcode, lat, lon, cbs_inkomen, cbs_leeftijd, pct_vrouw, pct_hbo, pct_koop, bron_jaar)
VALUES
${values.join(',\n')}
ON CONFLICT (postcode) DO UPDATE SET
  lat          = EXCLUDED.lat,
  lon          = EXCLUDED.lon,
  cbs_inkomen  = EXCLUDED.cbs_inkomen,
  cbs_leeftijd = EXCLUDED.cbs_leeftijd,
  pct_vrouw    = EXCLUDED.pct_vrouw,
  pct_hbo      = EXCLUDED.pct_hbo,
  pct_koop     = EXCLUDED.pct_koop,
  bron_jaar    = EXCLUDED.bron_jaar,
  updated_at   = NOW();

-- Controleer:
SELECT COUNT(*) AS geladen_postcodes, MAX(updated_at) AS laatste_update FROM pc4_cbs;
`

writeFileSync('scripts/insert_pc4_cbs.sql', sql)
console.log(`✅ Gegenereerd: scripts/insert_pc4_cbs.sql (${rows.length} postcodes)`)
