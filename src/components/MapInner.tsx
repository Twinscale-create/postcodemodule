'use client'

import { useEffect, useState } from 'react'
import { MapContainer, TileLayer, CircleMarker, Popup, useMap } from 'react-leaflet'
import L from 'leaflet'
import 'leaflet/dist/leaflet.css'
import { Match, HeatMode, KansPunt, KlantGebied, CbsData } from '@/types'
import { getPostcodeCoords } from '@/lib/geocode'
import PostcodeChoro from './PostcodeChoro'

// Fix Leaflet default icon in Next.js
// eslint-disable-next-line @typescript-eslint/no-explicit-any
delete (L.Icon.Default.prototype as any)._getIconUrl

/* ─── Referentie postcode marker ─────────────────── */
function HomeMarker({ pos, postcode }: { pos: [number, number]; postcode: string }) {
  return (
    <>
      <CircleMarker center={pos} radius={7}
        pathOptions={{ fillColor: '#E85D04', fillOpacity: 1, color: '#fff', weight: 2.5 }}
      >
        <Popup maxWidth={240}>
          <div style={{ fontFamily: 'var(--font-primary)' }}>
            <p style={{ fontWeight: 700, fontSize: 14, color: 'var(--text-primary)', marginBottom: 4 }}>
              ★ Vestiging · {postcode}
            </p>
            <p style={{ fontSize: 12, color: 'var(--text-secondary)' }}>
              Referentiepostcode voor het klant-DNA algoritme.
            </p>
          </div>
        </Popup>
      </CircleMarker>
    </>
  )
}

/* ─── Auto-fit: zoom in on the kansen data ─────────────── */
function DataBounds({ kansen }: { kansen: KansPunt[] }) {
  const map = useMap()
  useEffect(() => {
    if (kansen.length > 0) {
      const top = kansen.slice(0, 10)
      const avgLat = top.reduce((s, k) => s + k.lat, 0) / top.length
      const avgLon = top.reduce((s, k) => s + k.lon, 0) / top.length
      map.setView([avgLat, avgLon], 8)
    } else {
      map.setView([52.3, 5.3], 8)
    }
  }, [map]) // eslint-disable-line react-hooks/exhaustive-deps
  return null
}

/* ─── Fly-to controller: zooms map when a kans is selected ── */
function FlyToController({ target }: { target: { lat: number; lon: number; zoom?: number } | null }) {
  const map = useMap()
  useEffect(() => {
    if (target) {
      map.flyTo([target.lat, target.lon], target.zoom ?? 13, { animate: true, duration: 0.8 })
    }
  }, [target, map])
  return null
}

/* ─── Main export ─────────────────────────────────── */
export default function MapInner({
  matches,
  kansen,
  klantGebieden,
  heatMode,
  flyTarget,
  selectedKans,
  selectedCbs,
  nearestMatchPostcode,
  onSelectKans,
  onDeselectKans,
}: {
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
}) {
  const [matchCoords,  setMatchCoords]  = useState<Map<string, [number, number]>>(new Map())
  const [klantCoords,  setKlantCoords]  = useState<Map<string, [number, number]>>(new Map())
  const [homeCoords,   setHomeCoords]   = useState<[number, number] | null>(null)
  const homePostcode = matches[0]?.jouw_postcode ?? '4001'

  /* Geocode match postcodes + home */
  useEffect(() => {
    async function fetchMatchCoords() {
      const home = await getPostcodeCoords(homePostcode)
      setHomeCoords(home)
      const map = new Map<string, [number, number]>()
      for (const m of matches) {
        map.set(m.postcode, await getPostcodeCoords(m.postcode))
      }
      setMatchCoords(map)
    }
    fetchMatchCoords()
  }, [matches, homePostcode])

  /* Geocode klant postcodes client-side (top 60 max to avoid API rate limits) */
  useEffect(() => {
    if (klantGebieden.length === 0) return
    async function fetchKlantCoords() {
      const map = new Map<string, [number, number]>()
      for (const k of klantGebieden.slice(0, 60)) {
        const coords = await getPostcodeCoords(k.postcode)
        map.set(k.postcode, coords)
      }
      setKlantCoords(map)
    }
    fetchKlantCoords()
  }, [klantGebieden])

  return (
    <MapContainer
      center={[52.2, 5.3]}
      zoom={9}
      style={{ width: '100%', height: '100%' }}
      zoomControl
    >
      <TileLayer
        url="https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png"
        attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> &copy; <a href="https://carto.com/">CARTO</a>'
        maxZoom={19}
        subdomains="abcd"
      />

      <DataBounds kansen={kansen} />
      <FlyToController target={flyTarget ?? null} />

      <PostcodeChoro
        mode={heatMode}
        matches={matches}
        matchCoords={matchCoords}
        kansen={kansen}
        klantGebieden={klantGebieden}
        klantCoords={klantCoords}
        selectedKans={selectedKans}
        selectedCbs={selectedCbs}
        nearestMatchPostcode={nearestMatchPostcode}
        onSelectKans={onSelectKans}
        onDeselectKans={onDeselectKans}
      />

      {homeCoords && <HomeMarker pos={homeCoords} postcode={homePostcode} />}
    </MapContainer>
  )
}
