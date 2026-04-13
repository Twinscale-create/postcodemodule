import { create } from 'zustand'
import { HeatMode, KansPunt, KlantGebied } from '@/types'

interface DashboardState {
  viewTab: 'kaart' | 'postcodes' | 'klanten'
  heatMode: HeatMode
  selectedKans: KansPunt | null
  selectedKlant: KlantGebied | null
  flyTarget: { lat: number; lon: number; zoom?: number } | null

  setViewTab:     (tab: 'kaart' | 'postcodes' | 'klanten') => void
  setHeatMode:    (mode: HeatMode) => void
  setSelectedKans: (kans: KansPunt | null) => void
  setSelectedKlant: (klant: KlantGebied | null) => void
  setFlyTarget:   (target: { lat: number; lon: number; zoom?: number } | null) => void
  clearSelection: () => void
}

export const useDashboardStore = create<DashboardState>((set) => ({
  viewTab:       'kaart',
  heatMode:      'kansen',
  selectedKans:  null,
  selectedKlant: null,
  flyTarget:     null,

  setViewTab:      (viewTab) => set({ viewTab }),
  setHeatMode:     (heatMode) => set({ heatMode }),
  setSelectedKans: (selectedKans) => set({ selectedKans }),
  setSelectedKlant: (selectedKlant) => set({ selectedKlant }),
  setFlyTarget:    (flyTarget) => set({ flyTarget }),
  clearSelection:  () => set({ selectedKans: null, selectedKlant: null, flyTarget: null }),
}))
