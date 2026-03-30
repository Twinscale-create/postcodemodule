'use client'

import { useEffect, useState } from 'react'
import { MapPin, Clock, Maximize2 } from 'lucide-react'
import { MapContainer, TileLayer, CircleMarker, Circle, Popup, useMap } from 'react-leaflet'
import L from 'leaflet'
import 'leaflet/dist/leaflet.css'
import { Match, HeatMode, KansPunt, KlantGebied, CbsData } from '@/types'
import { getPostcodeCoords } from '@/lib/geocode'
import PostcodeChoro from './PostcodeChoro'
import { animate, stagger } from 'animejs'

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
            <div style={{ display: 'flex', alignItems: 'center', gap: '6px', marginBottom: 4 }}>
              <MapPin size={12} color="#E85D04" />
              <span style={{ fontWeight: 700, fontSize: 14, color: 'var(--text-primary)' }}>Vestiging · {postcode}</span>
            </div>
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

/* ─── Spell: stagger-animate SVG circles on mode switch ─── */
function StaggerMarkers({ trigger }: { trigger: HeatMode }) {
  const map = useMap()
  useEffect(() => {
    const run = () => {
      const circles = document.querySelectorAll('.leaflet-overlay-pane circle')
      if (!circles.length) return
      // save radii, set to 0, then animate back
      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      animate(circles as any, {
        opacity:  [0, 1],
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        r: (el: any) => {
          const orig = el.getAttribute('r') ?? '5'
          el.setAttribute('r', '0')
          return orig
        },
        duration: 1600,
        easing:   'easeOutElastic(1, 0.45)',
        delay:    stagger(22, { start: 200 }),
      })
    }
    const t = setTimeout(run, 350)
    return () => clearTimeout(t)
  }, [trigger, map])
  return null
}

/* ─── Fly-to controller: zooms map when a kans is selected ── */
function FlyToController({ target }: { target: { lat: number; lon: number; zoom?: number } | null }) {
  const map = useMap()
  useEffect(() => {
    if (target && isFinite(target.lat) && isFinite(target.lon)) {
      map.flyTo([target.lat, target.lon], target.zoom ?? 13, { animate: true, duration: 2.2 })
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
      <StaggerMarkers trigger={heatMode} />

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

      {/* ── Verzorgingsgebied: 30-min rijden vanuit Geldermalsen (~25km radius) ── */}
      <Circle
        center={[51.8667, 5.2833]}
        radius={25000}
        pathOptions={{
          color:       '#D4A050',
          weight:      1.5,
          opacity:     0.55,
          dashArray:   '6 5',
          fillColor:   '#D4A050',
          fillOpacity: 0.05,
        }}
      >
        <Popup maxWidth={210}>
          <div style={{ fontFamily: 'var(--font-primary)', padding: '2px 0' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '6px', marginBottom: '6px' }}>
              <MapPin size={12} color="#D4A050" />
              <span style={{ fontWeight: 700, fontSize: 13 }}>Verzorgingsgebied</span>
            </div>
            <div style={{ display: 'flex', alignItems: 'center', gap: '5px', marginBottom: '3px' }}>
              <Clock size={10} color="#999" />
              <span style={{ fontSize: 11, color: '#666' }}>~30 min reistijd</span>
            </div>
            <div style={{ display: 'flex', alignItems: 'center', gap: '5px' }}>
              <Maximize2 size={10} color="#999" />
              <span style={{ fontSize: 11, color: '#666' }}>25 km radius · Geldermalsen</span>
            </div>
          </div>
        </Popup>
      </Circle>
    </MapContainer>
  )
}
