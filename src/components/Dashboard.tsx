'use client'

import React, { useState, useCallback, useEffect, useRef, useMemo } from 'react'
import { MapPin, Users, Building2, Home, TrendingUp, Map as MapIcon, LayoutList, Search, X } from 'lucide-react'
import { Match, HeatMode, KansPunt, KlantGebied, CbsData } from '@/types'
import { getStad } from '@/lib/postcodeStad'
import { haversineKm } from '@/lib/haversine'
import { getCoordsSync } from '@/lib/geocode'
import DutchMap from './DutchMap'
import ShaderBackground from './ShaderBackground'
import TwinScaleLogo from './TwinScaleLogo'
import KlantenShader from './KlantenShader'
import KansenShader from './KansenShader'
import { supabase } from '@/lib/supabase'
import { useQuery } from '@tanstack/react-query'
import { useReactTable, getCoreRowModel, getSortedRowModel, getFilteredRowModel } from '@tanstack/react-table'
import type { ColumnDef, SortingState } from '@tanstack/react-table'
import { useDashboardStore } from '@/store/dashboardStore'
import gsap from 'gsap'
import { useGSAP } from '@gsap/react'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Table, TableHeader, TableBody, TableRow, TableHead, TableCell } from '@/components/ui/table'

async function fetchCbsData(postcode: string): Promise<CbsData | null> {
  const { data } = await supabase
    .from('pc4_cbs')
    .select('cbs_leeftijd, pct_vrouw, pct_hbo, pct_koop')
    .eq('postcode', postcode)
    .single()
  return (data as CbsData | null) ?? null
}

function avg(arr: number[]) {
  if (!arr.length) return 0
  return Math.round(arr.reduce((a, b) => a + b, 0) / arr.length)
}

function euclidean(lat1: number, lon1: number, lat2: number, lon2: number) {
  return Math.sqrt((lat1 - lat2) ** 2 + (lon1 - lon2) ** 2)
}

interface DashboardProps {
  matches: Match[]
  kansen: KansPunt[]
  klantGebieden: KlantGebied[]
}

const DASH_H = 200

// ── Bedrijfsprofiel — kassastatistieken ──────────────────────────────────────
// Waarden uit TwinScale_KPIs_Fixed.csv (echte kassadata analyse, 2026-03-03)
const BEDRIJF = {
  omzet:            90_103,    // totale_omzet uit kassadata
  bon:              210,        // gem_bon uit kassadata
  damesPct:         68,         // pct_vrouw uit kassadata (68.07%)
  herenPct:         32,
  bezoekFreq:       1.32,       // transacties / unieke klanten
  vestiging:        'Geldermalsen',
  vestigingPostcode: '4190',
  vestigingLat:     51.8667,
  vestigingLon:     5.2833,
  reistijdMin:      30,
  radiusKm:         25,        // ~30 min rijden
}

const B = {
  transacties:   Math.round(BEDRIJF.omzet / BEDRIJF.bon),                             // ~429
  klanten:       Math.round(BEDRIJF.omzet / BEDRIJF.bon / BEDRIJF.bezoekFreq),         // ~325
  omzetDames:    Math.round(BEDRIJF.omzet * BEDRIJF.damesPct / 100),
  omzetHeren:    Math.round(BEDRIJF.omzet * BEDRIJF.herenPct / 100),
  omzetPerKlant: Math.round(BEDRIJF.omzet / Math.round(BEDRIJF.omzet / BEDRIJF.bon / BEDRIJF.bezoekFreq)),
}

// Smart format helpers
function fmtOmzet(v: number) {
  if (v >= 1_000_000) return `€${(v / 1_000_000).toFixed(1)}M`
  if (v >= 1_000)     return `€${Math.round(v / 1_000)}K`
  return `€${v}`
}
function fmtCount(v: number) {
  if (v >= 1_000) return `${(v / 1_000).toFixed(1)}K`
  return String(v)
}

export default function Dashboard({ matches, kansen, klantGebieden }: DashboardProps) {
  // ── Zustand store — tab/mode/selection state ─────────────────────────────
  const {
    viewTab, setViewTab,
    heatMode, setHeatMode,
    selectedKans, setSelectedKans,
    selectedKlant, setSelectedKlant,
    flyTarget, setFlyTarget,
    clearSelection,
  } = useDashboardStore()

  const [kpiExpanded, setKpiExpanded] = useState(true)
  const [kansenSort,    setKansenSort]    = useState<'score' | 'postcode'>('score')
  const [kansenSortDir, setKansenSortDir] = useState<'desc' | 'asc'>('desc')
  const [klantSorting,  setKlantSorting]  = useState<SortingState>([{ id: 'klant_count', desc: true }])
  const [klantSearch,   setKlantSearch]   = useState('')
  const [searchFocused, setSearchFocused] = useState(false)
  const searchRef = useRef<HTMLDivElement>(null)

  // ── React Query — CBS data voor kansen (cached 10 min per postcode) ───────
  const { data: selectedCbs, isLoading: loadingCbs } = useQuery({
    queryKey: ['cbs', selectedKans?.postcode],
    queryFn: () => fetchCbsData(selectedKans!.postcode),
    enabled: !!selectedKans,
  })

  // Klant CBS-data is al inline beschikbaar via page.tsx — geen extra fetch nodig
  const klantCbsData = selectedKlant?.cbs_leeftijd != null ? selectedKlant : null

  const cbsKansRef      = useRef<HTMLDivElement>(null)
  const cbsKlantRef     = useRef<HTMLDivElement>(null)
  const kansenRowsRef   = useRef<HTMLTableSectionElement>(null)
  const kpiObj          = useRef({ total: 0, gebieden: 0, pen: 0 })

  // Spell: sliding tab indicator + toggle pill
  const tabBarRef       = useRef<HTMLDivElement>(null)
  const tabIndicatorRef = useRef<HTMLDivElement>(null)
  const pillRef         = useRef<HTMLDivElement>(null)

  const overviewTarget = (() => {
    const top = kansen.filter(k => k.score >= 40).slice(0, 10)
    if (!top.length) return { lat: 52.3, lon: 5.3, zoom: 8 }
    return {
      lat: top.reduce((s, k) => s + k.lat, 0) / top.length,
      lon: top.reduce((s, k) => s + k.lon, 0) / top.length,
      zoom: 8,
    }
  })()

  const profiel = {
    leeftijd:    avg(matches.map(m => m.cbs_leeftijd)),
    pctVrouw:    avg(matches.map(m => m.cbs_pct_vrouw)),
    pctKoop:     avg(matches.map(m => m.cbs_pct_koop)),
    avgInwoners: avg(matches.map(m => m.inwoners)),
  }

  const matchWithCoords = matches
    .map(m => ({ m, c: getCoordsSync(m.postcode) }))
    .filter((x): x is { m: Match; c: [number, number] } => x.c !== null)

  function getNearestMatch(kans: KansPunt): Match | null {
    let best: { m: Match; d: number } | null = null
    for (const { m, c } of matchWithCoords) {
      const d = euclidean(kans.lat, kans.lon, c[0], c[1])
      if (!best || d < best.d) best = { m, d }
    }
    return best?.m ?? null
  }

  const klantCountByPostcode = new Map(klantGebieden.map(k => [k.postcode, k.klant_count]))

  const klantWithCoords = klantGebieden
    .map(k => {
      const c: [number, number] | null = (k.lat != null && k.lon != null)
        ? [k.lat, k.lon]
        : getCoordsSync(k.postcode)
      return { k, c }
    })
    .filter((x): x is { k: KlantGebied; c: [number, number] } => x.c !== null)

  function getNearestKlantGebied(kans: KansPunt): KlantGebied | null {
    let best: { k: KlantGebied; d: number } | null = null
    for (const { k, c } of klantWithCoords) {
      const d = euclidean(kans.lat, kans.lon, c[0], c[1])
      if (!best || d < best.d) best = { k, d }
    }
    return best?.k ?? null
  }

  function handleKansenSort(key: 'score' | 'postcode') {
    if (kansenSort === key) setKansenSortDir(d => d === 'desc' ? 'asc' : 'desc')
    else { setKansenSort(key); setKansenSortDir('desc') }
  }

  const matchPostcodes  = new Set(matches.map(m => m.postcode))
  const klantPostcodes  = new Set(klantGebieden.map(k => k.postcode))
  const topKansen = kansen
    .filter(k => !matchPostcodes.has(k.postcode) && !klantPostcodes.has(k.postcode) && k.score >= 1)
    .map(k => ({
      ...k,
      inGebied: haversineKm(BEDRIJF.vestigingLat, BEDRIJF.vestigingLon, k.lat, k.lon) <= BEDRIJF.radiusKm,
    }))
    .sort((a, b) => {
      // Verzorgingsgebied altijd prioriteit — ongeacht sorteermodus
      if (a.inGebied !== b.inGebied) return a.inGebied ? -1 : 1
      let diff = 0
      if (kansenSort === 'postcode') diff = Number(a.postcode) - Number(b.postcode)
      else {
        diff = a.score - b.score
      }
      return kansenSortDir === 'desc' ? -diff : diff
    })

  // ── TanStack Table — klanten (sorting + filtering) ──────────────────────
  const klantColumns = useMemo<ColumnDef<KlantGebied>[]>(() => [
    { id: 'index',      enableSorting: false },
    { accessorKey: 'postcode',    sortingFn: (a, b) => Number(a.original.postcode) - Number(b.original.postcode) },
    { accessorKey: 'klant_count' },
    { id: 'penetratie', accessorFn: (r) => (r.inwoners ?? 0) > 0 ? r.klant_count / r.inwoners! : 0 },
    { accessorKey: 'cbs_leeftijd' },
    { accessorKey: 'pct_vrouw' },
    { accessorKey: 'pct_koop' },
    { accessorKey: 'inwoners' },
  ], [])

  const klantTable = useReactTable({
    data: klantGebieden,
    columns: klantColumns,
    state: { sorting: klantSorting, globalFilter: klantSearch },
    onSortingChange: setKlantSorting,
    onGlobalFilterChange: setKlantSearch,
    getCoreRowModel: getCoreRowModel(),
    getSortedRowModel: getSortedRowModel(),
    getFilteredRowModel: getFilteredRowModel(),
    globalFilterFn: (row, _, filterValue) => {
      const q = filterValue.toLowerCase()
      return row.original.postcode.includes(q) || getStad(row.original.postcode).toLowerCase().includes(q)
    },
  })

  const maxKlantCount = Math.max(...klantGebieden.map(x => x.klant_count), 1)
  const maxKlantPen   = Math.max(...klantGebieden.filter(x => (x.inwoners ?? 0) > 0).map(x => Math.min(1, x.klant_count / x.inwoners!)), 0.001)

  const handleSelectKans = useCallback((kans: KansPunt) => {
    if (selectedKans?.postcode === kans.postcode) {
      setSelectedKans(null); setFlyTarget(null); return
    }
    setSelectedKans(kans)
    setSelectedKlant(null)
    setFlyTarget({ lat: kans.lat, lon: kans.lon })
    // React Query fetches CBS data automatically via useQuery
  }, [selectedKans, setSelectedKans, setSelectedKlant, setFlyTarget])

  const handleSelectKlant = useCallback((klant: KlantGebied) => {
    if (selectedKlant?.postcode === klant.postcode) {
      setSelectedKlant(null); return
    }
    setSelectedKlant(klant)
    setSelectedKans(null)
    // React Query fetches CBS data automatically via useQuery
  }, [selectedKlant, setSelectedKlant, setSelectedKans])

  // ── GSAP: CBS card reveal — kansen panel
  useGSAP(() => {
    if (!selectedCbs || !cbsKansRef.current) return
    const cards = cbsKansRef.current.querySelectorAll('[data-cbs-card]')
    gsap.from(cards, { y: 14, opacity: 0, duration: 1.1, ease: 'expo.out', stagger: 0.11 })
  }, { dependencies: [selectedCbs] })

  // ── GSAP: CBS card reveal — klant panel
  useGSAP(() => {
    if (!klantCbsData || !cbsKlantRef.current) return
    const cards = cbsKlantRef.current.querySelectorAll('[data-cbs-card]')
    gsap.from(cards, { y: 14, opacity: 0, duration: 1.1, ease: 'expo.out', stagger: 0.11 })
  }, { dependencies: [klantCbsData] })

  // ── GSAP: score bars — bounce fill
  useGSAP(() => {
    if (viewTab !== 'postcodes' || !kansenRowsRef.current) return
    const bars = Array.from(kansenRowsRef.current.querySelectorAll('.ts-score-bar')) as HTMLElement[]
    bars.forEach(b => { b.style.width = '0' })
    gsap.to(bars, {
      width:    (i, el) => (el as HTMLElement).dataset.target + '%',
      duration: 2.4,
      ease:     'elastic.out(1, 0.4)',
      stagger:  0.045,
    })
  }, { dependencies: [viewTab, topKansen.length, kansenSort, kansenSortDir] })


  // ── Spell: sliding tab indicator
  useEffect(() => {
    const indicator = tabIndicatorRef.current
    if (!indicator) return
    const idx = ['kaart', 'postcodes', 'klanten'].indexOf(viewTab)
    indicator.style.transform = `translateX(${idx * 300}%)`
    indicator.style.background = viewTab === 'klanten' ? 'var(--accent-2)' : 'var(--accent)'
  }, [viewTab])

  // ── Spell: toggle pill
  useEffect(() => {
    const pill = pillRef.current
    if (!pill) return
    pill.style.transform = heatMode === 'klanten' ? 'translateX(100%)' : 'translateX(0)'
    pill.style.background = heatMode === 'klanten' ? 'rgba(103,191,218,0.14)' : 'var(--accent-bg)'
  }, [heatMode])

  // ── Kansen color scale — earthy terracotta/amber on forest green
  const kansColor = (score: number) =>
    score >= 85 ? '#D44030' : score >= 70 ? '#CC6820' : score >= 55 ? '#C48830' : score >= 35 ? '#B8A440' : '#9AB840'

  // Shared CSS var tokens
  const S = {
    bdr:  'var(--bdr)',
    bdr2: 'var(--bdr-2)',
    t1:   'var(--t-1)',
    t2:   'var(--t-2)',
    t3:   'var(--t-3)',
    t4:   'var(--t-4)',
    bg1:  'var(--bg-1)',
    bg2:  'var(--bg-2)',
    bg3:  'var(--bg-3)',
    bg4:  'var(--bg-4)',
  }

  const top10 = topKansen.slice(0, 10)

  // ── Spell: Ripple on click
  function triggerRipple(e: React.MouseEvent, color: string) {
    const el = e.currentTarget as HTMLElement
    const rect = el.getBoundingClientRect()
    const span = document.createElement('span')
    span.className = 'ts-ripple'
    span.style.left = `${e.clientX - rect.left - 14}px`
    span.style.top  = `${e.clientY - rect.top  - 14}px`
    span.style.background = color
    el.style.overflow = 'hidden'
    el.appendChild(span)
    setTimeout(() => span.remove(), 1500)
  }

  // ── Spell: Digit flip component
  function FlipNumber({ value, style }: { value: string | number; style?: React.CSSProperties }) {
    const str = String(value)
    return (
      <span style={{ display: 'inline-flex', ...style }}>
        {str.split('').map((ch, i) => (
          <span key={`${str.length}-${i}-${ch}`} className="ts-flip-char"
            style={{ animationDelay: `${i * 48}ms` }}>
            {ch}
          </span>
        ))}
      </span>
    )
  }

  return (
    <div className="ts-root">
      {/* ── Shader achtergronden — altijd gemount, opacity fade op tab-switch ── */}
      <div style={{ position: 'fixed', inset: 0, zIndex: -1, pointerEvents: 'none', opacity: viewTab === 'kaart' ? 1 : 0, transition: 'opacity 0.12s ease' }}>
        <ShaderBackground />
      </div>
      <div style={{ position: 'fixed', inset: 0, zIndex: -1, pointerEvents: 'none', opacity: viewTab === 'postcodes' ? 0.60 : 0, transition: 'opacity 0.12s ease' }}>
        <KansenShader />
      </div>
      <div style={{ position: 'fixed', inset: 0, zIndex: -1, pointerEvents: 'none', opacity: viewTab === 'klanten' ? 1 : 0, transition: 'opacity 0.12s ease' }}>
        <KlantenShader />
      </div>

      {/* ══════════════════════════════════════════
          INSIGHT STRIP
      ══════════════════════════════════════════ */}
      <div className="ts-insight-strip">

        {/* ── LEFT: kansen list — verborgen op Kansen-tab (dubbel) ── */}
        <div className="ts-panel-left" style={{ display: viewTab === 'postcodes' ? 'none' : 'flex', flexDirection: 'column' }}>
          <div className="ts-section-header">
            <div className="ts-dot ts-dot--amber" />
            <span className="ts-label">Top {topKansen.length} kansen</span>
          </div>
          <div style={{ flex: 1, overflowY: 'auto', display: 'flex', flexDirection: 'column', gap: '1px', position: 'relative' }}>
            {topKansen.map((k, i) => {
              const isSelected = selectedKans?.postcode === k.postcode
              const kc   = kansColor(k.score)
              const stad = getStad(k.postcode)
              const pen  = k.inwoners > 0 ? Math.round((klantCountByPostcode.get(k.postcode) ?? 0) / k.inwoners * 100) : 0
              return (
                <button key={k.postcode} onClick={() => handleSelectKans(k)} aria-label={`Kans ${k.postcode} ${getStad(k.postcode)} score ${k.score}`} aria-pressed={isSelected} style={{
                  display: 'flex', alignItems: 'center', gap: '7px',
                  background: isSelected ? `${kc}16` : 'transparent',
                  border: `1px solid ${isSelected ? kc + '50' : 'transparent'}`,
                  borderRadius: 'var(--r-sm)',
                  padding: '9px 10px',
                  cursor: 'pointer', width: '100%', textAlign: 'left', flexShrink: 0,
                  transition: 'background 0.12s, border-color 0.12s',
                  boxShadow: isSelected ? `inset 0 0 12px ${kc}10` : 'none',
                }}>
                  <span style={{ fontSize: '11px', fontWeight: 700, color: S.t4, width: '16px', textAlign: 'right', flexShrink: 0, fontFamily: 'var(--font-mono)' }}>{i+1}</span>
                  <div style={{ display: 'flex', flexDirection: 'column', gap: '2px', width: '72px', flexShrink: 0 }}>
                    <span style={{ fontSize: '15px', fontWeight: 700, color: isSelected ? kc : S.t1, lineHeight: 1, fontFamily: 'var(--font-mono)', letterSpacing: '-0.01em' }}>{k.postcode}</span>
                    {stad && <span style={{ fontSize: '11px', color: S.t4, lineHeight: 1, fontFamily: 'var(--font)' }}>{stad}</span>}
                  </div>
                  {k.score >= 80 ? (
                    <Badge variant="prio">PRIO</Badge>
                  ) : k.score >= 70 ? (
                    <Badge variant="hoog">HOOG</Badge>
                  ) : null}
                  {pen > 0 && (
                    <span style={{ fontSize: '9px', fontWeight: 600, color: 'var(--accent)', background: 'var(--accent-bg)', borderRadius: '3px', padding: '1px 5px', whiteSpace: 'nowrap', flexShrink: 0, fontFamily: 'var(--font-mono)' }}>
                      {pen}%
                    </span>
                  )}
                  <div style={{ flex: 1, height: '3px', background: S.bdr2, borderRadius: '2px', overflow: 'hidden', minWidth: '16px' }}>
                    <div style={{ height: '100%', width: `${k.score}%`, background: `linear-gradient(90deg, ${kc}99, ${kc})`, borderRadius: '2px', boxShadow: isSelected ? `0 0 6px ${kc}` : 'none' }} />
                  </div>
                  <span style={{ fontSize: '12px', fontWeight: 700, color: kc, width: '22px', textAlign: 'right', flexShrink: 0, fontFamily: 'var(--font-mono)' }}>{k.score}</span>
                </button>
              )
            })}
            {/* scroll-fade indicator */}
            <div style={{ position: 'sticky', bottom: 0, left: 0, right: 0, height: '32px', background: 'linear-gradient(to bottom, transparent, var(--bg-1))', pointerEvents: 'none', flexShrink: 0 }} />
          </div>
        </div>

        {/* ── RIGHT: KPI overview / targeting panel ── */}
        <div className="ts-panel-right">

          {!selectedKans && !selectedKlant && (
            <div style={{ display: 'flex', flexDirection: 'column', height: '100%', gap: '8px' }}>
              {/* Logo + 3 KPIs */}
              <div style={{ display: 'flex', alignItems: 'center', gap: '6px', flexShrink: 0 }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '8px', marginRight: '6px' }}>
                  <TwinScaleLogo size={28} color="var(--accent)" />
                  <span style={{ fontWeight: 600, fontSize: '15px', letterSpacing: '0.02em', color: S.t1, fontFamily: 'var(--font-display)' }}>
                    Twin<span style={{ color: 'var(--accent)', fontStyle: 'italic' }}>Scale</span>
                  </span>
                </div>
                {([
                  { label: 'Matches',   value: String(matches.length),             color: '#D4A050', glow: 'rgba(212,160,80,0.30)'  },
                  { label: 'Top score', value: `${matches[0]?.match_score ?? 0}%`, color: '#E8C840', glow: 'rgba(232,200,64,0.28)'  },
                  { label: 'Kansen',   value: String(topKansen.length),            color: '#E06840', glow: 'rgba(224,104,64,0.30)'  },
                ] as { label: string; value: string; color: string; glow: string }[]).map(p => (
                  <div key={p.label} style={{
                    flex: 1,
                    background: 'rgba(60,0,18,0.42)',
                    backdropFilter: 'blur(14px)',
                    WebkitBackdropFilter: 'blur(14px)',
                    borderRadius: 'var(--r-md)',
                    padding: '10px 12px',
                    border: `1px solid rgba(220,80,60,0.16)`,
                    borderTop: `2px solid ${p.color}66`,
                    display: 'flex', flexDirection: 'column', gap: '3px',
                    boxShadow: `0 4px 20px rgba(60,0,12,0.35), inset 0 1px 0 rgba(255,255,255,0.05), 0 0 30px ${p.glow}20`,
                  }}>
                    <span style={{ fontSize: '9px', fontWeight: 600, color: 'rgba(232,245,242,0.45)', textTransform: 'uppercase', letterSpacing: '0.14em', fontFamily: 'var(--font)' }}>{p.label}</span>
                    <span style={{ fontSize: '32px', lineHeight: 1, color: p.color, fontFamily: 'var(--font-dotmatrix)', letterSpacing: '0.04em', textShadow: `0 0 20px ${p.glow}` }}>{p.value}</span>
                  </div>
                ))}
                {/* Toggle kassastatistieken */}
                <button onClick={() => setKpiExpanded(v => !v)} style={{
                  display: 'flex', alignItems: 'center', justifyContent: 'center',
                  width: '24px', height: '24px', flexShrink: 0,
                  background: 'rgba(255,255,255,0.05)', border: '1px solid rgba(255,255,255,0.08)',
                  borderRadius: '6px', cursor: 'pointer', color: S.t4, fontSize: '10px',
                  transition: 'transform 0.2s',
                  transform: kpiExpanded ? 'rotate(0deg)' : 'rotate(180deg)',
                }} title={kpiExpanded ? 'Verberg statistieken' : 'Toon statistieken'}>▲</button>
              </div>

              {/* ── Kassastatistieken — uitklapbaar ── */}
              {kpiExpanded && (
              <div style={{ display: 'grid', gridTemplateColumns: 'repeat(6, 1fr)', gap: '5px', flexShrink: 0 }}>
                {((() => {
                  // Penetratie: echte klanten / totaal inwoners in klantgebieden
                  const validKg = klantGebieden.filter(k => (k.inwoners ?? 0) > 0)
                  const totalKlanten = klantGebieden.reduce((s, k) => s + k.klant_count, 0)
                  const totalInwoners = validKg.reduce((s, k) => s + k.inwoners!, 0)
                  const pen = totalInwoners > 0 ? (totalKlanten / totalInwoners * 100).toFixed(1) : '—'
                  return [
                    { label: 'Gem. bon',         value: `€${BEDRIJF.bon}`,                color: '#E8C840', glow: 'rgba(232,200,64,0.22)'  },
                    { label: 'Transacties',      value: B.transacties >= 1000 ? `${(B.transacties/1000).toFixed(1)}K` : `${B.transacties}`, color: '#C8884A', glow: 'rgba(200,136,74,0.22)' },
                    { label: 'Unieke klanten',   value: totalKlanten > 0 ? fmtCount(totalKlanten) : fmtCount(B.klanten), color: '#67BFDA', glow: 'rgba(103,191,218,0.22)' },
                    { label: '€ / klant',        value: `€${B.omzetPerKlant}`,            color: '#8FD44C', glow: 'rgba(143,212,76,0.22)'  },
                    { label: 'Penetratie',       value: pen === '—' ? '—' : `${pen}%`,    color: '#A87ACC', glow: 'rgba(168,122,204,0.22)' },
                  ]
                })() as { label: string; value: string; color: string; glow: string }[]).map(k => (
                  <div key={k.label} style={{
                    background: 'rgba(8,10,20,0.55)',
                    backdropFilter: 'blur(12px)',
                    WebkitBackdropFilter: 'blur(12px)',
                    borderRadius: 'var(--r-sm)',
                    padding: '7px 9px',
                    border: '1px solid rgba(255,255,255,0.06)',
                    borderTop: `2px solid ${k.color}44`,
                    display: 'flex', flexDirection: 'column', gap: '3px',
                  }}>
                    <span style={{ fontSize: '8px', fontWeight: 700, color: 'rgba(232,245,242,0.40)', textTransform: 'uppercase', letterSpacing: '0.1em', fontFamily: 'var(--font)', whiteSpace: 'nowrap' }}>{k.label}</span>
                    <span style={{ fontSize: '16px', lineHeight: 1, color: k.color, fontFamily: 'var(--font-dotmatrix)', letterSpacing: '0.02em', textShadow: `0 0 10px ${k.glow}` }}>{k.value}</span>
                  </div>
                ))}
              </div>
              )}

              {/* ── Vestiging + split ── */}
              <div style={{ display: 'flex', alignItems: 'center', gap: '8px', flexShrink: 0 }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '5px', background: 'rgba(8,10,20,0.50)', borderRadius: 'var(--r-sm)', padding: '4px 10px', border: '1px solid rgba(255,255,255,0.05)' }}>
                  <MapPin size={9} color="rgba(212,160,80,0.7)" />
                  <span style={{ fontSize: '10px', fontWeight: 600, color: 'rgba(232,245,242,0.55)', letterSpacing: '0.04em' }}>{BEDRIJF.vestiging}</span>
                  <span style={{ fontSize: '9px', color: 'rgba(232,245,242,0.30)' }}>·</span>
                  <span style={{ fontSize: '9px', color: 'rgba(232,245,242,0.40)' }}>{BEDRIJF.reistijdMin} min reistijd</span>
                </div>
                <div style={{ display: 'flex', gap: '3px', alignItems: 'center' }}>
                  <div style={{ height: '6px', width: `${BEDRIJF.damesPct * 0.8}px`, background: 'linear-gradient(90deg, #A87ACC, #D4A0FF)', borderRadius: '3px 0 0 3px' }} />
                  <div style={{ height: '6px', width: `${BEDRIJF.herenPct * 0.8}px`, background: 'linear-gradient(90deg, #4A9AB0, #67BFDA)', borderRadius: '0 3px 3px 0' }} />
                  <span style={{ fontSize: '9px', color: 'rgba(168,122,204,0.8)', marginLeft: '4px' }}>Dames {BEDRIJF.damesPct}%</span>
                  <span style={{ fontSize: '9px', color: 'rgba(103,191,218,0.8)' }}>Heren {BEDRIJF.herenPct}%</span>
                </div>
              </div>

            </div>
          )}

          {/* Loading */}
          {selectedKans && loadingCbs && (
            <div className="ts-loading-row">
              <div className="ts-spinner" />
              <span style={{ fontSize: '12px', color: S.t3 }}>CBS data laden voor <span style={{ color: S.t1, fontFamily: 'var(--font-mono)' }}>{selectedKans.postcode}</span>…</span>
            </div>
          )}

          {/* CBS targeting panel — 4 glassmorphism cards */}
          {selectedKans && !loadingCbs && selectedCbs && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', height: '100%' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '7px', flexShrink: 0 }}>
                <div style={{ background: `${kansColor(selectedKans.score)}18`, border: `1px solid ${kansColor(selectedKans.score)}50`, borderRadius: 'var(--r-sm)', padding: '3px 10px', fontSize: '13px', fontWeight: 700, color: kansColor(selectedKans.score), fontFamily: 'var(--font-mono)', boxShadow: `0 0 12px ${kansColor(selectedKans.score)}20` }}>
                  {selectedKans.postcode}
                </div>
                {getStad(selectedKans.postcode) && <span style={{ fontSize: '11px', fontWeight: 600, color: S.t2 }}>{getStad(selectedKans.postcode)}</span>}
                <div style={{ background: S.bg3, borderRadius: 'var(--r-sm)', padding: '3px 8px', fontSize: '11px', fontWeight: 700, color: S.t3, border: `1px solid ${S.bdr}`, fontFamily: 'var(--font-mono)' }}>
                  {selectedKans.score}/100
                </div>
                <button onClick={() => { setSelectedKans(null) }}
                  className="ts-close-btn">✕</button>
              </div>
              <div ref={cbsKansRef} style={{ display: 'flex', flex: 1, overflow: 'auto' }}>
                {((() => {
                  // Vergelijk met de dichtstbijzijnde klantpostcode (niet de abstracte gemiddelde)
                  const ref = getNearestKlantGebied(selectedKans)
                  const refNaam = ref ? `${ref.postcode}${getStad(ref.postcode) ? ` ${getStad(ref.postcode)}` : ''}` : 'jouw klanten'
                  const refL = ref?.cbs_leeftijd ?? profiel.leeftijd
                  const refV = ref?.pct_vrouw    ?? profiel.pctVrouw
                  const refK = ref?.pct_koop     ?? profiel.pctKoop
                  const dL = selectedCbs.cbs_leeftijd - refL
                  const dV = selectedCbs.pct_vrouw    - refV
                  const dK = selectedCbs.pct_koop     - refK
                  // Averages across all klantGebieden for %KOOPWONING and MARKT cards
                  const koopVals = klantGebieden.map(k => k.pct_koop).filter((v): v is number => v != null)
                  const avgKoop  = koopVals.length > 0 ? koopVals.reduce((a, b) => a + b, 0) / koopVals.length : refK
                  const dKoop    = selectedCbs.pct_koop - avgKoop
                  const inwVals  = klantGebieden.map(k => k.inwoners).filter((v): v is number => v != null && v > 0)
                  const cntVals  = klantGebieden.map(k => k.klant_count).filter((_, i) => (klantGebieden[i].inwoners ?? 0) > 0)
                  const avgPen   = inwVals.length > 0
                    ? (cntVals.reduce((a, b) => a + b, 0) / inwVals.reduce((a, b) => a + b, 0)) * 100
                    : 0
                  const marktInw = selectedKans.inwoners ?? 0
                  return [
                  { label: 'Leeftijd', Icon: Users,      gebied: `${Math.round(selectedCbs.cbs_leeftijd * 10) / 10}jr`, color: '#C2A46A', glow: 'rgba(194,164,106,0.18)',
                    refVal: `ref: ${Math.round(refL * 10) / 10}jr (${refNaam})`,
                    match: Math.abs(dL) <= 5 ? 'Goed' : Math.abs(dL) <= 10 ? 'Ok' : 'Ver',
                    detail: Math.abs(dL) <= 2 ? `Zelfde leeftijd als ${refNaam}` : `${Math.abs(Math.round(dL))}jr ${dL > 0 ? 'ouder' : 'jonger'} dan ${refNaam}` },
                  { label: 'Geslacht', Icon: TrendingUp, gebied: `V ${Math.round(selectedCbs.pct_vrouw)}%`, color: '#B87888', glow: 'rgba(184,120,136,0.18)',
                    refVal: `M ${Math.round(100 - selectedCbs.pct_vrouw)}% · ref V ${Math.round(refV)}% (${refNaam})`,
                    match: Math.abs(dV) <= 5 ? 'Goed' : Math.abs(dV) <= 10 ? 'Ok' : 'Ver',
                    detail: Math.abs(dV) <= 2 ? `Zelfde verdeling als ${refNaam}` : `${Math.abs(Math.round(dV))}% ${dV > 0 ? 'meer vrouwen' : 'minder vrouwen'} dan ${refNaam}` },
                  { label: '%Koopwoning', Icon: Home,    gebied: `${Math.round(selectedCbs.pct_koop * 10) / 10}%`, color: '#8878B8', glow: 'rgba(136,120,184,0.18)',
                    refVal: `klanten gem. ${Math.round(avgKoop * 10) / 10}%`,
                    match: Math.abs(dKoop) <= 10 ? 'Goed' : Math.abs(dKoop) <= 20 ? 'Ok' : 'Ver',
                    detail: Math.abs(dKoop) <= 2 ? `Zelfde koopwoningaandeel als klanten gem.` : `${Math.abs(Math.round(dKoop))}% ${dKoop > 0 ? 'meer' : 'minder'} dan klanten gem.` },
                  { label: 'Markt', Icon: Building2, gebied: marktInw >= 1000 ? `${(marktInw / 1000).toFixed(1)}K` : marktInw > 0 ? String(marktInw) : '—', color: '#5888A8', glow: 'rgba(88,136,168,0.18)',
                    refVal: avgPen > 0 ? `gem. penetratie: ${avgPen.toFixed(1)}%` : 'inwoners',
                    match: marktInw >= 5000 ? 'Goed' : marktInw >= 1500 ? 'Ok' : 'Ver',
                    detail: marktInw >= 5000 ? 'Groot marktpotentieel' : marktInw >= 1500 ? 'Gemiddeld potentieel' : 'Klein gebied — beperkt potentieel' },
                ]})() as { label: string; Icon: React.ElementType; gebied: string; color: string; glow: string; match: string; detail: string; refVal: string }[]).map((cb, i) => (
                  <div key={cb.label} style={{ flex: 1, padding: '8px 10px', borderLeft: i > 0 ? '1px solid rgba(255,255,255,0.07)' : 'none', borderTop: `2px solid ${cb.color}55`, display: 'flex', flexDirection: 'column', gap: '5px' }}>
                    <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: '4px', flexShrink: 0 }}>
                      <span style={{ fontSize: '8px', fontWeight: 700, color: cb.color, textTransform: 'uppercase', letterSpacing: '0.06em', display: 'flex', alignItems: 'center', gap: '3px', whiteSpace: 'nowrap' }}>
                        {React.createElement(cb.Icon, { size: 9, style: { color: cb.color, flexShrink: 0 } })}
                        {cb.label}
                      </span>
                      <Badge variant={cb.match === 'Goed' ? 'match' : cb.match === 'Ok' ? 'warn' : 'danger'} className="text-[7px] py-0 px-1" style={{ flexShrink: 0 }}>
                        {cb.match === 'Goed' ? 'GOED' : cb.match === 'Ok' ? 'OK' : 'VER'}
                      </Badge>
                    </div>
                    <div style={{ fontSize: '20px', fontWeight: 700, lineHeight: 1, color: cb.color, fontFamily: 'var(--font-dotmatrix)', textShadow: `0 0 10px ${cb.glow}`, whiteSpace: 'nowrap', flexShrink: 0 }}>
                      {cb.gebied}
                    </div>
                    <p style={{ fontSize: '10px', color: 'rgba(232,245,242,0.65)', lineHeight: 1.4 }}>{cb.detail}</p>
                    {cb.refVal && (
                      <p style={{ fontSize: '9px', color: 'rgba(232,245,242,0.35)', marginTop: 'auto', lineHeight: 1.3 }}>{cb.refVal}</p>
                    )}
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* No CBS data — kans */}
          {selectedKans && !loadingCbs && !selectedCbs && (
            <div style={{ flex: 1, display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '7px' }}>
                <div style={{ background: S.bg3, borderRadius: 'var(--r-sm)', padding: '3px 10px', fontSize: '13px', fontWeight: 700, color: S.t1, border: `1px solid ${S.bdr2}`, fontFamily: 'var(--font-mono)' }}>{selectedKans.postcode}</div>
                <button onClick={() => { setSelectedKans(null) }} className="ts-close-btn">✕</button>
              </div>
              <p style={{ fontSize: '11px', color: S.t2 }}>Geen CBS-data voor <strong style={{ color: S.t1, fontFamily: 'var(--font-mono)' }}>{selectedKans.postcode}</strong>.</p>
            </div>
          )}

          {/* Klant CBS panel — alleen op klanten tab, data uit KlantGebied (geen fetch) */}
          {viewTab === 'klanten' && selectedKlant && klantCbsData && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', height: '100%' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '8px', flexShrink: 0 }}>
                <span style={{ fontFamily: 'var(--font-mono)', fontSize: '13px', fontWeight: 700, color: 'var(--accent-2)', letterSpacing: '0.04em' }}>
                  {selectedKlant.postcode}
                </span>
                {getStad(selectedKlant.postcode) && (
                  <span style={{ fontSize: '12px', fontWeight: 500, color: S.t2 }}>{getStad(selectedKlant.postcode)}</span>
                )}
                <span style={{ fontSize: '10px', color: S.t3, fontFamily: 'var(--font-mono)' }}>
                  {selectedKlant.klant_count} klanten{(selectedKlant.inwoners ?? 0) > 0 ? ` · ${Math.min(100, (selectedKlant.klant_count / selectedKlant.inwoners!) * 100).toFixed(1)}% pen.` : ''}
                </span>
                <button onClick={() => setSelectedKlant(null)} className="ts-close-btn" style={{ marginLeft: 'auto' }}>✕</button>
              </div>
              <div ref={cbsKlantRef} style={{ display: 'flex', flex: 1, overflow: 'hidden' }}>
                {((() => {
                  const leeftijd = klantCbsData.cbs_leeftijd ?? 0
                  const vrouw    = klantCbsData.pct_vrouw    ?? 0
                  const koop     = klantCbsData.pct_koop     ?? 0
                  const inwoners = klantCbsData.inwoners      ?? 0
                  const pen      = inwoners > 0 ? (klantCbsData.klant_count / inwoners * 100) : 0
                  return [
                    { label: 'Leeftijd',    waarde: `${Math.round(leeftijd * 10) / 10}jr`, color: '#C2A46A', glow: 'rgba(194,164,106,0.22)' },
                    { label: 'Geslacht',    waarde: `V ${Math.round(vrouw)}% · M ${Math.round(100 - vrouw)}%`, color: '#B87888', glow: 'rgba(184,120,136,0.22)' },
                    { label: '%Koopwoning', waarde: `${Math.round(koop * 10) / 10}%`,       color: '#8878B8', glow: 'rgba(136,120,184,0.22)' },
                    { label: 'Penetratie',  waarde: pen > 0 ? `${pen.toFixed(1)}%` : '—',   color: '#5888A8', glow: 'rgba(88,136,168,0.22)'  },
                  ]
                })() as { label: string; waarde: string; color: string; glow: string }[]).map((cb, i) => (
                  <div key={cb.label} style={{
                    flex: 1, padding: '10px 12px',
                    borderLeft: i > 0 ? '1px solid rgba(255,255,255,0.06)' : 'none',
                    borderTop: `2px solid ${cb.color}44`,
                    display: 'flex', flexDirection: 'column', justifyContent: 'center', gap: '6px',
                    overflow: 'hidden',
                  }}>
                    <span style={{ fontSize: '8px', fontWeight: 600, color: `${cb.color}99`, textTransform: 'uppercase', letterSpacing: '0.10em', whiteSpace: 'nowrap' }}>
                      {cb.label}
                    </span>
                    <div style={{ fontSize: cb.waarde.length > 8 ? '16px' : '22px', fontWeight: 700, lineHeight: 1, color: cb.color, fontFamily: 'var(--font-dotmatrix)', textShadow: `0 0 14px ${cb.glow}`, whiteSpace: 'nowrap' }}>
                      {cb.waarde}
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* No CBS data — klant */}
          {viewTab === 'klanten' && selectedKlant && !klantCbsData && (
            <div style={{ flex: 1, display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '7px' }}>
                <div style={{ background: 'rgba(103,191,218,0.10)', border: '1px solid rgba(103,191,218,0.28)', borderRadius: 'var(--r-sm)', padding: '3px 10px', fontSize: '13px', fontWeight: 700, color: 'var(--accent-2)', fontFamily: 'var(--font-mono)' }}>{selectedKlant.postcode}</div>
                <button onClick={() => { setSelectedKlant(null) }} className="ts-close-btn">✕</button>
              </div>
              <p style={{ fontSize: '11px', color: S.t2 }}>Geen CBS-data voor <strong style={{ color: 'var(--accent-2)', fontFamily: 'var(--font-mono)' }}>{selectedKlant.postcode}</strong>.</p>
            </div>
          )}
        </div>
      </div>

      {/* ══ TAB BAR ══ */}
      <div className="ts-tab-bar" ref={tabBarRef} style={{ position: 'relative' }}>
        {/* Spell: sliding indicator */}
        <div ref={tabIndicatorRef} className="ts-tab-indicator"
          style={{ background: 'var(--accent)', transform: 'translateX(0)' }} />

        {([
          { id: 'kaart',     label: 'Kaart',   Icon: MapIcon,    accent: 'var(--accent)' },
          { id: 'postcodes', label: 'Kansen',  Icon: LayoutList, accent: 'var(--accent)' },
          { id: 'klanten',   label: 'Klanten', Icon: Users,      accent: 'var(--accent-2)' },
        ] as { id: 'kaart'|'postcodes'|'klanten'; label: string; Icon: React.ElementType; accent: string }[]).map(({ id, label, Icon, accent }) => {
          const isActive = viewTab === id
          return (
            <button key={id} onClick={() => { setViewTab(id); if (id === 'klanten') { setSelectedKans(null) } }}
              aria-label={`Tab: ${label}`} aria-pressed={isActive}
              className={isActive ? 'ts-tab-btn active' : 'ts-tab-btn'}
              style={{ borderBottom: 'none' }}>
              <Icon size={14} color={isActive ? accent : 'var(--t-4)'} />
              {label}
              {id === 'postcodes' && (
                <Badge variant="prio" className="ml-1 text-[10px]">{topKansen.length}</Badge>
              )}
            </button>
          )
        })}
      </div>


      {/* ══════════════════════════════════════════
          MAP + SIDE PANEL
      ══════════════════════════════════════════ */}
      <div style={{ flex: 1, display: 'flex', flexDirection: 'column', overflow: 'hidden' }}>

        {/* ══ POSTCODES TAB ══ */}
        {viewTab === 'postcodes' && (
          <div className="ts-tab-content">

            {/* Koptekst */}
            <div style={{ display: 'flex', alignItems: 'center', gap: '10px', flexShrink: 0, background: 'rgba(22,4,4,0.88)', borderRadius: 'var(--r-md)', padding: '9px 14px', border: '1px solid rgba(220,80,60,0.18)' }}>
              <div style={{ width: '6px', height: '6px', borderRadius: '50%', background: 'var(--accent)', opacity: 0.85, flexShrink: 0 }} />
              <span style={{ fontSize: '12px', fontWeight: 700, color: S.t1, letterSpacing: '0.04em', textTransform: 'uppercase' }}>Kansen · CBS-profiel match</span>
              <span style={{ fontSize: '11px', color: S.t3, fontStyle: 'italic' }}>leeftijd · geslacht · %koop · inwoners</span>
              <span style={{ fontSize: '10px', fontWeight: 700, background: 'var(--accent-bg)', color: 'var(--accent)', borderRadius: '3px', padding: '2px 8px', fontFamily: 'var(--font-mono)', marginLeft: 'auto' }}>{topKansen.length} kansen</span>
            </div>

            {/* Table header with sort */}
            <Table>
              <TableHeader>
                <TableRow className="hover:bg-transparent border-0">
                  {([
                    { key: null,       label: '#',                      w: 'w-10' },
                    { key: 'postcode', label: 'Postcode',               w: 'w-44' },
                    { key: 'score',    label: 'Score',                  w: 'w-44' },
                    { key: null,       label: 'Markt',                  w: 'w-28' },
                    { key: null,       label: 'Dichtstbij klantgebied', w: '' },
                  ] as { key: 'score'|'postcode'|null; label: string; w: string }[]).map(h => (
                    <TableHead
                      key={h.label}
                      className={`${h.w} ${h.key ? 'cursor-pointer select-none hover:text-foreground' : ''}`}
                      onClick={() => h.key && handleKansenSort(h.key)}
                    >
                      <span className="flex items-center gap-1">
                        {h.label}
                        {h.key === kansenSort && (
                          <span className="text-[10px] opacity-70">{kansenSortDir === 'desc' ? '▼' : '▲'}</span>
                        )}
                      </span>
                    </TableHead>
                  ))}
                </TableRow>
              </TableHeader>

            <TableBody ref={kansenRowsRef}>
              {topKansen.map((k, i) => {
                const kc           = kansColor(k.score)
                const stad         = getStad(k.postcode)
                const isSelected   = selectedKans?.postcode === k.postcode
                const nearestKlant = getNearestKlantGebied(k)
                const nkStad       = nearestKlant ? getStad(nearestKlant.postcode) : null
                return (
                  <TableRow key={k.postcode}
                    onClick={e => { triggerRipple(e, kc + '55'); handleSelectKans(k) }}
                    data-state={isSelected ? 'selected' : undefined}
                    style={{
                      borderLeft: `3px solid ${isSelected ? kc : 'rgba(220,80,60,0.30)'}`,
                      background: isSelected ? `rgba(60,8,8,0.88)` : undefined,
                      boxShadow: isSelected ? `0 2px 20px ${kc}25` : undefined,
                    }}>
                    {/* Rank */}
                    <TableCell className="font-mono text-xs font-bold text-muted-foreground w-10">{i + 1}</TableCell>

                    {/* Postcode + stad + badge */}
                    <TableCell>
                      <div className="flex flex-col gap-0.5">
                        <div className="flex items-center gap-2">
                          <span className="text-lg font-bold font-mono tracking-tight" style={{ color: isSelected ? kc : undefined }}>{k.postcode}</span>
                          {k.score >= 80 ? <Badge variant="prio">PRIO</Badge> : k.score >= 70 ? <Badge variant="hoog">HOOG</Badge> : null}
                        </div>
                        {stad && <span className="text-xs text-muted-foreground">{stad}</span>}
                      </div>
                    </TableCell>

                    {/* Score bar */}
                    <TableCell>
                      <div className="flex items-center gap-3 pr-4">
                        <div className="flex-1 h-1.5 bg-muted/30 rounded-full overflow-hidden">
                          <div className="ts-score-bar h-full rounded-full" data-target={k.score}
                            style={{ background: `linear-gradient(90deg, ${kc}70, ${kc})`, boxShadow: isSelected ? `0 0 6px ${kc}` : 'none' }} />
                        </div>
                        <span className="text-sm font-bold font-mono w-7 text-right shrink-0" style={{ color: kc }}>{k.score}</span>
                      </div>
                    </TableCell>

                    {/* Markt */}
                    <TableCell>
                      <div className="flex flex-col gap-0.5">
                        <span className="text-sm font-bold font-mono text-foreground/80">
                          {k.inwoners >= 1000 ? `${(k.inwoners / 1000).toFixed(1)}K` : k.inwoners > 0 ? String(k.inwoners) : '—'}
                        </span>
                        <span className="text-[10px] text-muted-foreground">inwoners</span>
                      </div>
                    </TableCell>

                    {/* Dichtstbij klantgebied */}
                    <TableCell>
                      {nearestKlant ? (
                        <div className="flex flex-col gap-0.5">
                          <div className="flex items-center gap-2">
                            <span className="text-sm font-bold font-mono" style={{ color: 'var(--accent-2)' }}>{nearestKlant.postcode}</span>
                            {nkStad && <span className="text-xs text-foreground/70 font-medium">{nkStad}</span>}
                          </div>
                          <span className="text-[10px] text-muted-foreground">
                            {nearestKlant.klant_count} klanten{(nearestKlant.inwoners ?? 0) > 0 ? ` · ${Math.round(nearestKlant.klant_count / nearestKlant.inwoners! * 100)}% pen.` : ''}
                          </span>
                        </div>
                      ) : <span className="text-muted-foreground text-xs">—</span>}
                    </TableCell>
                  </TableRow>
                )
              })}
            </TableBody>
          </Table>

            <div style={{ fontSize: '9px', color: S.t4, paddingTop: '4px', lineHeight: 1.6, letterSpacing: '0.02em' }}>
              Score = CBS-match op klantprofiel (koopwoning 60% · leeftijd 30% · geslacht 10%) · Penetratie = klanten / inwoners
            </div>
          </div>
        )}

        {/* ══ KLANTEN TAB ══ */}
        {viewTab === 'klanten' && (
          <div className="ts-tab-content">

            {/* Command bar zoek */}
            <div ref={searchRef} style={{ flexShrink: 0, position: 'relative' }}>
              {/* Input row */}
              <div style={{
                display: 'flex', alignItems: 'center', gap: '10px',
                background: 'rgba(8,10,24,0.92)',
                backdropFilter: 'blur(16px)',
                WebkitBackdropFilter: 'blur(16px)',
                border: `1px solid ${searchFocused ? 'rgba(82,196,232,0.40)' : 'rgba(82,140,212,0.18)'}`,
                borderRadius: searchFocused && klantSearch ? '10px 10px 0 0' : '10px',
                padding: '10px 14px',
                transition: 'border-color 0.15s, border-radius 0.15s',
                boxShadow: searchFocused ? '0 0 0 3px rgba(82,196,232,0.07)' : 'none',
              }}>
                <Search size={13} color={searchFocused ? 'var(--accent-2)' : S.t4} style={{ flexShrink: 0, transition: 'color 0.15s' }} />
                <Input
                  value={klantSearch}
                  onChange={e => setKlantSearch(e.target.value)}
                  onFocus={() => setSearchFocused(true)}
                  onBlur={() => setTimeout(() => setSearchFocused(false), 120)}
                  placeholder="Zoek postcode of stad..."
                  className="bg-transparent border-0 focus-visible:ring-0 text-sm text-foreground placeholder:text-muted-foreground h-8 px-0"
                />
                {klantSearch ? (
                  <button onClick={() => setKlantSearch('')} style={{
                    display: 'flex', alignItems: 'center', justifyContent: 'center',
                    background: 'rgba(255,255,255,0.06)', border: '1px solid rgba(255,255,255,0.08)',
                    borderRadius: '4px', cursor: 'pointer', color: S.t3,
                    width: '18px', height: '18px', flexShrink: 0, padding: 0,
                  }}>
                    <X size={10} />
                  </button>
                ) : (
                  <span style={{
                    fontFamily: 'var(--font-mono)', fontSize: '9px', color: S.t4,
                    background: 'rgba(255,255,255,0.05)', border: '1px solid rgba(255,255,255,0.08)',
                    borderRadius: '4px', padding: '2px 7px', flexShrink: 0,
                  }}>
                    {klantTable.getFilteredRowModel().rows.length} gebieden
                  </span>
                )}
              </div>

              {/* Dropdown resultaten */}
              {searchFocused && klantSearch.trim() && (() => {
                const hits = klantTable.getFilteredRowModel().rows.slice(0, 6).map(r => r.original)
                if (!hits.length) return null
                return (
                  <div style={{
                    position: 'absolute', top: '100%', left: 0, right: 0, zIndex: 50,
                    background: 'rgba(8,10,24,0.97)',
                    backdropFilter: 'blur(20px)',
                    WebkitBackdropFilter: 'blur(20px)',
                    border: '1px solid rgba(82,196,232,0.30)',
                    borderTop: '1px solid rgba(82,196,232,0.10)',
                    borderRadius: '0 0 10px 10px',
                    overflow: 'hidden',
                    boxShadow: '0 16px 40px rgba(0,0,0,0.5)',
                  }}>
                    {hits.map((k, i) => {
                      const stad = getStad(k.postcode)
                      const pen  = (k.inwoners ?? 0) > 0 ? (k.klant_count / k.inwoners! * 100).toFixed(1) : null
                      const penColor = pen && parseFloat(pen) >= 5 ? '#D44030' : pen && parseFloat(pen) >= 2 ? '#C48830' : S.t4
                      return (
                        <div key={k.postcode}
                          onMouseDown={() => { setKlantSearch(k.postcode); setSearchFocused(false) }}
                          style={{
                            display: 'flex', alignItems: 'center', gap: '12px',
                            padding: '10px 14px',
                            borderBottom: i < hits.length - 1 ? '1px solid rgba(255,255,255,0.04)' : 'none',
                            cursor: 'pointer',
                            transition: 'background 0.1s',
                            background: i === 0 ? 'rgba(82,196,232,0.06)' : 'transparent',
                          }}
                          onMouseEnter={e => (e.currentTarget.style.background = 'rgba(82,196,232,0.08)')}
                          onMouseLeave={e => (e.currentTarget.style.background = i === 0 ? 'rgba(82,196,232,0.06)' : 'transparent')}
                        >
                          {/* Postcode badge */}
                          <div style={{
                            width: '42px', height: '32px', borderRadius: '6px',
                            background: 'rgba(82,196,232,0.08)',
                            border: '1px solid rgba(82,196,232,0.18)',
                            display: 'flex', alignItems: 'center', justifyContent: 'center',
                            fontFamily: 'var(--font-mono)', fontSize: '10px', fontWeight: 700,
                            color: 'var(--accent-2)', flexShrink: 0,
                          }}>
                            {k.postcode}
                          </div>
                          {/* Info */}
                          <div style={{ flex: 1 }}>
                            <div style={{ fontSize: '13px', fontWeight: 600, color: S.t1 }}>
                              {stad || k.postcode}
                            </div>
                            <div style={{ fontSize: '10px', color: S.t3, fontFamily: 'var(--font-mono)', marginTop: '2px' }}>
                              {k.klant_count} klanten{pen ? ` · ` : ''}{pen && <span style={{ color: penColor }}>{pen}% pen.</span>}
                            </div>
                          </div>
                          {/* Klant count badge */}
                          <div style={{
                            fontFamily: 'var(--font-mono)', fontSize: '11px', fontWeight: 700,
                            color: 'var(--accent-2)', background: 'rgba(82,196,232,0.10)',
                            border: '1px solid rgba(82,196,232,0.18)',
                            borderRadius: '4px', padding: '3px 8px', flexShrink: 0,
                          }}>
                            {k.klant_count}
                          </div>
                        </div>
                      )
                    })}
                    {klantTable.getFilteredRowModel().rows.length > 6 && (
                      <div style={{ padding: '8px 14px', fontSize: '10px', color: S.t4, fontFamily: 'var(--font-mono)', textAlign: 'center', borderTop: '1px solid rgba(255,255,255,0.04)' }}>
                        +{klantTable.getFilteredRowModel().rows.length - 6} meer resultaten in de lijst
                      </div>
                    )}
                  </div>
                )
              })()}
            </div>

            {/* KPI cards */}
            {klantGebieden.length > 0 && (() => {
              const kpiTotal    = klantGebieden.reduce((s, k) => s + k.klant_count, 0)
              const kpiGebieden = klantGebieden.length
              const validPen    = klantGebieden.filter(k => (k.inwoners ?? 0) > 0)
              const kpiPen      = validPen.length > 0
                ? (validPen.reduce((s, k) => s + k.klant_count / k.inwoners!, 0) / validPen.length * 100).toFixed(1)
                : '0.0'
              return (
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '6px', flexShrink: 0 }}>
                {[
                  { label: 'Totaal klanten',  value: String(kpiTotal),    color: '#52C4E8', glow: 'rgba(82,196,232,0.20)' },
                  { label: 'Klantgebieden',   value: String(kpiGebieden), color: '#4AB0D8', glow: 'rgba(74,176,216,0.18)' },
                  { label: 'Gem. penetratie', value: `${kpiPen}%`,        color: '#8FD44C', glow: 'rgba(143,212,76,0.18)'  },
                ].map(s => (
                  <div key={s.label} className="ts-kpi-stat ts-kpi-stat--blue" style={{ borderTop: `2px solid ${s.color}60` }}>
                    <span style={{ fontSize: '24px', lineHeight: 1, color: s.color, fontFamily: 'var(--font-dotmatrix)', letterSpacing: '0.04em', textShadow: `0 0 14px ${s.glow}` }}>{s.value}</span>
                    <div style={{ fontSize: '8px', color: 'rgba(232,245,242,0.45)', textTransform: 'uppercase', letterSpacing: '0.12em', fontFamily: 'var(--font)' }}>{s.label}</div>
                  </div>
                ))}
              </div>
              )
            })()}

            {/* Table — sticky header (scrolled by ts-tab-content) */}
            <div style={{ background: 'rgba(8,10,24,0.88)', border: '1px solid rgba(255,255,255,0.07)', borderRadius: '10px', overflow: 'clip' }}>
            <Table wrapperClassName="overflow-x-auto">
              <TableHeader className="[&_tr]:border-white/10" style={{ position: 'sticky', top: 0, zIndex: 10 }}>
                <TableRow className="hover:bg-transparent border-0" style={{ background: 'rgba(8,10,24,0.97)', backdropFilter: 'blur(12px)', WebkitBackdropFilter: 'blur(12px)' }}>
                  {([
                    { colId: null,           label: '#',        w: 'w-8' },
                    { colId: 'postcode',     label: 'Postcode', w: 'w-28' },
                    { colId: 'klant_count',  label: 'Klanten',  w: 'w-20' },
                    { colId: 'penetratie',   label: 'Pen.',     w: 'w-20' },
                    { colId: 'cbs_leeftijd', label: 'Leeftijd', w: 'w-20' },
                    { colId: 'pct_vrouw',    label: '%Vrouw',   w: 'w-18' },
                    { colId: 'pct_koop',     label: '%Koop',    w: 'w-18' },
                    { colId: 'inwoners',     label: 'Inwoners', w: 'w-20' },
                  ] as { colId: string | null; label: string; w: string }[]).map(h => {
                    const col = h.colId ? klantTable.getColumn(h.colId) : null
                    const sorted = col?.getIsSorted()
                    return (
                      <TableHead
                        key={h.label}
                        className={`${h.w} ${col ? 'cursor-pointer select-none hover:text-foreground/80' : ''}`}
                        onClick={() => col?.toggleSorting()}
                      >
                        <span className="flex items-center gap-1">
                          {h.label}
                          {sorted && (
                            <span className="text-[10px] opacity-70">{sorted === 'desc' ? '▼' : '▲'}</span>
                          )}
                        </span>
                      </TableHead>
                    )
                  })}
                </TableRow>
              </TableHeader>
              <TableBody>
                {klantTable.getRowModel().rows.map((row) => {
                  const k = row.original
                  const i = row.index
                  const stad   = getStad(k.postcode)
                  const pen    = (k.inwoners ?? 0) > 0 ? Math.min(100, k.klant_count / k.inwoners! * 100) : 0
                  const penStr = (k.inwoners ?? 0) > 0 ? pen.toFixed(1) + '%' : '—'
                  const penRatio = (k.inwoners ?? 0) > 0 ? Math.min(1, k.klant_count / k.inwoners!) : 0
                  const pct    = klantSorting[0]?.id === 'penetratie'
                    ? Math.round(penRatio / maxKlantPen * 100)
                    : Math.round(k.klant_count / maxKlantCount * 100)
                  const bc     = pct >= 80 ? '#67BFDA' : pct >= 50 ? '#4A9AB0' : pct >= 25 ? '#2D7490' : '#1A5068'
                  const penColor = pen >= 5 ? '#D44030' : pen >= 2 ? '#C48830' : pen >= 1 ? '#B8A440' : S.t4
                  const isKlantSelected = selectedKlant?.postcode === k.postcode
                  return (
                    <TableRow key={k.postcode}
                      onClick={e => { triggerRipple(e, 'rgba(103,191,218,0.40)'); handleSelectKlant(k) }}
                      data-state={isKlantSelected ? 'selected' : undefined}
                      style={{
                        borderLeft: `3px solid ${isKlantSelected ? 'var(--accent-2)' : bc}`,
                        background: isKlantSelected ? 'rgba(0,30,80,0.92)' : undefined,
                        boxShadow: isKlantSelected ? '0 2px 20px rgba(103,191,218,0.12)' : undefined,
                        cursor: 'pointer',
                      }}>
                      <TableCell className="font-mono text-xs font-bold text-muted-foreground w-10">{i + 1}</TableCell>
                      <TableCell>
                        <div className="flex flex-col gap-0.5">
                          <span className="text-base font-bold font-mono tracking-tight" style={{ color: isKlantSelected ? 'var(--accent-2)' : undefined }}>{k.postcode}</span>
                          {stad && <span className="text-xs text-muted-foreground">{stad}</span>}
                        </div>
                      </TableCell>
                      <TableCell>
                        <span className="text-sm font-bold font-mono" style={{ color: bc }}>{k.klant_count}</span>
                      </TableCell>
                      <TableCell>
                        <span className="text-sm font-bold font-mono" style={{ color: penColor }}>{penStr}</span>
                      </TableCell>
                      {[
                        k.cbs_leeftijd != null ? `${Math.round(k.cbs_leeftijd * 10) / 10}jr` : '—',
                        k.pct_vrouw    != null ? `${Math.round(k.pct_vrouw * 10) / 10}%` : '—',
                        k.pct_koop     != null ? `${Math.round(k.pct_koop * 10) / 10}%` : '—',
                        (k.inwoners ?? 0) >= 1000 ? `${((k.inwoners ?? 0)/1000).toFixed(1)}K` : `${k.inwoners ?? '—'}`,
                      ].map((val, ci) => (
                        <TableCell key={ci} className="font-mono text-sm font-semibold text-foreground/75">{val}</TableCell>
                      ))}
                    </TableRow>
                  )
                })}
              </TableBody>
            </Table>
            </div>
          </div>
        )}

        <div style={{ flex: 1, overflow: 'hidden', display: viewTab === 'kaart' ? 'flex' : 'none' }}>

          {/* ── MAP ── */}
          <div style={{ flex: '0 0 65%', position: 'relative', overflow: 'hidden' }}>

            {/* Mode toggle — Spell: sliding pill */}
            <div className="ts-map-overlay" style={{ top: '12px', left: '12px', display: 'flex', padding: '3px', position: 'relative', overflow: 'hidden' }}>
              {/* sliding pill background */}
              <div ref={pillRef} className="ts-toggle-pill"
                style={{ background: 'var(--accent-bg)', transform: 'translateX(0)' }} />
              {([
                { id: 'kansen',  label: 'Kansen',  activeColor: 'var(--accent)' },
                { id: 'klanten', label: 'Klanten', activeColor: 'var(--accent-2)' },
              ] as { id: HeatMode; label: string; activeColor: string }[]).map(({ id, label, activeColor }) => (
                <button key={id} className="ts-toggle-btn"
                  onClick={() => {
                    setHeatMode(id)
                    setSelectedKans(null)
                    setFlyTarget(overviewTarget)
                  }}
                  aria-label={`Kaartmodus: ${label}`} aria-pressed={heatMode === id}
                  style={{ color: heatMode === id ? activeColor : S.t4 }}>
                  {label}
                </button>
              ))}
            </div>

            {/* Legend — dark glassmorphism */}
            <div className="ts-map-overlay" style={{ bottom: '28px', left: '12px', padding: '10px 13px' }}>
              {heatMode === 'kansen' ? (
                <>
                  <p className="ts-label" style={{ marginBottom: '8px' }}>Kansscore</p>
                  {[
                    { color: '#D44030', label: '85–100 · top kans' },
                    { color: '#CC6820', label: '70–84 · hoog' },
                    { color: '#C48830', label: '55–69 · midden' },
                    { color: '#B8A440', label: '35–54 · laag' },
                    { color: '#9AB840', label: '20–34 · minimaal' },
                  ].map(item => (
                    <div key={item.label} style={{ display: 'flex', alignItems: 'center', gap: '8px', marginBottom: '4px' }}>
                      <div style={{ width: '8px', height: '8px', borderRadius: '50%', background: item.color, flexShrink: 0 }} />
                      <span style={{ fontSize: '10px', color: S.t3 }}>{item.label}</span>
                    </div>
                  ))}
                </>
              ) : (
                <>
                  <p className="ts-label" style={{ marginBottom: '8px' }}>Klantdichtheid</p>
                  {[
                    { color: '#67BFDA', label: 'Veel klanten' },
                    { color: '#4A9AB0', label: 'Gemiddeld' },
                    { color: '#2D7490', label: 'Weinig klanten' },
                  ].map(item => (
                    <div key={item.label} style={{ display: 'flex', alignItems: 'center', gap: '8px', marginBottom: '4px' }}>
                      <div style={{ width: '8px', height: '8px', borderRadius: '50%', background: item.color, flexShrink: 0 }} />
                      <span style={{ fontSize: '10px', color: S.t3 }}>{item.label}</span>
                    </div>
                  ))}
                  <p style={{ fontSize: '9px', color: S.t4, marginTop: '4px' }}>Groter = meer klanten</p>
                </>
              )}
            </div>

            <DutchMap
              matches={matches}
              kansen={kansen}
              klantGebieden={klantGebieden}
              heatMode={heatMode}
              flyTarget={flyTarget}
              selectedKans={selectedKans}
              selectedCbs={selectedCbs}
              nearestMatchPostcode={selectedKans ? (getNearestMatch(selectedKans)?.postcode ?? null) : null}
              vestigingPostcode={BEDRIJF.vestigingPostcode}
              vestigingNaam={BEDRIJF.vestiging}
              vestigingLat={BEDRIJF.vestigingLat}
              vestigingLon={BEDRIJF.vestigingLon}
              radiusKm={BEDRIJF.radiusKm}
              reistijdMin={BEDRIJF.reistijdMin}
              onSelectKans={handleSelectKans}
              onDeselectKans={() => { setSelectedKans(null); setFlyTarget(null) }}
            />
          </div>

          {/* ── SIDE PANEL ── */}
          <div style={{ flex: '0 0 35%', borderLeft: `1px solid ${S.bdr}`, display: 'flex', flexDirection: 'column', overflow: 'hidden', background: S.bg1 }}>

            <div style={{ flex: 1, overflowY: 'auto', padding: '12px', display: 'flex', flexDirection: 'column', gap: '12px' }}>

              {heatMode === 'kansen' ? (
                <section>
                  <div className="ts-section-header">
                    <div className="ts-dot ts-dot--amber" />
                    <span className="ts-label">Kansen · {topKansen.length} gebieden</span>
                  </div>
                  <div style={{ display: 'flex', flexDirection: 'column', gap: '2px' }}>
                    {topKansen.map((k, i) => {
                      const kc         = kansColor(k.score)
                      const isSelected = selectedKans?.postcode === k.postcode
                      const stad       = getStad(k.postcode)
                      const pen        = k.inwoners > 0 ? Math.round((klantCountByPostcode.get(k.postcode) ?? 0) / k.inwoners * 100) : 0
                      return (
                        <div key={k.postcode} onClick={() => handleSelectKans(k)}
                          className="ts-list-item"
                          style={{
                            background: isSelected ? `${kc}10` : undefined,
                            border: `1px solid ${isSelected ? kc + '40' : 'var(--bdr)'}`,
                            borderLeftColor: isSelected ? kc : 'transparent',
                            boxShadow: isSelected ? `0 0 12px ${kc}18` : 'none',
                          }}>
                          <span style={{ fontSize: '10px', fontWeight: 700, color: S.t4, width: '14px', textAlign: 'right', flexShrink: 0, fontFamily: 'var(--font-mono)' }}>{i+1}</span>
                          <div style={{ display: 'flex', flexDirection: 'column', gap: '2px', flexShrink: 0, minWidth: '48px' }}>
                            <span style={{ fontSize: '13px', fontWeight: 700, color: isSelected ? kc : S.t1, lineHeight: 1, fontFamily: 'var(--font-mono)' }}>{k.postcode}</span>
                            {stad && <span style={{ fontSize: '9px', color: S.t4, lineHeight: 1 }}>{stad}</span>}
                            {pen > 0 && (
                              <span style={{ fontSize: '9px', fontWeight: 600, color: 'var(--accent)', lineHeight: 1, fontFamily: 'var(--font-mono)' }}>{pen}% pen.</span>
                            )}
                          </div>
                          <div style={{ flex: 1, height: '4px', background: S.bdr2, borderRadius: '2px', overflow: 'hidden' }}>
                            <div style={{ height: '100%', width: `${k.score}%`, background: `linear-gradient(90deg, ${kc}80, ${kc})`, borderRadius: '2px', boxShadow: isSelected ? `0 0 8px ${kc}` : 'none' }} />
                          </div>
                          <span style={{ fontSize: '13px', fontWeight: 700, color: kc, width: '26px', textAlign: 'right', flexShrink: 0, fontFamily: 'var(--font-mono)' }}>{k.score}</span>
                        </div>
                      )
                    })}
                  </div>
                </section>
              ) : (
                <>
                  {klantGebieden.length > 0 && (() => {
                    const total = klantGebieden.reduce((s, k) => s + k.klant_count, 0)
                    return (
                      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '6px' }}>
                        {[
                          { label: 'Klanten',     value: String(total),                    color: 'var(--accent-2)' },
                          { label: 'Postcodes',   value: String(klantGebieden.length),     color: '#67BFDA' },
                          { label: 'Top postcode',value: klantGebieden[0]?.postcode ?? '—', color: '#4A9AB0' },
                        ].map(s => (
                          <div key={s.label} style={{ background: S.bg2, borderRadius: 'var(--r-md)', border: `1px solid ${S.bdr}`, borderTop: `2px solid ${s.color}40`, padding: '10px 8px', textAlign: 'center' }}>
                            <div style={{ fontSize: '16px', fontWeight: 700, color: s.color, letterSpacing: '-0.03em', fontFamily: 'var(--font-mono)' }}>{s.value}</div>
                            <div style={{ fontSize: '9px', color: S.t4, marginTop: '3px', lineHeight: 1.3, textTransform: 'uppercase', letterSpacing: '0.08em' }}>{s.label}</div>
                          </div>
                        ))}
                      </div>
                    )
                  })()}
                  <section>
                    <div className="ts-section-header">
                      <div className="ts-dot ts-dot--cyan" />
                      <span className="ts-label">Klantgebieden</span>
                    </div>
                    <div style={{ display: 'flex', flexDirection: 'column', gap: '2px' }}>
                      {klantGebieden.slice(0, 25).map((k, i) => {
                        const max  = klantGebieden[0]?.klant_count ?? 1
                        const pct  = Math.round((k.klant_count / max) * 100)
                        const bc   = pct >= 80 ? '#67BFDA' : pct >= 50 ? '#4A9AB0' : pct >= 25 ? '#2D7490' : '#1A5068'
                        const stad = getStad(k.postcode)
                        const pen  = (k.inwoners ?? 0) > 0 ? ((k.klant_count / k.inwoners!) * 100).toFixed(1) : null
                        const klantCoords = getCoordsSync(k.postcode)
                        return (
                          <div key={k.postcode} onClick={() => {
                            if (klantCoords) setFlyTarget({ lat: klantCoords[0], lon: klantCoords[1], zoom: 13 })
                          }} className="ts-list-item" style={{
                            borderLeftColor: bc,
                            cursor: klantCoords ? 'pointer' : 'default',
                          }}>
                            <span style={{ fontSize: '10px', fontWeight: 700, color: S.t4, width: '14px', textAlign: 'right', flexShrink: 0, fontFamily: 'var(--font-mono)' }}>#{i+1}</span>
                            <div style={{ display: 'flex', flexDirection: 'column', gap: '2px', width: '50px', flexShrink: 0 }}>
                              <span style={{ fontSize: '13px', fontWeight: 700, color: S.t1, lineHeight: 1, fontFamily: 'var(--font-mono)' }}>{k.postcode}</span>
                              {stad && <span style={{ fontSize: '9px', color: S.t4, lineHeight: 1 }}>{stad}</span>}
                            </div>
                            <div style={{ flex: 1, height: '3px', background: S.bdr2, borderRadius: '2px', overflow: 'hidden' }}>
                              <div style={{ height: '100%', width: `${pct}%`, background: bc, borderRadius: '2px' }} />
                            </div>
                            <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: '2px', flexShrink: 0 }}>
                              <span style={{ fontSize: '12px', fontWeight: 700, color: bc, whiteSpace: 'nowrap', fontFamily: 'var(--font-mono)' }}>{k.klant_count}</span>
                              {pen && <span style={{ fontSize: '9px', color: S.t4 }}>{pen}% pen.</span>}
                            </div>
                          </div>
                        )
                      })}
                      {klantGebieden.length === 0 && (
                        <div style={{ background: S.bg2, borderRadius: 'var(--r-md)', border: `1px solid ${S.bdr}`, padding: '16px', textAlign: 'center' }}>
                          <p style={{ fontSize: '11px', color: S.t2 }}>Voer <strong style={{ color: S.t1, fontFamily: 'var(--font-mono)' }}>create_klant_dichtheid_fn.sql</strong> uit in Supabase.</p>
                        </div>
                      )}
                    </div>
                  </section>
                </>
              )}
            </div>

            {/* Footer */}
            <div className="ts-footer" style={{ display: 'flex', alignItems: 'center', gap: '6px' }}>
              <TwinScaleLogo size={12} color="rgba(232,245,242,0.30)" />
              <span>TwinScale · CBS · Carto + OSM</span>
            </div>
          </div>
        </div>

      </div>
    </div>
  )
}
