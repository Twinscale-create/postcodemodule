'use client'

import dynamic from 'next/dynamic'
import { Match, HeatMode, KansPunt, KlantGebied, CbsData } from '@/types'

// Leaflet requires browser APIs — disable SSR
const MapInner = dynamic(() => import('./MapInner'), {
  ssr: false,
  loading: () => (
    <div style={{
      width: '100%',
      height: '100%',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      background: '#f5f5f7',
      borderRadius: '12px',
      flexDirection: 'column',
      gap: '12px',
    }}>
      <div style={{
        width: '40px',
        height: '40px',
        border: '2px solid rgba(0,113,227,0.2)',
        borderTop: '2px solid #0071E3',
        borderRadius: '50%',
        animation: 'spin 1s linear infinite',
      }} />
      <style>{`@keyframes spin { to { transform: rotate(360deg); } }`}</style>
      <p style={{ color: '#86868b', fontSize: '13px' }}>Kaart laden...</p>
    </div>
  ),
})

interface DutchMapProps {
  matches: Match[]
  kansen: KansPunt[]
  klantGebieden: KlantGebied[]
  heatMode: HeatMode
  flyTarget?: { lat: number; lon: number; zoom?: number } | null
  selectedKans?: KansPunt | null
  selectedCbs?: CbsData | null
  nearestMatchPostcode?: string | null
  onSelectKans?: (kans: KansPunt) => void
  onDeselectKans?: () => void
}

export default function DutchMap({
  matches, kansen, klantGebieden, heatMode,
  flyTarget, selectedKans, selectedCbs, nearestMatchPostcode,
  onSelectKans, onDeselectKans,
}: DutchMapProps) {
  return (
    <div style={{ width: '100%', height: '100%', borderRadius: '12px', overflow: 'hidden' }}>
      <MapInner
        matches={matches}
        kansen={kansen}
        klantGebieden={klantGebieden}
        heatMode={heatMode}
        flyTarget={flyTarget}
        selectedKans={selectedKans}
        selectedCbs={selectedCbs}
        nearestMatchPostcode={nearestMatchPostcode}
        onSelectKans={onSelectKans}
        onDeselectKans={onDeselectKans}
      />
    </div>
  )
}
