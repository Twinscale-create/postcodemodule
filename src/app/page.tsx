import { supabase } from '@/lib/supabase'
import { Match, KansPunt, KlantGebied } from '@/types'
import Dashboard from '@/components/Dashboard'

async function getMatches(): Promise<Match[]> {
  const { data, error } = await supabase
    .from('matches')
    .select('*')
    .order('rank', { ascending: true })

  if (error) {
    console.error('Supabase error (matches):', error)
    return []
  }
  return data || []
}

/**
 * Roept de bereken_kansen() PostgreSQL-functie aan.
 * Het algoritme draait VEILIG in de database (SECURITY DEFINER) —
 * alleen de scores komen terug naar de browser.
 */
async function getKansen(): Promise<KansPunt[]> {
  const { data, error } = await supabase.rpc('bereken_kansen')

  if (error) {
    console.warn('bereken_kansen() niet beschikbaar:', error.message)
    return []
  }
  return (data as KansPunt[]) || []
}

/**
 * Klantdichtheid per postcode — unieke klanten uit kassadata,
 * gecombineerd met lat/lon uit pc4_cbs.
 * Vereist: scripts/create_klant_dichtheid_fn.sql uitvoeren in Supabase.
 */
async function getKlantDichtheid(): Promise<KlantGebied[]> {
  const { data, error } = await supabase.rpc('klant_dichtheid')

  if (error) {
    console.warn('klant_dichtheid() niet beschikbaar:', error.message)
    return []
  }
  return (data as KlantGebied[]) || []
}

export default async function Home() {
  const [matches, kansen, klantGebieden] = await Promise.all([
    getMatches(),
    getKansen(),
    getKlantDichtheid(),
  ])

  // Fetch CBS demographics for all klantgebied postcodes
  const postcodes = klantGebieden.map(k => k.postcode)
  const { data: cbsRows } = postcodes.length > 0
    ? await supabase
        .from('pc4_cbs')
        .select('postcode, cbs_leeftijd, pct_vrouw, pct_koop, inwoners, lat, lon')
        .in('postcode', postcodes)
    : { data: [] }

  const cbsMap = new Map((cbsRows ?? []).map(r => [r.postcode, r]))
  const klantGebiedenWithCbs = klantGebieden.map(k => ({
    ...k,
    cbs_leeftijd: cbsMap.get(k.postcode)?.cbs_leeftijd ?? undefined,
    pct_vrouw:    cbsMap.get(k.postcode)?.pct_vrouw    ?? undefined,
    pct_koop:     cbsMap.get(k.postcode)?.pct_koop     ?? undefined,
    inwoners:     cbsMap.get(k.postcode)?.inwoners ?? undefined,
    lat:          cbsMap.get(k.postcode)?.lat ?? undefined,
    lon:          cbsMap.get(k.postcode)?.lon ?? undefined,
  }))

  return <Dashboard matches={matches} kansen={kansen} klantGebieden={klantGebiedenWithCbs} />
}
