'use client'

import { useEffect, useState } from 'react'
import { Clock, Maximize2, Building2 } from 'lucide-react'
import { MapContainer, TileLayer, Marker, Circle, Popup, useMap } from 'react-leaflet'
import L from 'leaflet'
import 'leaflet/dist/leaflet.css'
import { Match, HeatMode, KansPunt, KlantGebied, CbsData } from '@/types'
import { getPostcodeCoords } from '@/lib/geocode'
import PostcodeChoro from './PostcodeChoro'
import gsap from 'gsap'

// Fix Leaflet default icon in Next.js
// eslint-disable-next-line @typescript-eslint/no-explicit-any
delete (L.Icon.Default.prototype as any)._getIconUrl

/* ─── Vestiging marker: bedrijfspand icoon ────────── */
const BUILDING_SVG = `
  <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24"
       fill="none" stroke="#D4A050" stroke-width="1.8"
       stroke-linecap="round" stroke-linejoin="round">
    <path d="M6 22V4a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v18Z"/>
    <path d="M6 12H4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h2"/>
    <path d="M18 9h2a2 2 0 0 1 2 2v9a2 2 0 0 1-2 2h-2"/>
    <path d="M10 6h4"/><path d="M10 10h4"/>
    <path d="M10 14h4"/><path d="M10 18h4"/>
  </svg>`

function makeVestigingIcon() {
  return L.divIcon({
    className: '',
    iconSize:    [30, 30],
    iconAnchor:  [15, 15],
    popupAnchor: [0, -18],
    html: `
      <div style="
        width:30px; height:30px;
        background:rgba(8,8,16,0.95);
        border:2px solid #D4A050;
        border-radius:50%;
        display:flex; align-items:center; justify-content:center;
        box-shadow:0 0 0 3px rgba(212,160,80,0.18), 0 2px 10px rgba(0,0,0,0.6);
        cursor:pointer;
      ">${BUILDING_SVG}</div>`,
  })
}

function VestigingMarker({ pos, postcode, vestiging, reistijdMin, radiusKm }: {
  pos: [number, number]
  postcode: string
  vestiging: string
  reistijdMin: number
  radiusKm: number
}) {
  const map = useMap()

  function zoomToVerzorgingsgebied() {
    const latDeg = radiusKm / 111.2
    const lonDeg = radiusKm / (111.2 * Math.cos(pos[0] * Math.PI / 180))
    map.fitBounds(
      [[pos[0] - latDeg, pos[1] - lonDeg], [pos[0] + latDeg, pos[1] + lonDeg]],
      { padding: [50, 50], animate: true }
    )
  }

  const T = {
    primary:   'rgba(240, 228, 200, 0.95)',
    secondary: 'rgba(210, 195, 160, 0.60)',
    muted:     'rgba(190, 175, 140, 0.40)',
  }

  return (
    <Marker position={pos} icon={makeVestigingIcon()} eventHandlers={{ click: zoomToVerzorgingsgebied }}>
      <Popup maxWidth={230} minWidth={200} closeButton={false}>
        <div style={{ padding: '6px 2px' }}>
          {/* Header */}
          <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '12px' }}>
            <div style={{ background: 'rgba(212,160,80,0.15)', border: '1px solid rgba(212,160,80,0.35)', borderRadius: '8px', padding: '6px 7px', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
              <Building2 size={14} color="#D4A050" />
            </div>
            <div>
              <div style={{ fontSize: '14px', fontWeight: 700, color: T.primary, lineHeight: 1.2, letterSpacing: '0.01em' }}>{vestiging}</div>
              <div style={{ fontSize: '11px', color: T.secondary, fontFamily: 'monospace', marginTop: '2px', letterSpacing: '0.05em' }}>{postcode}</div>
            </div>
          </div>
          {/* Stats */}
          <div style={{ display: 'flex', flexDirection: 'column', gap: '7px' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
              <Clock size={11} color="rgba(212,160,80,0.55)" style={{ flexShrink: 0 }} />
              <span style={{ fontSize: '12px', color: T.secondary }}>~{reistijdMin} min gemiddelde reistijd</span>
            </div>
            <div style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
              <Maximize2 size={11} color="rgba(212,160,80,0.55)" style={{ flexShrink: 0 }} />
              <span style={{ fontSize: '12px', color: T.secondary }}>{radiusKm} km verzorgingsgebied</span>
            </div>
          </div>
          {/* Zoom hint */}
          <div style={{ marginTop: '12px', padding: '7px 10px', background: 'rgba(212,160,80,0.10)', border: '1px solid rgba(212,160,80,0.25)', borderRadius: '6px', textAlign: 'center' }}>
            <span style={{ fontSize: '11px', color: 'rgba(212,160,80,0.80)', fontWeight: 600 }}>Klik op icoon → zoom naar verzorgingsgebied</span>
          </div>
        </div>
      </Popup>
    </Marker>
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

/* ─── GSAP: stagger-animate SVG circles on mode switch ─── */
function StaggerMarkers({ trigger }: { trigger: HeatMode }) {
  const map = useMap()
  useEffect(() => {
    const run = () => {
      const circles = Array.from(document.querySelectorAll('.leaflet-overlay-pane circle')) as SVGCircleElement[]
      if (!circles.length) return
      // Snapshot radii, set to 0, then animate back
      circles.forEach(c => {
        c.dataset.origR = c.getAttribute('r') ?? '5'
        c.setAttribute('r', '0')
      })
      gsap.to(circles, {
        attr: { r: (_i: number, el: SVGCircleElement) => el.dataset.origR ?? '5' },
        opacity: 1,
        duration: 1.6,
        ease: 'elastic.out(1, 0.45)',
        stagger: 0.022,
        delay: 0.2,
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
  vestigingPostcode,
  vestigingLat,
  vestigingLon,
  radiusKm = 25,
  reistijdMin = 30,
  vestigingNaam,
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
  vestigingPostcode?: string
  vestigingNaam?: string
  vestigingLat?: number
  vestigingLon?: number
  radiusKm?: number
  reistijdMin?: number
  onSelectKans?: (kans: KansPunt) => void
  onDeselectKans?: () => void
}) {
  const [matchCoords,  setMatchCoords]  = useState<Map<string, [number, number]>>(new Map())
  const [klantCoords,  setKlantCoords]  = useState<Map<string, [number, number]>>(new Map())
  const homePostcode = vestigingPostcode ?? '4190'

  // Gebruik vestigingLat/Lon direct als die meegegeven zijn — geen geocode nodig
  const [homeCoords, setHomeCoords] = useState<[number, number] | null>(
    vestigingLat != null && vestigingLon != null ? [vestigingLat, vestigingLon] : null
  )

  /* Geocode match postcodes + home (home alleen als geen expliciete coords) */
  useEffect(() => {
    async function fetchMatchCoords() {
      if (vestigingLat == null || vestigingLon == null) {
        const home = await getPostcodeCoords(homePostcode)
        setHomeCoords(home)
      }
      const map = new Map<string, [number, number]>()
      for (const m of matches) {
        map.set(m.postcode, await getPostcodeCoords(m.postcode))
      }
      setMatchCoords(map)
    }
    fetchMatchCoords()
  }, [matches, homePostcode])

  /* Build klantCoords from lat/lon already present on each klantGebied (from pc4_cbs via page.tsx) */
  useEffect(() => {
    if (klantGebieden.length === 0) return
    const map = new Map<string, [number, number]>()
    for (const k of klantGebieden) {
      if (k.lat != null && k.lon != null) {
        map.set(k.postcode, [k.lat, k.lon])
      }
    }
    setKlantCoords(map)
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
        vestigingLat={vestigingLat}
        vestigingLon={vestigingLon}
        radiusKm={radiusKm}
        onSelectKans={onSelectKans}
        onDeselectKans={onDeselectKans}
      />

      {/* ── Verzorgingsgebied cirkel — dikker op kansen, subtiel op klanten ── */}
      <Circle
        center={homeCoords ?? [vestigingLat ?? 51.8667, vestigingLon ?? 5.2833]}
        radius={radiusKm * 1000}
        pathOptions={heatMode === 'kansen' ? {
          color:       '#D4A050',
          weight:      3,
          opacity:     0.80,
          dashArray:   '8 5',
          fillColor:   '#D4A050',
          fillOpacity: 0.05,
        } : {
          color:       '#67BFDA',
          weight:      2,
          opacity:     0.55,
          dashArray:   '6 5',
          fillColor:   '#67BFDA',
          fillOpacity: 0.03,
        }}
      />

      {/* ── Bedrijfspand marker ── */}
      {homeCoords && (
        <VestigingMarker
          pos={homeCoords}
          postcode={homePostcode}
          vestiging={vestigingNaam ?? 'Vestiging'}
          reistijdMin={reistijdMin}
          radiusKm={radiusKm}
        />
      )}
    </MapContainer>
  )
}
