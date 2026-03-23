// Genereert een SQL INSERT met ~30 fictieve maar realistische matches
// voor de TwinScale demo. Gebaseerd op echte Nederlandse PC4-gebieden.

const matches = [
  // ── BESTAANDE KLANTEN (hoge score, goede penetratie) ────────────────────
  { rank: 1,  postcode: '1011', stad: 'Amsterdam',    wijk: 'Centrum',        match_score: 94, inwoners: 12400, cbs_inkomen: 58000, cbs_leeftijd: 34, cbs_pct_vrouw: 54, cbs_pct_hbo: 62, cbs_pct_koop: 41 },
  { rank: 2,  postcode: '3011', stad: 'Rotterdam',    wijk: 'Centrum',        match_score: 91, inwoners: 9800,  cbs_inkomen: 51000, cbs_leeftijd: 36, cbs_pct_vrouw: 52, cbs_pct_hbo: 58, cbs_pct_koop: 38 },
  { rank: 3,  postcode: '2501', stad: 'Den Haag',     wijk: 'Centrum',        match_score: 89, inwoners: 8600,  cbs_inkomen: 53000, cbs_leeftijd: 37, cbs_pct_vrouw: 53, cbs_pct_hbo: 56, cbs_pct_koop: 44 },
  { rank: 4,  postcode: '3581', stad: 'Utrecht',      wijk: 'Oog in Al',      match_score: 87, inwoners: 7200,  cbs_inkomen: 55000, cbs_leeftijd: 33, cbs_pct_vrouw: 55, cbs_pct_hbo: 68, cbs_pct_koop: 35 },
  { rank: 5,  postcode: '9711', stad: 'Groningen',    wijk: 'Centrum',        match_score: 84, inwoners: 6100,  cbs_inkomen: 46000, cbs_leeftijd: 30, cbs_pct_vrouw: 51, cbs_pct_hbo: 64, cbs_pct_koop: 28 },
  { rank: 6,  postcode: '5011', stad: 'Tilburg',      wijk: 'Centrum',        match_score: 82, inwoners: 7800,  cbs_inkomen: 48000, cbs_leeftijd: 35, cbs_pct_vrouw: 52, cbs_pct_hbo: 51, cbs_pct_koop: 42 },
  { rank: 7,  postcode: '5014', stad: 'Tilburg',      wijk: 'Quirijnstok',    match_score: 79, inwoners: 6400,  cbs_inkomen: 46000, cbs_leeftijd: 37, cbs_pct_vrouw: 51, cbs_pct_hbo: 48, cbs_pct_koop: 54 },
  { rank: 8,  postcode: '8011', stad: 'Zwolle',       wijk: 'Centrum',        match_score: 78, inwoners: 5900,  cbs_inkomen: 49000, cbs_leeftijd: 36, cbs_pct_vrouw: 52, cbs_pct_hbo: 52, cbs_pct_koop: 46 },
  { rank: 9,  postcode: '5611', stad: 'Eindhoven',    wijk: 'Centrum',        match_score: 82, inwoners: 8200,  cbs_inkomen: 52000, cbs_leeftijd: 32, cbs_pct_vrouw: 49, cbs_pct_hbo: 59, cbs_pct_koop: 33 },
  { rank: 10, postcode: '6811', stad: 'Arnhem',       wijk: 'Centrum',        match_score: 80, inwoners: 6700,  cbs_inkomen: 47000, cbs_leeftijd: 35, cbs_pct_vrouw: 53, cbs_pct_hbo: 54, cbs_pct_koop: 40 },
  { rank: 11, postcode: '2012', stad: 'Haarlem',      wijk: 'Centrum',        match_score: 88, inwoners: 9100,  cbs_inkomen: 57000, cbs_leeftijd: 36, cbs_pct_vrouw: 54, cbs_pct_hbo: 61, cbs_pct_koop: 48 },
  { rank: 12, postcode: '6211', stad: 'Maastricht',   wijk: 'Centrum',        match_score: 76, inwoners: 5400,  cbs_inkomen: 44000, cbs_leeftijd: 33, cbs_pct_vrouw: 54, cbs_pct_hbo: 58, cbs_pct_koop: 30 },
  { rank: 13, postcode: '7311', stad: 'Apeldoorn',    wijk: 'Centrum',        match_score: 74, inwoners: 6200,  cbs_inkomen: 48000, cbs_leeftijd: 39, cbs_pct_vrouw: 52, cbs_pct_hbo: 49, cbs_pct_koop: 52 },
  { rank: 14, postcode: '1054', stad: 'Amsterdam',    wijk: 'Oud-West',       match_score: 90, inwoners: 8900,  cbs_inkomen: 61000, cbs_leeftijd: 35, cbs_pct_vrouw: 53, cbs_pct_hbo: 70, cbs_pct_koop: 32 },
  { rank: 15, postcode: '2316', stad: 'Leiden',       wijk: 'Merenwijk',      match_score: 77, inwoners: 5100,  cbs_inkomen: 50000, cbs_leeftijd: 34, cbs_pct_vrouw: 55, cbs_pct_hbo: 60, cbs_pct_koop: 38 },
  { rank: 16, postcode: '4811', stad: 'Breda',        wijk: 'Centrum',        match_score: 75, inwoners: 6800,  cbs_inkomen: 47000, cbs_leeftijd: 36, cbs_pct_vrouw: 52, cbs_pct_hbo: 50, cbs_pct_koop: 44 },
  { rank: 17, postcode: '7511', stad: 'Enschede',     wijk: 'Centrum',        match_score: 70, inwoners: 5600,  cbs_inkomen: 43000, cbs_leeftijd: 32, cbs_pct_vrouw: 51, cbs_pct_hbo: 52, cbs_pct_koop: 29 },
  { rank: 18, postcode: '2611', stad: 'Delft',        wijk: 'Centrum',        match_score: 81, inwoners: 5200,  cbs_inkomen: 49000, cbs_leeftijd: 31, cbs_pct_vrouw: 50, cbs_pct_hbo: 65, cbs_pct_koop: 27 },
  { rank: 19, postcode: '6001', stad: 'Weert',        wijk: 'Centrum',        match_score: 68, inwoners: 4100,  cbs_inkomen: 45000, cbs_leeftijd: 40, cbs_pct_vrouw: 52, cbs_pct_hbo: 44, cbs_pct_koop: 58 },
  { rank: 20, postcode: '3811', stad: 'Amersfoort',   wijk: 'Centrum',        match_score: 83, inwoners: 7400,  cbs_inkomen: 54000, cbs_leeftijd: 36, cbs_pct_vrouw: 53, cbs_pct_hbo: 57, cbs_pct_koop: 47 },
  { rank: 21, postcode: '2801', stad: 'Gouda',        wijk: 'Centrum',        match_score: 72, inwoners: 4800,  cbs_inkomen: 46000, cbs_leeftijd: 37, cbs_pct_vrouw: 52, cbs_pct_hbo: 47, cbs_pct_koop: 45 },
  { rank: 22, postcode: '1181', stad: 'Amstelveen',   wijk: 'Centrum',        match_score: 85, inwoners: 6600,  cbs_inkomen: 63000, cbs_leeftijd: 38, cbs_pct_vrouw: 54, cbs_pct_hbo: 63, cbs_pct_koop: 61 },
  { rank: 23, postcode: '2701', stad: 'Zoetermeer',   wijk: 'Centrum',        match_score: 71, inwoners: 5300,  cbs_inkomen: 48000, cbs_leeftijd: 36, cbs_pct_vrouw: 52, cbs_pct_hbo: 51, cbs_pct_koop: 49 },
  { rank: 24, postcode: '5038', stad: 'Tilburg',      wijk: 'Noord',          match_score: 73, inwoners: 5900,  cbs_inkomen: 44000, cbs_leeftijd: 34, cbs_pct_vrouw: 51, cbs_pct_hbo: 46, cbs_pct_koop: 39 },
  { rank: 25, postcode: '1017', stad: 'Amsterdam',    wijk: 'Grachtengordel',  match_score: 92, inwoners: 6100,  cbs_inkomen: 72000, cbs_leeftijd: 37, cbs_pct_vrouw: 53, cbs_pct_hbo: 72, cbs_pct_koop: 28 },
  { rank: 26, postcode: '4901', stad: 'Oosterhout',   wijk: 'Centrum',        match_score: 67, inwoners: 4200,  cbs_inkomen: 46000, cbs_leeftijd: 40, cbs_pct_vrouw: 52, cbs_pct_hbo: 44, cbs_pct_koop: 56 },
  { rank: 27, postcode: '7901', stad: 'Hoogeveen',    wijk: 'Centrum',        match_score: 64, inwoners: 3800,  cbs_inkomen: 40000, cbs_leeftijd: 39, cbs_pct_vrouw: 51, cbs_pct_hbo: 40, cbs_pct_koop: 51 },
  { rank: 28, postcode: '6701', stad: 'Wageningen',   wijk: 'Centrum',        match_score: 78, inwoners: 4300,  cbs_inkomen: 47000, cbs_leeftijd: 30, cbs_pct_vrouw: 52, cbs_pct_hbo: 68, cbs_pct_koop: 30 },
  { rank: 29, postcode: '8601', stad: 'Sneek',        wijk: 'Centrum',        match_score: 66, inwoners: 3600,  cbs_inkomen: 42000, cbs_leeftijd: 38, cbs_pct_vrouw: 51, cbs_pct_hbo: 41, cbs_pct_koop: 48 },
  { rank: 30, postcode: '4331', stad: 'Middelburg',   wijk: 'Centrum',        match_score: 69, inwoners: 4100,  cbs_inkomen: 44000, cbs_leeftijd: 37, cbs_pct_vrouw: 53, cbs_pct_hbo: 46, cbs_pct_koop: 45 },
]

// De referentiepostcode is de beste klantpostcode — NIET de vestiging
// Hier: 1011 Amsterdam Centrum heeft de hoogste match_score (94)
const TOP_POSTCODE = '1011'

const rows = matches.map(m => `  (${m.rank}, '${m.postcode}', '${m.stad}', '${m.wijk}', ${m.match_score}, ${m.inwoners}, ${m.cbs_inkomen}, ${m.cbs_leeftijd}, ${m.cbs_pct_vrouw}, ${m.cbs_pct_hbo}, ${m.cbs_pct_koop}, '${TOP_POSTCODE}', 58000, 34, 54)`)

const sql = `-- TwinScale: uitgebreide fictieve klantmatches (30 locaties)
-- jouw_postcode = TOP klantpostcode (1011 Amsterdam Centrum, hoogste penetratie)
-- Plak dit in Supabase SQL Editor en klik Run

-- Verwijder eventuele oude testdata:
TRUNCATE TABLE matches RESTART IDENTITY;

INSERT INTO matches
  (rank, postcode, stad, wijk, match_score, inwoners, cbs_inkomen, cbs_leeftijd,
   cbs_pct_vrouw, cbs_pct_hbo, cbs_pct_koop, jouw_postcode, jouw_inkomen, jouw_leeftijd, jouw_pct_vrouw)
VALUES
${rows.join(',\n')}
ON CONFLICT DO NOTHING;

-- Controleer:
SELECT COUNT(*) AS totaal_matches FROM matches;
`

import { writeFileSync } from 'fs'
writeFileSync('scripts/insert_matches_data.sql', sql)
console.log(`✅ Gegenereerd: scripts/insert_matches_data.sql (${matches.length} matches)`)
