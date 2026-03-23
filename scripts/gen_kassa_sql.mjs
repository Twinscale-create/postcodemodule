/**
 * Genereert een realistische fictieve kassadataset voor TwinScale demo
 * ~8.000 transacties, 60+ postcodes door heel Nederland
 * Winkel: modezaak in Tiel (4001LT)
 */

import { writeFileSync } from 'fs'

// ── Postcode mix: gewogen op realistische klantherkomst ──────────────────────
// Format: [postcode, stad, wijk, gewicht, huishoudens_in_pc4]
const POSTCODES = [
  // Lokaal — Tiel & Rivierenland (hoge penetratie, dichtbij)
  ['4001', 'Tiel',           'Centrum',       90, 4200],
  ['4002', 'Tiel',           'West',          55, 3100],
  ['4003', 'Tiel',           'Passewaaij',    40, 3800],
  ['4005', 'Tiel',           'Beekvliet',     30, 2900],
  ['4006', 'Tiel',           'Medel',         20, 1600],
  ['4191', 'Geldermalsen',   'Centrum',       28, 3600],
  ['4011', 'Zoelen',         'Kern',          18, 1200],
  ['4016', 'Kapel-Avezaath', 'Kern',          12, 900],
  ['6671', 'Zetten',         'Kern',          10, 1100],
  ['4021', 'Maurik',         'Kern',          14, 1500],
  ['4031', 'Ingen',          'Kern',          8,  700],
  ['4116', 'Buren',          'Kern',          10, 1000],

  // Regionaal — Bommelerwaard, Betuwe, Maasdriel
  ['5301', 'Zaltbommel',     'Centrum',       32, 5200],
  ['5305', 'Zaltbommel',     'Noord',         18, 2400],
  ['5321', 'Kerkdriel',      'Kern',          14, 2200],
  ['6641', 'Beuningen',      'Centrum',       16, 4100],
  ['6651', 'Druten',         'Centrum',       14, 3700],

  // Nijmegen regio
  ['6511', 'Nijmegen',       'Centrum',       45, 12000],
  ['6521', 'Nijmegen',       'Oost',          28, 8500],
  ['6541', 'Nijmegen',       'Neerbosch',     20, 6200],
  ['6561', 'Groesbeek',      'Centrum',       12, 3200],

  // Arnhem regio
  ['6811', 'Arnhem',         'Centrum',       38, 11000],
  ['6821', 'Arnhem',         'Schaarsbergen', 22, 5400],
  ['6841', 'Arnhem',         'Rijnwijk',      18, 4600],

  // Den Bosch regio
  ['5211', 'Den Bosch',      'Centrum',       42, 10800],
  ['5223', 'Den Bosch',      'Rosmalen',      24, 6300],
  ['5262', 'Vught',          'Centrum',       20, 4200],

  // Tilburg regio (al aanwezig in kassadata)
  ['5011', 'Tilburg',        'Centrum',       48, 9500],
  ['5014', 'Tilburg',        'Quirijnstok',   36, 7800],
  ['5017', 'Tilburg',        'Noord',         28, 6100],
  ['5025', 'Tilburg',        'Oost',          32, 6800],
  ['5038', 'Tilburg',        'Berkel-Enschot',38, 5900],
  ['5042', 'Tilburg',        'Reeshof',       30, 8200],
  ['5046', 'Tilburg',        'Udenhout',      22, 4400],
  ['5121', 'Waalwijk',       'Centrum',       26, 5600],

  // Breda
  ['4811', 'Breda',          'Centrum',       35, 8900],
  ['4818', 'Breda',          'Haagse Beemden',28, 6700],
  ['4824', 'Breda',          'Hoge Vucht',    18, 4200],

  // Utrecht regio (verrassing — hoge penetratie voor de afstand)
  ['3511', 'Utrecht',        'Centrum',       30, 14000],
  ['3521', 'Utrecht',        'Overvecht',     18, 8600],
  ['3581', 'Utrecht',        'Oog in Al',     22, 7200],
  ['3812', 'Amersfoort',     'Centrum',       20, 9100],
  ['3401', 'IJsselstein',    'Centrum',       14, 4800],

  // Dordrecht / Rotterdam-regio
  ['3311', 'Dordrecht',      'Centrum',       22, 10200],
  ['3441', 'Woerden',        'Centrum',       16, 5800],
  ['2800', 'Gouda',          'Centrum',       18, 9400],

  // Amsterdam (stedelijke klanten, goede match)
  ['1011', 'Amsterdam',      'Centrum',       20, 12400],
  ['1054', 'Amsterdam',      'Oud-West',      16, 8900],
  ['1092', 'Amsterdam',      'Oost',          14, 7400],

  // Rotterdam
  ['3011', 'Rotterdam',      'Centrum',       22, 9800],
  ['3021', 'Rotterdam',      'Delfshaven',    14, 6200],

  // Den Haag
  ['2511', 'Den Haag',       'Centrum',       20, 11000],
  ['2516', 'Den Haag',       'Bezuidenhout',  14, 5900],

  // Haarlem
  ['2011', 'Haarlem',        'Centrum',       16, 9100],

  // Eindhoven
  ['5611', 'Eindhoven',      'Centrum',       20, 8200],
  ['5631', 'Eindhoven',      'Woensel-Noord', 14, 5100],

  // Groningen
  ['9711', 'Groningen',      'Centrum',       12, 6100],

  // Zwolle
  ['8011', 'Zwolle',         'Centrum',       14, 5900],

  // Maastricht
  ['6211', 'Maastricht',     'Centrum',       12, 5400],

  // Apeldoorn
  ['7311', 'Apeldoorn',      'Centrum',       16, 6200],

  // Leiden
  ['2311', 'Leiden',         'Centrum',       14, 7800],

  // Delft
  ['2611', 'Delft',          'Centrum',       12, 5200],

  // Wageningen
  ['6701', 'Wageningen',     'Centrum',       10, 4300],
]

const CATEGORIEEN = ['Dames', 'Heren', 'Schoenen', 'Accessoires', 'Sale', 'Kinderen', 'Sport']
const CAT_GEWICHT  = [35,      18,       20,          12,            8,      4,          3]
const BETAALMETHODEN = ['Pin', 'Creditcard', 'Contant']
const PAY_GEWICHT    = [68,    22,           10]
const MEDEWERKERS    = ['MW001','MW002','MW003','MW004','MW005','MW006']

function weightedRandom(items, weights) {
  const total = weights.reduce((a, b) => a + b, 0)
  let r = Math.random() * total
  for (let i = 0; i < items.length; i++) {
    r -= weights[i]
    if (r <= 0) return items[i]
  }
  return items[items.length - 1]
}

function randomInt(min, max) { return Math.floor(Math.random() * (max - min + 1)) + min }

function randomDate(start, end) {
  const s = new Date(start).getTime()
  const e = new Date(end).getTime()
  return new Date(s + Math.random() * (e - s))
}

function pad(n) { return String(n).padStart(2, '0') }

function formatDate(d) {
  return `${d.getFullYear()}-${pad(d.getMonth()+1)}-${pad(d.getDate())}`
}
function formatTime(d) {
  return `${pad(d.getHours())}:${pad(d.getMinutes())}:${pad(d.getSeconds())}`
}

// Openingstijden: 9:30–18:00 doordeweeks, 10:00–17:00 zaterdag
function randomShopTime(d) {
  const dow = d.getDay() // 0=zo, 6=za
  if (dow === 0) { d.setHours(12, randomInt(0,59), randomInt(0,59)) } // zondag gesloten → kleine kans
  else if (dow === 6) { d.setHours(randomInt(10,16), randomInt(0,59), randomInt(0,59)) }
  else { d.setHours(randomInt(9,17), randomInt(30,59), randomInt(0,59)) }
  return d
}

// Genereer transacties
const START_DATE = '2025-09-01'
const END_DATE   = '2026-03-15'
const TARGET     = 8200

const transactions = []
let txCounter = 1001
let klantCounter = 100

// Klant-ID pool per postcode (terugkerende klanten)
const klantPool = {}
POSTCODES.forEach(([pc]) => { klantPool[pc] = [] })

for (let i = 0; i < TARGET; i++) {
  // Kies postcode gewogen
  const [pc, stad, wijk, gewicht] = weightedRandom(
    POSTCODES, POSTCODES.map(p => p[3])
  )

  // Klant: terugkerend of nieuw
  if (!klantPool[pc]) klantPool[pc] = []
  let klant_id
  if (klantPool[pc].length > 0 && Math.random() < 0.55) {
    klant_id = klantPool[pc][randomInt(0, klantPool[pc].length - 1)]
  } else {
    klantCounter++
    klant_id = `K${String(klantCounter).padStart(5, '0')}`
    klantPool[pc].push(klant_id)
  }

  const cat = weightedRandom(CATEGORIEEN, CAT_GEWICHT)
  const betaal = weightedRandom(BETAALMETHODEN, PAY_GEWICHT)
  const gender = Math.random() < 0.62 ? 'V' : 'M'
  const leeftijd = randomInt(22, 58)
  const medewerker = MEDEWERKERS[randomInt(0, MEDEWERKERS.length - 1)]
  const aantal = randomInt(1, 6)

  // Bedrag per categorie
  const prijsRange = {
    'Dames': [45, 180], 'Heren': [55, 200], 'Schoenen': [60, 250],
    'Accessoires': [15, 80], 'Sale': [10, 60], 'Kinderen': [20, 70], 'Sport': [40, 150]
  }
  const [minP, maxP] = prijsRange[cat]
  const prijs = (randomInt(minP * 100, maxP * 100) / 100) * aantal
  const korting = Math.random() < 0.15 ? Math.round(prijs * randomInt(5, 25) / 100 * 100) / 100 : 0
  const totaal = Math.round((prijs - korting) * 100) / 100

  let d = randomDate(START_DATE, END_DATE)
  d = randomShopTime(d)

  const email = `${klant_id.toLowerCase()}@example.com`

  transactions.push({
    id: `TX${String(txCounter++).padStart(6, '0')}`,
    datum: formatDate(d),
    tijd: formatTime(d),
    klant_id,
    postcode: pc,
    gender,
    leeftijd,
    email,
    categorie: cat,
    aantal,
    bedrag_excl: prijs.toFixed(2),
    korting: korting.toFixed(2),
    totaal: totaal.toFixed(2),
    betaalmethode: betaal,
    medewerker,
  })
}

// Sorteer op datum
transactions.sort((a, b) => (a.datum + a.tijd).localeCompare(b.datum + b.tijd))

// ── Penetratie analyse (voor matches SQL) ─────────────────────────────────────
const penetratie = {}
transactions.forEach(t => {
  if (!penetratie[t.postcode]) penetratie[t.postcode] = { klanten: new Set(), txns: 0 }
  penetratie[t.postcode].klanten.add(t.klant_id)
  penetratie[t.postcode].txns++
})

const pcInfo = {}
POSTCODES.forEach(([pc, stad, wijk, , huish]) => {
  pcInfo[pc] = { stad, wijk, huish }
})

const pctData = Object.entries(penetratie).map(([pc, d]) => ({
  pc, ...pcInfo[pc],
  klanten: d.klanten.size,
  txns: d.txns,
  huish: pcInfo[pc]?.huish ?? 1000,
  pct: (d.klanten.size / (pcInfo[pc]?.huish ?? 1000)) * 100,
})).sort((a, b) => b.pct - a.pct)

console.log('\n📊 Top 15 postcodes op penetratie:')
pctData.slice(0, 15).forEach((p, i) =>
  console.log(`  ${i+1}. ${p.pc} ${p.stad.padEnd(18)} ${p.klanten} klanten / ${p.huish} hh = ${p.pct.toFixed(2)}%  (${p.txns} txns)`)
)

const TOP = pctData[0]
console.log(`\n⭐ Referentiepostcode: ${TOP.pc} ${TOP.stad} (${TOP.pct.toFixed(2)}% penetratie)`)

// ── SQL genereren: kassadata tabel ──────────────────────────────────────────
const createTable = `-- TwinScale: kassadata tabel
-- Plak dit EERST in Supabase SQL Editor om de tabel te maken

CREATE TABLE IF NOT EXISTS kassadata (
  transactie_id   TEXT PRIMARY KEY,
  datum           DATE NOT NULL,
  tijd            TIME NOT NULL,
  klant_id        TEXT NOT NULL,
  postcode        TEXT,
  gender          TEXT,
  leeftijd        INT2,
  email           TEXT,
  categorie       TEXT,
  aantal_items    INT2,
  bedrag_excl     NUMERIC(10,2),
  korting         NUMERIC(10,2),
  bedrag_totaal   NUMERIC(10,2),
  betaalmethode   TEXT,
  medewerker_id   TEXT,
  created_at      TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE kassadata ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public read kassadata" ON kassadata FOR SELECT USING (true);
`

// Splits in batches van 500
const BATCH = 500
const sqlParts = [`-- TwinScale kassadata (${transactions.length} transacties)\n-- Voer EERST create_kassadata_table.sql uit!\n\nTRUNCATE TABLE kassadata;\n`]

for (let i = 0; i < transactions.length; i += BATCH) {
  const batch = transactions.slice(i, i + BATCH)
  const vals = batch.map(t =>
    `  ('${t.id}','${t.datum}','${t.tijd}','${t.klant_id}','${t.postcode}','${t.gender}',${t.leeftijd},'${t.email}','${t.categorie}',${t.aantal},${t.bedrag_excl},${t.korting},${t.totaal},'${t.betaalmethode}','${t.medewerker}')`
  ).join(',\n')
  sqlParts.push(`INSERT INTO kassadata (transactie_id,datum,tijd,klant_id,postcode,gender,leeftijd,email,categorie,aantal_items,bedrag_excl,korting,bedrag_totaal,betaalmethode,medewerker_id) VALUES\n${vals}\nON CONFLICT DO NOTHING;\n`)
}

writeFileSync('scripts/create_kassadata_table.sql', createTable)
writeFileSync('scripts/insert_kassadata.sql', sqlParts.join('\n'))

// Ook CSV exporteren
const csvLines = ['transactie_id,datum,tijd,klant_id,postcode,gender,leeftijd,email,categorie,aantal_items,bedrag_excl,korting,bedrag_totaal,betaalmethode,medewerker_id']
transactions.forEach(t => csvLines.push(
  `${t.id},${t.datum},${t.tijd},${t.klant_id},${t.postcode},${t.gender},${t.leeftijd},${t.email},${t.categorie},${t.aantal},${t.bedrag_excl},${t.korting},${t.totaal},${t.betaalmethode},${t.medewerker}`
))
writeFileSync('C:/Users/st4rf/Downloads/TwinScale_Kassadata_Volledig.csv', csvLines.join('\n'))

// ── Matches SQL updaten op basis van penetratie ────────────────────────────
// Vestiging = Tiel regio: postcodes 4001–4199 en 5300–5329 (Bommelerwaard)
// De REFERENTIEPOSTCODE = beste NIET-LOKALE postcode (verrassing buiten de regio)
// Lokaal = alles binnen ~25km van Tiel: Rivierenland (4001-4299), Bommelerwaard (5300-5399), Betuwe/Maasdriel (6600-6700)
const isLokaal = (pc) => {
  const n = parseInt(pc)
  return (n >= 4001 && n <= 4299) || (n >= 5300 && n <= 5399) || (n >= 6600 && n <= 6700)
}
const LOKAAL = pctData.filter(p => isLokaal(p.pc))
// Niet-lokaal: minstens 20 unieke klanten (anders te kleine steekproef voor referentie)
const NIET_LOKAAL = pctData.filter(p => !isLokaal(p.pc) && p.klanten >= 20)

const REF = NIET_LOKAAL[0] // hoogste penetratie buiten de regio
const REF_PC = REF.pc
const REF_STAD = REF.stad

console.log(`\n🏠 Lokale postcodes (vestiging regio, ${LOKAAL.length} stuks) — uitgesloten als referentie`)
console.log(`⭐ Referentiepostcode (beste niet-lokale): ${REF_PC} ${REF_STAD} (${REF.pct.toFixed(2)}% penetratie, ${REF.klanten} klanten / ${REF.huish} hh)\n`)

// Matches = alle niet-lokale postcodes met genoeg klanten
const matchKandidaten = NIET_LOKAAL
  .filter(p => p.klanten >= 8)
  .slice(0, 25)

const matchSQL = `-- TwinScale matches op basis van kassadata penetratie
-- Referentie = ${REF_PC} ${REF_STAD} (hoogste klantpenetratie: ${TOP.pct.toFixed(2)}%)
-- jouw_postcode = referentiepostcode (NIET de vestiging)

TRUNCATE TABLE matches RESTART IDENTITY;

INSERT INTO matches (rank, postcode, stad, wijk, match_score, inwoners, cbs_inkomen, cbs_leeftijd, cbs_pct_vrouw, cbs_pct_hbo, cbs_pct_koop, jouw_postcode, jouw_inkomen, jouw_leeftijd, jouw_pct_vrouw)
VALUES
${matchKandidaten.map((p, i) => {
  const score = Math.round(95 - i * 1.8 + (Math.random() * 4 - 2))
  const inkomen = randomInt(42000, 68000)
  const leeftijd = randomInt(30, 42)
  const pctVrouw = randomInt(50, 58)
  const pctHbo = randomInt(42, 72)
  const pctKoop = randomInt(28, 65)
  const inwoners = p.huish * randomInt(2, 3)
  return `  (${i+1}, '${p.pc}', '${p.stad}', '${p.wijk}', ${score}, ${inwoners}, ${inkomen}, ${leeftijd}, ${pctVrouw}, ${pctHbo}, ${pctKoop}, '${REF_PC}', ${randomInt(50000,62000)}, ${randomInt(32,38)}, ${randomInt(53,57)})`
}).join(',\n')};

-- Controleer:
SELECT COUNT(*) AS matches, jouw_postcode AS referentie FROM matches GROUP BY jouw_postcode;
`

writeFileSync('scripts/insert_matches_data.sql', matchSQL)

console.log(`\n✅ Bestanden gegenereerd:`)
console.log(`   scripts/create_kassadata_table.sql  — tabel aanmaken in Supabase`)
console.log(`   scripts/insert_kassadata.sql        — ${transactions.length} transacties`)
console.log(`   scripts/insert_matches_data.sql     — ${matchKandidaten.length} matches (ref: ${REF_PC} ${REF_STAD})`)
console.log(`   Downloads/TwinScale_Kassadata_Volledig.csv`)
