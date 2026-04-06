/**
 * matchScore.ts
 *
 * Berekent de CBS-gelijkenis tussen alle klantpostcodes en alle andere PC4-gebieden.
 *
 * Meerdere referenties = CBS-profiel van elke bestaande klantpostcode.
 * Een kandidaatpostcode scoort op de BESTE match over alle referenties.
 * Zo wordt het volledige klant-DNA gebruikt, niet slechts één toppostcode.
 *
 * Alleen CBS-dimensies die wél beschikbaar zijn op PC4-niveau:
 *
 *   pct_koop  60%  — woningbezit → sterkste proxy voor koopkracht en stabiliteit
 *   leeftijd  30%  — doelgroep leeftijdsmatch
 *   pct_vrouw 10%  — geslachtsverhouding
 */

export interface CbsProfiel {
  cbs_leeftijd: number  // gemiddelde leeftijd
  pct_vrouw:    number  // % vrouwen (0-100)
  pct_koop:     number  // % koopwoningen (0-100)
}

// Landelijke ranges voor normalisatie (realistische NL PC4 grenzen)
const RANGES: Record<keyof CbsProfiel, [number, number]> = {
  cbs_leeftijd: [24, 50],
  pct_vrouw:    [46, 58],
  pct_koop:     [15, 80],
}

// Gewichten per dimensie (som = 1.0)
const WEIGHTS: Record<keyof CbsProfiel, number> = {
  pct_koop:     0.60,
  cbs_leeftijd: 0.30,
  pct_vrouw:    0.10,   // geslachtsverdeling (V% + M% = 100%)
}

function normalize(value: number, [min, max]: [number, number]): number {
  return Math.max(0, Math.min(1, (value - min) / (max - min)))
}

/**
 * Berekent de CBS-matchscore (0-100) tussen referentie en kandidaat.
 * 100 = identiek profiel, 0 = volledig tegengesteld.
 */
export function cbsMatchScore(ref: CbsProfiel, kandidaat: CbsProfiel): number {
  let weightedDist = 0

  for (const key of Object.keys(WEIGHTS) as (keyof CbsProfiel)[]) {
    const refNorm = normalize(ref[key], RANGES[key])
    const kanNorm = normalize(kandidaat[key], RANGES[key])
    const diff = Math.abs(refNorm - kanNorm)
    weightedDist += WEIGHTS[key] * diff
  }

  // weightedDist loopt van 0 (identiek) tot 1 (maximaal anders)
  // Score = 100 × (1 - afstand), met lichte drempelversterking
  const raw = 1 - weightedDist
  // Verstevig het onderscheid: score^0.7 vergroot het bereik tussen postcodes
  return Math.round(Math.pow(raw, 0.7) * 100)
}

/**
 * Berekent voor alle kandidaatpostcodes de kansscore op basis van
 * MEERDERE referentieprofielen (alle bestaande klantpostcodes).
 *
 * kansscore = beste CBS-match over alle referenties × (1 - penetratieFactor)
 *
 * Door meerdere referenties te gebruiken wordt het volledige klant-DNA
 * gedekt: als een nieuwe postcode lijkt op ÉÉN bestaande klantpostcode,
 * scoort hij al hoog — ook al lijkt hij niet op alle andere.
 *
 * penetratieFactor = huidigeKlanten / potentiëleKlanten (0..1)
 * Postcodes waar we al veel penetratie hebben krijgen een lagere kansscore.
 */
export function berekenKansenScores(
  refs: CbsProfiel[],  // CBS-profiel van elke bestaande klantpostcode
  kandidaten: (CbsProfiel & { postcode: string; lat: number; lon: number })[],
  penetraties: Map<string, number>  // postcode → penetratiefactor (0..1)
): { postcode: string; lat: number; lon: number; score: number }[] {
  if (refs.length === 0) return []

  return kandidaten.map(k => {
    // Score = beste match over alle referentieprofielen (klant-DNA)
    const bestCbsScore = Math.max(...refs.map(ref => cbsMatchScore(ref, k)))
    const pen = penetraties.get(k.postcode) ?? 0
    // Kans = beste CBS-match × onbenut potentieel
    const kansscore = Math.round(bestCbsScore * (1 - pen * 0.6))
    return { postcode: k.postcode, lat: k.lat, lon: k.lon, score: kansscore }
  }).sort((a, b) => b.score - a.score)
}
