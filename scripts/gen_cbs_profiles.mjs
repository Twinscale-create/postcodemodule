/**
 * gen_cbs_profiles.mjs
 * Leest nl_kansen.ts en voegt per postcode een CBS-profiel toe.
 * Output: src/data/nl_kansen.ts (met cbs_inkomen, cbs_leeftijd, pct_vrouw, pct_hbo, pct_koop)
 *
 * CBS-profiel is realistisch gesynthetiseerd per regio.
 * Referentieprofiel (5038 Tilburg): inkomen 54K, leeftijd 30, vrouw 54%, hbo 59%, koop 53%
 */

import { readFileSync, writeFileSync } from 'fs'

// Seed-gebaseerde pseudo-random (deterministisch per postcode)
function seededRandom(seed) {
  let x = Math.sin(seed + 1) * 10000
  return x - Math.floor(x)
}
function rng(pc, field) {
  const seed = pc.split('').reduce((a, c) => a + c.charCodeAt(0), 0) + field * 137
  return seededRandom(seed)
}
function rangeRng(pc, field, min, max) {
  return Math.round(min + rng(pc, field) * (max - min))
}

// Regionaal CBS-profiel per postcode-prefix
function cbsProfiel(postcode) {
  const n = parseInt(postcode)
  const p = postcode

  // ── Amsterdam ──────────────────────────────────────────
  if (n >= 1000 && n <= 1109) return {
    cbs_inkomen:  rangeRng(p, 1, 48000, 72000),
    cbs_leeftijd: rangeRng(p, 2, 27, 36),
    pct_vrouw:    rangeRng(p, 3, 50, 55),
    pct_hbo:      rangeRng(p, 4, 55, 76),
    pct_koop:     rangeRng(p, 5, 22, 45),
  }
  // ── Almere ────────────────────────────────────────────
  if (n >= 1300 && n <= 1399) return {
    cbs_inkomen:  rangeRng(p, 1, 44000, 58000),
    cbs_leeftijd: rangeRng(p, 2, 32, 40),
    pct_vrouw:    rangeRng(p, 3, 51, 54),
    pct_hbo:      rangeRng(p, 4, 42, 55),
    pct_koop:     rangeRng(p, 5, 50, 65),
  }
  // ── Haarlem ───────────────────────────────────────────
  if (n >= 2000 && n <= 2099) return {
    cbs_inkomen:  rangeRng(p, 1, 50000, 68000),
    cbs_leeftijd: rangeRng(p, 2, 30, 40),
    pct_vrouw:    rangeRng(p, 3, 51, 55),
    pct_hbo:      rangeRng(p, 4, 52, 68),
    pct_koop:     rangeRng(p, 5, 38, 58),
  }
  // ── Leiden ────────────────────────────────────────────
  if (n >= 2300 && n <= 2399) return {
    cbs_inkomen:  rangeRng(p, 1, 44000, 60000),
    cbs_leeftijd: rangeRng(p, 2, 26, 36),
    pct_vrouw:    rangeRng(p, 3, 50, 54),
    pct_hbo:      rangeRng(p, 4, 55, 72),
    pct_koop:     rangeRng(p, 5, 30, 50),
  }
  // ── Delft ─────────────────────────────────────────────
  if (n >= 2600 && n <= 2699) return {
    cbs_inkomen:  rangeRng(p, 1, 44000, 58000),
    cbs_leeftijd: rangeRng(p, 2, 26, 34),
    pct_vrouw:    rangeRng(p, 3, 49, 53),
    pct_hbo:      rangeRng(p, 4, 58, 74),
    pct_koop:     rangeRng(p, 5, 26, 44),
  }
  // ── Den Haag ──────────────────────────────────────────
  if (n >= 2500 && n <= 2599) return {
    cbs_inkomen:  rangeRng(p, 1, 44000, 65000),
    cbs_leeftijd: rangeRng(p, 2, 30, 42),
    pct_vrouw:    rangeRng(p, 3, 51, 55),
    pct_hbo:      rangeRng(p, 4, 46, 66),
    pct_koop:     rangeRng(p, 5, 32, 54),
  }
  // ── Rotterdam ─────────────────────────────────────────
  if (n >= 3000 && n <= 3099) return {
    cbs_inkomen:  rangeRng(p, 1, 36000, 55000),
    cbs_leeftijd: rangeRng(p, 2, 28, 38),
    pct_vrouw:    rangeRng(p, 3, 50, 54),
    pct_hbo:      rangeRng(p, 4, 40, 62),
    pct_koop:     rangeRng(p, 5, 24, 48),
  }
  // ── Dordrecht ─────────────────────────────────────────
  if (n >= 3300 && n <= 3399) return {
    cbs_inkomen:  rangeRng(p, 1, 40000, 54000),
    cbs_leeftijd: rangeRng(p, 2, 32, 42),
    pct_vrouw:    rangeRng(p, 3, 51, 54),
    pct_hbo:      rangeRng(p, 4, 40, 54),
    pct_koop:     rangeRng(p, 5, 44, 60),
  }
  // ── Utrecht ───────────────────────────────────────────
  if (n >= 3500 && n <= 3599) return {
    cbs_inkomen:  rangeRng(p, 1, 46000, 64000),
    cbs_leeftijd: rangeRng(p, 2, 28, 36),
    pct_vrouw:    rangeRng(p, 3, 51, 55),
    pct_hbo:      rangeRng(p, 4, 55, 72),
    pct_koop:     rangeRng(p, 5, 30, 50),
  }
  // ── Amersfoort ────────────────────────────────────────
  if (n >= 3800 && n <= 3899) return {
    cbs_inkomen:  rangeRng(p, 1, 46000, 62000),
    cbs_leeftijd: rangeRng(p, 2, 32, 40),
    pct_vrouw:    rangeRng(p, 3, 51, 54),
    pct_hbo:      rangeRng(p, 4, 50, 64),
    pct_koop:     rangeRng(p, 5, 44, 60),
  }
  // ── Tiel & Rivierenland ───────────────────────────────
  if (n >= 4000 && n <= 4299) return {
    cbs_inkomen:  rangeRng(p, 1, 38000, 52000),
    cbs_leeftijd: rangeRng(p, 2, 36, 46),
    pct_vrouw:    rangeRng(p, 3, 50, 53),
    pct_hbo:      rangeRng(p, 4, 36, 50),
    pct_koop:     rangeRng(p, 5, 54, 70),
  }
  // ── Breda ─────────────────────────────────────────────
  if (n >= 4800 && n <= 4899) return {
    cbs_inkomen:  rangeRng(p, 1, 44000, 58000),
    cbs_leeftijd: rangeRng(p, 2, 32, 42),
    pct_vrouw:    rangeRng(p, 3, 51, 54),
    pct_hbo:      rangeRng(p, 4, 46, 60),
    pct_koop:     rangeRng(p, 5, 44, 60),
  }
  // ── Tilburg (referentie ~5038: 54K, 30jr, 54%, 59%, 53%) ──
  if (n >= 5000 && n <= 5099) return {
    cbs_inkomen:  rangeRng(p, 1, 44000, 60000),
    cbs_leeftijd: rangeRng(p, 2, 28, 38),
    pct_vrouw:    rangeRng(p, 3, 51, 56),
    pct_hbo:      rangeRng(p, 4, 50, 64),
    pct_koop:     rangeRng(p, 5, 44, 60),
  }
  // ── Den Bosch / Vught ────────────────────────────────
  if (n >= 5200 && n <= 5299) return {
    cbs_inkomen:  rangeRng(p, 1, 44000, 60000),
    cbs_leeftijd: rangeRng(p, 2, 30, 42),
    pct_vrouw:    rangeRng(p, 3, 51, 54),
    pct_hbo:      rangeRng(p, 4, 46, 62),
    pct_koop:     rangeRng(p, 5, 46, 62),
  }
  // ── Eindhoven ─────────────────────────────────────────
  if (n >= 5600 && n <= 5699) return {
    cbs_inkomen:  rangeRng(p, 1, 46000, 62000),
    cbs_leeftijd: rangeRng(p, 2, 28, 36),
    pct_vrouw:    rangeRng(p, 3, 49, 53),
    pct_hbo:      rangeRng(p, 4, 52, 68),
    pct_koop:     rangeRng(p, 5, 32, 52),
  }
  // ── Nijmegen ──────────────────────────────────────────
  if (n >= 6500 && n <= 6599) return {
    cbs_inkomen:  rangeRng(p, 1, 40000, 56000),
    cbs_leeftijd: rangeRng(p, 2, 26, 36),
    pct_vrouw:    rangeRng(p, 3, 51, 55),
    pct_hbo:      rangeRng(p, 4, 52, 68),
    pct_koop:     rangeRng(p, 5, 30, 50),
  }
  // ── Arnhem ────────────────────────────────────────────
  if (n >= 6800 && n <= 6899) return {
    cbs_inkomen:  rangeRng(p, 1, 40000, 56000),
    cbs_leeftijd: rangeRng(p, 2, 30, 40),
    pct_vrouw:    rangeRng(p, 3, 51, 54),
    pct_hbo:      rangeRng(p, 4, 46, 62),
    pct_koop:     rangeRng(p, 5, 36, 56),
  }
  // ── Maastricht ────────────────────────────────────────
  if (n >= 6200 && n <= 6299) return {
    cbs_inkomen:  rangeRng(p, 1, 38000, 54000),
    cbs_leeftijd: rangeRng(p, 2, 26, 36),
    pct_vrouw:    rangeRng(p, 3, 51, 55),
    pct_hbo:      rangeRng(p, 4, 50, 66),
    pct_koop:     rangeRng(p, 5, 28, 46),
  }
  // ── Apeldoorn / Zwolle (7xxx/8xxx) ───────────────────
  if (n >= 7000 && n <= 8599) return {
    cbs_inkomen:  rangeRng(p, 1, 42000, 56000),
    cbs_leeftijd: rangeRng(p, 2, 34, 44),
    pct_vrouw:    rangeRng(p, 3, 51, 53),
    pct_hbo:      rangeRng(p, 4, 42, 56),
    pct_koop:     rangeRng(p, 5, 52, 68),
  }
  // ── Groningen / Noord-Nederland (9xxx) ────────────────
  if (n >= 9000 && n <= 9999) return {
    cbs_inkomen:  rangeRng(p, 1, 36000, 52000),
    cbs_leeftijd: rangeRng(p, 2, 26, 38),
    pct_vrouw:    rangeRng(p, 3, 50, 54),
    pct_hbo:      rangeRng(p, 4, 44, 60),
    pct_koop:     rangeRng(p, 5, 46, 64),
  }
  // ── Fallback ──────────────────────────────────────────
  return {
    cbs_inkomen:  rangeRng(p, 1, 40000, 56000),
    cbs_leeftijd: rangeRng(p, 2, 32, 42),
    pct_vrouw:    rangeRng(p, 3, 50, 54),
    pct_hbo:      rangeRng(p, 4, 42, 58),
    pct_koop:     rangeRng(p, 5, 44, 62),
  }
}

// Lees huidige postcodes uit nl_kansen.ts
const src = readFileSync('src/data/nl_kansen.ts', 'utf8')
const matches = [...src.matchAll(/\{\s*postcode:\s*'(\d+)',\s*lat:\s*([\d.]+),\s*lon:\s*([\d.]+),\s*score:\s*\d+\s*\}/g)]

console.log(`Found ${matches.length} postcodes`)

const entries = matches.map(([, pc, lat, lon]) => {
  const cbs = cbsProfiel(pc)
  return { postcode: pc, lat: parseFloat(lat), lon: parseFloat(lon), ...cbs }
})

// Schrijf nieuwe nl_kansen.ts met CBS-velden
// De score wordt nu dynamisch berekend in de app — hier zetten we score: 0 als placeholder
const lines = entries.map(e =>
  `  { postcode: '${e.postcode}', lat: ${e.lat}, lon: ${e.lon}, cbs_inkomen: ${e.cbs_inkomen}, cbs_leeftijd: ${e.cbs_leeftijd}, pct_vrouw: ${e.pct_vrouw}, pct_hbo: ${e.pct_hbo}, pct_koop: ${e.pct_koop} }`
)

const output = `/**
 * nl_kansen.ts — CBS-profielen per PC4 postcode
 *
 * Bevat realistisch gesynthetiseerde CBS-kenmerken per postcode.
 * De kansscore wordt DYNAMISCH berekend in Dashboard.tsx op basis van
 * CBS-gelijkenis aan de referentiepostcode (= top klantpostcode).
 *
 * Weights voor scoringsfunctie (zie src/lib/matchScore.ts):
 *   inkomen  35%  — koopkracht proxy
 *   pct_hbo  25%  — levensstijl / opleidingsniveau
 *   pct_koop 20%  — woningbezit / stabiliteit
 *   leeftijd 15%  — doelgroep leeftijd
 *   pct_vrouw 5%  — geslachtsverhouding (modezaak)
 */

export interface KansPuntStatic {
  postcode: string
  lat: number
  lon: number
  cbs_inkomen: number
  cbs_leeftijd: number
  pct_vrouw: number
  pct_hbo: number
  pct_koop: number
}

export const NL_KANSEN: KansPuntStatic[] = [
${lines.join(',\n')}
]
`

writeFileSync('src/data/nl_kansen.ts', output)
console.log(`✅ nl_kansen.ts bijgewerkt met CBS-profielen (${entries.length} postcodes)`)
