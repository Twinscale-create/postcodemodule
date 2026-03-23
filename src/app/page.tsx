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
  return <Dashboard matches={matches} kansen={kansen} klantGebieden={klantGebieden} />
}
