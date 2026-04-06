'use client'

import { useEffect, useState, useRef } from 'react'
import { GeoJSON as RLGeoJSON, CircleMarker, Popup, Marker, useMapEvents } from 'react-leaflet'
import L from 'leaflet'
import type { Feature, FeatureCollection } from 'geojson'
import { Match, KansPunt, KlantGebied, CbsData } from '@/types'
import { getStad } from '@/lib/postcodeStad'
import { haversineKm } from '@/lib/haversine'

/* ─── Zoom hook ─── */
function useZoom(): number {
  const [zoom, setZoom] = useState(8)
  useMapEvents({ zoomend: e => setZoom(e.target.getZoom()) })
  return zoom
}

/* ─── DivIcon label factory ─── */
function makeLabelIcon(postcode: string, stad: string): L.DivIcon {
  return L.divIcon({
    className: '',
    html: `<div style="text-align:center;line-height:1.3;pointer-events:none">
      <div style="font-size:11px;font-weight:800;color:#fff;text-shadow:0 1px 3px rgba(0,0,0,0.55);letter-spacing:-0.01em">${postcode}</div>
      ${stad ? `<div style="font-size:8px;font-weight:600;color:rgba(255,255,255,0.88);text-shadow:0 1px 2px rgba(0,0,0,0.5)">${stad}</div>` : ''}
    </div>`,
    iconSize: [64, stad ? 26 : 13],
    iconAnchor: [32, stad ? 13 : 6],
  })
}

/* ══════════════════════════════════════════════════════
   MODULE-LEVEL CACHE — persists across renders/remounts
   Source: cartomap.github.io — 453KB, all NL PC4 polys
══════════════════════════════════════════════════════ */
const featureCache = new Map<string, Feature | null>()
let geoPromise: Promise<FeatureCollection> | null = null

function loadAllPC4(): Promise<FeatureCollection> {
  if (!geoPromise) {
    geoPromise = fetch('https://cartomap.github.io/nl/wgs84/postcode4_2022.geojson')
      .then(r => { if (!r.ok) throw new Error(`HTTP ${r.status}`); return r.json() })
      .catch(err => { geoPromise = null; throw err })
  }
  return geoPromise
}

async function ensurePC4(postcodes: string[]): Promise<void> {
  const missing = postcodes.filter(p => !featureCache.has(p))
  if (!missing.length) return

  // Mark in-flight to prevent duplicate requests
  missing.forEach(p => featureCache.set(p, null))

  try {
    const fc = await loadAllPC4()
    const needed = new Set(missing)
    for (const f of fc.features) {
      // Property 'postcode' is a number in this dataset
      const pc = String(f.properties?.postcode ?? '')
      if (needed.has(pc)) featureCache.set(pc, f)
    }
  } catch (err) {
    console.warn('PC4 GeoJSON load failed:', err)
  }
}

/* ══════════════════════════════════════════════════════
   COLOR + STYLE HELPERS
══════════════════════════════════════════════════════ */
function kansenFill(score: number): { color: string; opacity: number } {
  if (score <= 18) return { color: '#ffffff', opacity: 0.08 }
  if (score <= 35) return { color: '#ffb347', opacity: 0.50 }
  if (score <= 48) return { color: '#ff7300', opacity: 0.60 }
  if (score <= 60) return { color: '#e63000', opacity: 0.68 }
  if (score <= 72) return { color: '#c40000', opacity: 0.74 }
  if (score <= 83) return { color: '#960000', opacity: 0.80 }
  return { color: '#7a0000', opacity: 0.88 }
}

function makeKansenStyle(score: number, selected: boolean, inGebied = false): L.PathOptions {
  const { color, opacity } = kansenFill(score)
  return {
    fillColor: color,
    fillOpacity: selected ? Math.min(1, opacity + 0.14) : opacity,
    // PRIO: amber border + iets zwaarder — normaal: subtiele rand
    color:   selected ? '#ffffff' : inGebied ? '#D4A050' : 'rgba(0,0,0,0.18)',
    weight:  selected ? 2.5       : inGebied ? 2.0       : 0.6,
    opacity: selected ? 1         : inGebied ? 0.90      : 0.55,
  }
}

function makeKlantStyle(count: number, max: number): L.PathOptions {
  const pct = max > 0 ? Math.min(1, count / max) : 0
  const color   = pct >= 0.70 ? '#003E7E' : pct >= 0.45 ? '#0B5AA8' : pct >= 0.25 ? '#2E80D0' : '#60A8E8'
  const opacity = pct >= 0.70 ? 0.84       : pct >= 0.45 ? 0.74       : pct >= 0.25 ? 0.64       : 0.50
  return { fillColor: color, fillOpacity: opacity, color: 'rgba(255,255,255,0.25)', weight: 0.5 }
}

/* ══════════════════════════════════════════════════════
   SELECTED KANS POPUP (pin + popup at centroid)
══════════════════════════════════════════════════════ */
function SelectedKansPopup({
  kans, cbs, nearestPostcode, onDeselect, inGebied,
}: {
  kans: KansPunt; cbs: CbsData | null; nearestPostcode: string | null; onDeselect: () => void; inGebied?: boolean
}) {
  const markerRef = useRef<L.CircleMarker | null>(null)

  useEffect(() => {
    const t = setTimeout(() => markerRef.current?.openPopup(), 160)
    return () => clearTimeout(t)
  }, [kans.postcode])

  const { color } = kansenFill(kans.score)
  const scoreLabel =
    kans.score >= 85 ? 'Top kans' : kans.score >= 70 ? 'Hoog' :
    kans.score >= 55 ? 'Midden'   : kans.score >= 35 ? 'Laag' : 'Minimaal'

  return (
    <CircleMarker
      ref={markerRef}
      center={[kans.lat, kans.lon]}
      radius={6}
      pathOptions={{ fillColor: color, fillOpacity: 1, color: '#fff', weight: 2.5 }}
    >
      <Popup maxWidth={260} minWidth={220} autoPan closeButton={false}>
        <div style={{ fontFamily: 'var(--font, DM Sans, system-ui, sans-serif)', padding: '2px 0' }}>

          {/* Header */}
          <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '10px' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '8px', flexWrap: 'wrap' }}>
              <div style={{ background: color, color: '#F5E8D1', borderRadius: '6px', padding: '3px 9px', fontSize: '14px', fontWeight: 700, fontFamily: 'var(--font-mono)' }}>
                {kans.postcode}
              </div>
              {getStad(kans.postcode) && (
                <span style={{ fontSize: '12px', fontWeight: 500, color: 'var(--t-2)', fontFamily: 'var(--font)' }}>
                  {getStad(kans.postcode)}
                </span>
              )}
              <div style={{ background: `${color}20`, color, borderRadius: '5px', padding: '2px 7px', fontSize: '10px', fontWeight: 600, border: `1px solid ${color}40` }}>
                {kans.score}/100 · {scoreLabel}
              </div>
              {inGebied && (
                <div style={{ background: 'rgba(212,160,80,0.12)', color: '#D4A050', borderRadius: '4px', padding: '2px 7px', fontSize: '9px', fontWeight: 700, border: '1px solid rgba(212,160,80,0.35)', letterSpacing: '0.07em', textTransform: 'uppercase' }}>
                  Verzorgingsgebied
                </div>
              )}
            </div>
            <button onClick={onDeselect} style={{ border: 'none', background: 'none', cursor: 'pointer', color: 'var(--t-4)', fontSize: '14px', lineHeight: 1, marginLeft: '6px' }}>✕</button>
          </div>

          {/* Nearest match badge */}
          {nearestPostcode && (
            <div style={{ background: 'rgba(103,191,218,0.10)', border: '1px solid rgba(103,191,218,0.25)', borderRadius: '6px', padding: '5px 10px', marginBottom: '10px', fontSize: '11px', color: 'var(--accent-2)', fontWeight: 500 }}>
              Lijkt op jouw klanten in <strong style={{ fontFamily: 'var(--font-mono)' }}>{nearestPostcode}</strong>
              {getStad(nearestPostcode) && <span style={{ color: 'var(--t-3)', fontWeight: 400 }}> · {getStad(nearestPostcode)}</span>}
            </div>
          )}

          {/* CBS doelgroep */}
          {cbs ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <div style={{ fontSize: '9px', fontWeight: 600, color: 'var(--t-4)', textTransform: 'uppercase', letterSpacing: '0.10em', marginBottom: '2px' }}>
                Doelgroep profiel
              </div>
              {([
                { label: 'Leeftijd',   value: `${Math.round(cbs.cbs_leeftijd)} jr`,                                                          pct: Math.min(100, (cbs.cbs_leeftijd / 70) * 100),   color: '#C4A840' },
                { label: 'Vrouwen',    value: `${Math.round(cbs.pct_vrouw)}%`,                                                                pct: cbs.pct_vrouw,                                  color: '#C87090' },
                { label: 'Koopwoning', value: `${Math.round(cbs.pct_koop)}%`,                                                                pct: cbs.pct_koop,                                   color: '#9B72CF' },
                { label: 'Markt',      value: kans.inwoners >= 1000 ? `${(kans.inwoners/1000).toFixed(1)}K` : `${kans.inwoners}`,             pct: Math.min(100, (kans.inwoners / 15000) * 100),   color: '#5BA4CF' },
              ] as { label: string; value: string; pct: number; color: string }[]).map(({ label, value, pct, color: c }) => (
                <div key={label} style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
                  <span style={{ fontSize: '10px', color: 'var(--t-3)', width: '60px', flexShrink: 0 }}>{label}</span>
                  <div style={{ flex: 1, height: '4px', background: 'var(--bdr-2)', borderRadius: '2px', overflow: 'hidden' }}>
                    <div style={{ height: '100%', width: `${pct}%`, background: c, borderRadius: '2px' }} />
                  </div>
                  <span style={{ fontSize: '11px', fontWeight: 700, color: c, width: '44px', textAlign: 'right', flexShrink: 0, fontFamily: 'var(--font-mono)' }}>{value}</span>
                </div>
              ))}
            </div>
          ) : (
            <div style={{ textAlign: 'center', padding: '8px 0', color: 'var(--t-4)', fontSize: '11px' }}>
              CBS-data laden…
            </div>
          )}
        </div>
      </Popup>
    </CircleMarker>
  )
}

/* ══════════════════════════════════════════════════════
   PROPS
══════════════════════════════════════════════════════ */
interface Props {
  mode: 'kansen' | 'klanten'
  matches: Match[]
  matchCoords: Map<string, [number, number]>
  kansen: KansPunt[]
  klantGebieden: KlantGebied[]
  klantCoords: Map<string, [number, number]>
  selectedKans?: KansPunt | null
  selectedCbs?: CbsData | null
  nearestMatchPostcode?: string | null
  vestigingLat?: number
  vestigingLon?: number
  radiusKm?: number
  onSelectKans?: (kans: KansPunt) => void
  onDeselectKans?: () => void
}

/* ══════════════════════════════════════════════════════
   MAIN COMPONENT
══════════════════════════════════════════════════════ */
export default function PostcodeChoro({
  mode, kansen, klantGebieden, klantCoords,
  selectedKans, selectedCbs, nearestMatchPostcode,
  vestigingLat, vestigingLon, radiusKm = 25,
  onSelectKans, onDeselectKans,
}: Props) {
  const [fetchVer, setFetchVer] = useState(0)
  const geoLayerRef = useRef<L.GeoJSON | null>(null)
  const zoom = useZoom()

  // Keep selection in a ref so Leaflet's setStyle can access it without remounting
  const selectedPCRef = useRef<string | undefined>(undefined)
  selectedPCRef.current = selectedKans?.postcode

  // Postcodes binnen het verzorgingsgebied (haversine < radiusKm)
  const inGebiedSet = new Set(
    (vestigingLat != null && vestigingLon != null)
      ? kansen.filter(k => haversineKm(vestigingLat!, vestigingLon!, k.lat, k.lon) <= radiusKm).map(k => k.postcode)
      : []
  )

  // Lookups (rebuilt each render — props are stable)
  const kansenByPC = new Map(kansen.map(k => [k.postcode, k]))
  const klantByPC  = new Map(klantGebieden.map(k => [k.postcode, k]))
  const maxKlant   = klantGebieden[0]?.klant_count ?? 1

  const postcodes = mode === 'kansen'
    ? kansen.map(k => k.postcode)
    : klantGebieden.map(k => k.postcode)

  // ── Fetch PC4 boundaries from PDOK WFS ──
  useEffect(() => {
    ensurePC4(postcodes).then(() => setFetchVer(v => v + 1))
  }, [postcodes.join(',')]) // eslint-disable-line react-hooks/exhaustive-deps

  // ── Update polygon highlight on selection change (no remount) ──
  const getStyle = (feature: Feature | undefined): L.PathOptions => {
    const pc = String(feature?.properties?.postcode ?? '')
    const isSel = pc === selectedPCRef.current
    if (mode === 'kansen') {
      const k = kansenByPC.get(pc)
      return k ? makeKansenStyle(k.score, isSel, inGebiedSet.has(pc)) : { weight: 0, fillOpacity: 0 }
    } else {
      const k = klantByPC.get(pc)
      return k ? makeKlantStyle(k.klant_count, maxKlant) : { weight: 0, fillOpacity: 0 }
    }
  }

  useEffect(() => {
    geoLayerRef.current?.setStyle(f => getStyle(f as Feature))
  }, [selectedKans?.postcode]) // eslint-disable-line react-hooks/exhaustive-deps

  // ── onEachFeature: click + tooltip ──
  const onEachRef = useRef(onSelectKans)
  onEachRef.current = onSelectKans

  const onEachFeature = (feature: Feature, layer: L.Layer) => {
    const pc = String(feature.properties?.postcode ?? '')
    const path = layer as L.Path

    if (mode === 'kansen') {
      const kans = kansenByPC.get(pc)
      if (!kans) return
      const stad = getStad(pc)
      layer.on('click', () => onEachRef.current?.(kans))
      const isPrio = inGebiedSet.has(pc)
      path.bindTooltip(
        `<div style="font-family:var(--font),system-ui;font-size:12px">
           <strong style="font-family:var(--font-mono)">${pc}</strong>${stad ? ` <span style="font-size:10px;opacity:0.7">${stad}</span>` : ''}
           ${isPrio ? `<span style="font-size:9px;font-weight:700;color:#D4A050;background:rgba(212,160,80,0.15);border:1px solid rgba(212,160,80,0.35);border-radius:3px;padding:1px 5px;margin-left:5px;letter-spacing:0.06em">PRIO</span>` : ''}<br/>
           Score: <strong style="color:var(--accent)">${kans.score}</strong>/100<br/>
           <span style="font-size:10px;opacity:0.55">Klik voor doelgroep →</span>
         </div>`,
        { sticky: true }
      )
    } else {
      const k = klantByPC.get(pc)
      if (!k) return
      const stad = getStad(pc)
      path.bindTooltip(
        `<div style="font-family:var(--font),system-ui;font-size:12px">
           <strong style="font-family:var(--font-mono)">${pc}</strong>${stad ? ` <span style="font-size:10px;opacity:0.7">${stad}</span>` : ''}<br/>
           <strong>${k.klant_count}</strong> klant${k.klant_count !== 1 ? 'en' : ''}
         </div>`,
        { sticky: true }
      )
    }
  }

  // ── Build FeatureCollection from cache ──
  const features = postcodes
    .map(p => featureCache.get(p))
    .filter((f): f is Feature => !!f)

  const geoData: FeatureCollection = { type: 'FeatureCollection', features }

  return (
    <>
      {features.length > 0 && (
        <RLGeoJSON
          ref={geoLayerRef}
          key={`${mode}-v${fetchVer}`}
          data={geoData}
          style={f => getStyle(f as Feature)}
          onEachFeature={onEachFeature}
        />
      )}

      {/* ── Labels: alleen top postcodes, pas zichtbaar bij diepe zoom ── */}
      {zoom >= 11 && mode === 'kansen' && kansen.slice(0, zoom >= 13 ? 80 : zoom >= 12 ? 50 : 25).map(k => {
        const stad = getStad(k.postcode)
        return (
          <Marker
            key={`lbl-${k.postcode}`}
            position={[k.lat, k.lon]}
            icon={makeLabelIcon(k.postcode, stad ?? '')}
            interactive={false}
            zIndexOffset={-100}
          />
        )
      })}

      {zoom >= 11 && mode === 'klanten' && klantGebieden.slice(0, zoom >= 13 ? 80 : zoom >= 12 ? 50 : 25).map(k => {
        const coords = klantCoords.get(k.postcode)
        if (!coords) return null
        const stad = getStad(k.postcode)
        return (
          <Marker
            key={`lbl-${k.postcode}`}
            position={coords}
            icon={makeLabelIcon(k.postcode, stad ?? '')}
            interactive={false}
            zIndexOffset={-100}
          />
        )
      })}

      {selectedKans && mode === 'kansen' && (
        <SelectedKansPopup
          key={selectedKans.postcode}
          kans={selectedKans}
          cbs={selectedCbs ?? null}
          nearestPostcode={nearestMatchPostcode ?? null}
          inGebied={inGebiedSet.has(selectedKans.postcode)}
          onDeselect={() => onDeselectKans?.()}
        />
      )}
    </>
  )
}
