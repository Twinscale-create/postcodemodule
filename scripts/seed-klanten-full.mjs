/**
 * TwinScale — Klanten seeding script
 * Genereert ~11.100 unieke klanten (33.300 transacties) verspreid over
 * ~80 postcodes binnen 30 minuten van Geldermalsen.
 *
 * Gebruik: node scripts/seed-klanten-full.mjs
 * Vereist: NEXT_PUBLIC_SUPABASE_URL en NEXT_PUBLIC_SUPABASE_ANON_KEY in .env.local
 */

import { createClient } from '@supabase/supabase-js'
import { readFileSync } from 'fs'
import { fileURLToPath } from 'url'
import { dirname, join } from 'path'

const __dir = dirname(fileURLToPath(import.meta.url))
const env   = readFileSync(join(__dir, '../.env.local'), 'utf8')
const get   = key => env.match(new RegExp(`${key}=(.+)`))?.[1]?.trim()

const supabase = createClient(get('NEXT_PUBLIC_SUPABASE_URL'), get('NEXT_PUBLIC_SUPABASE_ANON_KEY'))

// ── Postcodes binnen 30 min van Geldermalsen ─────────────────────────────────
// weight = relatief klantaandeel (proportioneel aan bevolking × nabijheid)
const GEBIEDEN = [
  // ── Geldermalsen kern (0-5 min)
  { pc: '4190', weight: 14, inwoners: 4200  },
  { pc: '4191', weight: 9,  inwoners: 2800  },
  { pc: '4192', weight: 6,  inwoners: 1900  },
  { pc: '4193', weight: 5,  inwoners: 1600  },

  // ── Tiel (12 min, 42K inwoners)
  { pc: '4001', weight: 68, inwoners: 10900 },
  { pc: '4002', weight: 52, inwoners: 8400  },
  { pc: '4003', weight: 40, inwoners: 6500  },
  { pc: '4004', weight: 31, inwoners: 5100  },
  { pc: '4005', weight: 24, inwoners: 3900  },
  { pc: '4006', weight: 18, inwoners: 2900  },

  // ── Culemborg (15 min, 28K inwoners)
  { pc: '4101', weight: 30, inwoners: 7200  },
  { pc: '4102', weight: 22, inwoners: 5400  },
  { pc: '4103', weight: 16, inwoners: 3900  },
  { pc: '4104', weight: 11, inwoners: 2700  },
  { pc: '4105', weight: 8,  inwoners: 1900  },

  // ── Zaltbommel (15 min, 12K inwoners)
  { pc: '4160', weight: 32, inwoners: 5800  },
  { pc: '4161', weight: 22, inwoners: 4000  },
  { pc: '4162', weight: 15, inwoners: 2800  },

  // ── Gorinchem (22 min, 35K inwoners)
  { pc: '4201', weight: 25, inwoners: 7200  },
  { pc: '4202', weight: 18, inwoners: 5300  },
  { pc: '4203', weight: 13, inwoners: 3800  },
  { pc: '4204', weight: 9,  inwoners: 2700  },
  { pc: '4207', weight: 6,  inwoners: 1800  },

  // ── Leerdam (20 min, 20K inwoners)
  { pc: '4140', weight: 22, inwoners: 5600  },
  { pc: '4141', weight: 16, inwoners: 4100  },
  { pc: '4142', weight: 12, inwoners: 3100  },
  { pc: '4143', weight: 8,  inwoners: 2100  },

  // ── Vianen (25 min, 21K inwoners)
  { pc: '4130', weight: 16, inwoners: 5200  },
  { pc: '4131', weight: 11, inwoners: 3600  },
  { pc: '4132', weight: 8,  inwoners: 2500  },

  // ── Buren gemeentegebied (20 min)
  { pc: '4021', weight: 10, inwoners: 3100  },
  { pc: '4022', weight: 7,  inwoners: 2200  },
  { pc: '4041', weight: 9,  inwoners: 2800  },
  { pc: '4043', weight: 6,  inwoners: 1900  },
  { pc: '4051', weight: 8,  inwoners: 2500  },
  { pc: '4053', weight: 5,  inwoners: 1600  },

  // ── Betuwe dorpen (10-20 min)
  { pc: '4181', weight: 12, inwoners: 3600  },
  { pc: '4182', weight: 8,  inwoners: 2400  },
  { pc: '4183', weight: 6,  inwoners: 1800  },
  { pc: '4184', weight: 5,  inwoners: 1500  },
  { pc: '4055', weight: 10, inwoners: 3100  },
  { pc: '4056', weight: 7,  inwoners: 2200  },
  { pc: '4061', weight: 7,  inwoners: 2100  },
  { pc: '4062', weight: 5,  inwoners: 1500  },
  { pc: '4110', weight: 7,  inwoners: 2200  },
  { pc: '4111', weight: 5,  inwoners: 1500  },
  { pc: '4112', weight: 7,  inwoners: 2100  },
  { pc: '4116', weight: 5,  inwoners: 1500  },

  // ── Den Bosch richting (28-30 min)
  { pc: '5211', weight: 14, inwoners: 12000 },
  { pc: '5212', weight: 10, inwoners: 8500  },
  { pc: '5213', weight: 7,  inwoners: 6000  },
  { pc: '5223', weight: 8,  inwoners: 6800  },
  { pc: '5231', weight: 6,  inwoners: 5200  },

  // ── Nijmegen/Wijchen richting (28-30 min)
  { pc: '6600', weight: 12, inwoners: 7800  },
  { pc: '6601', weight: 8,  inwoners: 5200  },
  { pc: '6641', weight: 9,  inwoners: 6200  },
  { pc: '6642', weight: 6,  inwoners: 4100  },

  // ── IJsselstein/Utrecht richting (25-30 min)
  { pc: '3401', weight: 10, inwoners: 7500  },
  { pc: '3402', weight: 7,  inwoners: 5100  },
  { pc: '3417', weight: 5,  inwoners: 3600  },

  // ── Geldermalsen rand & buurgemeenten
  { pc: '4120', weight: 7,  inwoners: 2200  },
  { pc: '4121', weight: 5,  inwoners: 1600  },
  { pc: '4031', weight: 7,  inwoners: 2200  },
  { pc: '4032', weight: 5,  inwoners: 1600  },
  { pc: '4011', weight: 8,  inwoners: 2500  },
  { pc: '4012', weight: 6,  inwoners: 1900  },
  { pc: '4241', weight: 6,  inwoners: 2000  },
  { pc: '4243', weight: 4,  inwoners: 1400  },
]

// ── Parameters (matchen met bedrijfsprofiel) ─────────────────────────────────
const DOEL_KLANTEN      = 11111   // unieke klanten
const GEM_BEZOEK_FREQ  = 3       // aankopen per klant per jaar
const GEM_BONBEDRAG    = 150     // euro
const DAMES_PCT        = 0.70    // 70% damesafdeling

const CATEGORIEEN      = [
  { naam: 'Dames', pct: 0.54 },
  { naam: 'Heren', pct: 0.25 },
  { naam: 'Accessoires', pct: 0.21 },
]

const BETAALMETHODEN = ['Pin', 'Pin', 'Pin', 'Creditcard', 'Contant']
const MEDEWERKERS    = ['MW001', 'MW002', 'MW003', 'MW004']

// ── Hulpfuncties ─────────────────────────────────────────────────────────────
function rnd(min, max) { return Math.floor(Math.random() * (max - min + 1)) + min }
function pick(arr)     { return arr[Math.floor(Math.random() * arr.length)] }
function pad(n, len = 6) { return String(n).padStart(len, '0') }

function randomDatum() {
  const start = new Date('2025-01-01').getTime()
  const end   = new Date('2026-03-15').getTime()
  return new Date(start + Math.random() * (end - start)).toISOString().split('T')[0]
}

function randomTijd() {
  const h = rnd(9, 18)
  const m = rnd(0, 59)
  return `${pad(h, 2)}:${pad(m, 2)}:00`
}

function randomBedrag(categorie) {
  // Dames: hogere items, Heren iets lager, Accessoires gevarieerd
  const base = { Dames: 155, Heren: 145, Accessoires: 148 }[categorie] ?? 150
  const spread = rnd(-40, 60)
  return Math.max(30, Math.round((base + spread) * 100) / 100)
}

// ── Klanten verdelen naar postcodes op basis van weight ──────────────────────
const totalWeight = GEBIEDEN.reduce((s, g) => s + g.weight, 0)

// Distribueer klant IDs over postcodes
const klantDistributie = [] // [{ klantId, postcode, gender, leeftijd }]
let klantTeller = 1

for (const gebied of GEBIEDEN) {
  const aantalKlanten = Math.round((gebied.weight / totalWeight) * DOEL_KLANTEN)
  for (let i = 0; i < aantalKlanten; i++) {
    const isFemale = Math.random() < DAMES_PCT
    klantDistributie.push({
      klantId: `K${pad(klantTeller)}`,
      postcode: gebied.pc,
      gender:   isFemale ? 'V' : 'M',
      leeftijd: rnd(22, 68),
    })
    klantTeller++
  }
}

console.log(`Unieke klanten gegenereerd: ${klantDistributie.length}`)

// ── Transacties genereren (gem. 3 per klant) ─────────────────────────────────
const transacties = []
let txTeller = 1

for (const klant of klantDistributie) {
  const aantalTx = Math.random() < 0.3 ? rnd(1, 2) : rnd(2, 4) // ~3 gemiddeld

  // Categorie kans
  const genderBias = klant.gender === 'V'
    ? [{ naam: 'Dames', pct: 0.65 }, { naam: 'Accessoires', pct: 0.25 }, { naam: 'Heren', pct: 0.10 }]
    : [{ naam: 'Heren', pct: 0.60 }, { naam: 'Accessoires', pct: 0.30 }, { naam: 'Dames', pct: 0.10 }]

  for (let t = 0; t < aantalTx; t++) {
    const r = Math.random()
    let cumulatief = 0
    let categorie = 'Dames'
    for (const c of genderBias) {
      cumulatief += c.pct
      if (r < cumulatief) { categorie = c.naam; break }
    }

    const bedrag   = randomBedrag(categorie)
    const items    = rnd(1, 4)
    const korting  = Math.random() < 0.15 ? Math.round(bedrag * rnd(5, 20) / 100) : 0

    transacties.push({
      transactie_id: `TX${pad(txTeller, 7)}`,
      datum:         randomDatum(),
      tijd:          randomTijd(),
      klant_id:      klant.klantId,
      postcode:      klant.postcode,
      gender:        klant.gender,
      leeftijd:      klant.leeftijd,
      email:         `klant${klantTeller}@voorbeeld.nl`,
      categorie:     categorie,
      aantal_items:  items,
      bedrag_excl:   Math.round((bedrag + korting) * 100) / 100,
      korting:       korting,
      bedrag_totaal: bedrag,
      betaalmethode: pick(BETAALMETHODEN),
      medewerker_id: pick(MEDEWERKERS),
    })
    txTeller++
  }
}

console.log(`Transacties gegenereerd: ${transacties.length}`)
console.log(`Gem. bon: €${(transacties.reduce((s,t) => s + t.bedrag_totaal, 0) / transacties.length).toFixed(2)}`)
console.log(`Geschatte jaaromzet: €${Math.round(transacties.reduce((s,t) => s + t.bedrag_totaal, 0)).toLocaleString('nl')}`)

// ── Bestaande data wissen (alleen de gegenereerde klant-IDs) ─────────────────
console.log('\nBestaande kassadata wissen voor K-prefix klanten...')
const { error: delErr } = await supabase
  .from('kassadata')
  .delete()
  .like('klant_id', 'K%')

if (delErr) {
  console.error('Delete error:', delErr.message)
  process.exit(1)
}
console.log('Wissen klaar.')

// ── Batch insert ─────────────────────────────────────────────────────────────
const BATCH = 500
let inserted = 0

for (let i = 0; i < transacties.length; i += BATCH) {
  const batch = transacties.slice(i, i + BATCH)
  const { error } = await supabase.from('kassadata').insert(batch)
  if (error) {
    console.error(`Fout bij batch ${i}-${i + BATCH}:`, error.message)
    process.exit(1)
  }
  inserted += batch.length
  process.stdout.write(`\rIngevoegd: ${inserted}/${transacties.length} transacties`)
}

console.log('\n\nKlaar!')
console.log(`Postcodes: ${GEBIEDEN.length}`)
console.log(`Unieke klanten: ${klantDistributie.length}`)
console.log(`Transacties: ${transacties.length}`)
