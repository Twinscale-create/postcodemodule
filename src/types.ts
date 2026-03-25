export type HeatMode = 'kansen' | 'klanten'

export interface CbsData {
  cbs_inkomen: number
  cbs_leeftijd: number
  pct_vrouw: number
  pct_hbo: number
  pct_koop: number
}

export interface KlantGebied {
  postcode: string
  klant_count: number
  inwoners?: number
  cbs_inkomen?: number
  cbs_leeftijd?: number
  pct_vrouw?: number
  pct_koop?: number
}

export interface KansPunt {
  postcode: string
  lat: number
  lon: number
  score: number
  inwoners: number
}

export interface Match {
  id: number;
  rank: number;
  postcode: string;
  stad: string;
  wijk: string;
  match_score: number;
  inwoners: number;
  cbs_inkomen: number;
  cbs_leeftijd: number;
  cbs_pct_vrouw: number;
  cbs_pct_hbo: number;
  cbs_pct_koop: number;
  jouw_postcode: string;
  jouw_inkomen: number;
  jouw_leeftijd: number;
  jouw_pct_vrouw: number;
  created_at: string;
}
