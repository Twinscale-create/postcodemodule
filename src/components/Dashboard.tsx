'use client'

import React, { useState, useCallback, useEffect, useLayoutEffect, useRef } from 'react'
import { MapPin, Users, Building2, Home, TrendingUp, Map as MapIcon, LayoutList } from 'lucide-react'
import { Match, HeatMode, KansPunt, KlantGebied, CbsData } from '@/types'
import { getStad } from '@/lib/postcodeStad'
import { getCoordsSync } from '@/lib/geocode'
import DutchMap from './DutchMap'
import { supabase } from '@/lib/supabase'
import { animate, stagger } from 'animejs'

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

export default function Dashboard({ matches, kansen, klantGebieden }: DashboardProps) {
  const [heatMode, setHeatMode]   = useState<HeatMode>('kansen')
  const [viewTab, setViewTab]     = useState<'kaart' | 'postcodes' | 'klanten'>('kaart')
  const [kansenSort,    setKansenSort]    = useState<'score' | 'postcode' | 'pen'>('score')
  const [kansenSortDir, setKansenSortDir] = useState<'desc' | 'asc'>('desc')
  const [klantSort,     setKlantSort]     = useState<'klanten' | 'pen' | 'postcode' | 'leeftijd' | 'man' | 'vrouw' | 'koop'>('klanten')
  const [klantSortDir,  setKlantSortDir]  = useState<'desc' | 'asc'>('desc')
  const [klantSearch,   setKlantSearch]   = useState('')

  const [selectedKans,     setSelectedKans]     = useState<KansPunt | null>(null)
  const [selectedCbs,      setSelectedCbs]      = useState<CbsData | null>(null)
  const [loadingCbs,       setLoadingCbs]       = useState(false)
  const [selectedKlant,    setSelectedKlant]    = useState<KlantGebied | null>(null)
  const [selectedKlantCbs, setSelectedKlantCbs] = useState<CbsData | null>(null)
  const [loadingKlantCbs,  setLoadingKlantCbs]  = useState(false)
  const [flyTarget, setFlyTarget] = useState<{ lat: number; lon: number; zoom?: number } | null>(null)

  const cbsKansRef    = useRef<HTMLDivElement>(null)
  const cbsKlantRef   = useRef<HTMLDivElement>(null)
  const kansenRowsRef = useRef<HTMLDivElement>(null)
  const kpiObj        = useRef({ total: 0, gebieden: 0, pen: 0 })
  const [kpiDisplay, setKpiDisplay] = useState({ total: 0, gebieden: 0, pen: '0.0' })

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
    .map(k => ({ k, c: getCoordsSync(k.postcode) }))
    .filter((x): x is { k: KlantGebied; c: [number, number] } => x.c !== null)

  function getNearestKlantGebied(kans: KansPunt): KlantGebied | null {
    let best: { k: KlantGebied; d: number } | null = null
    for (const { k, c } of klantWithCoords) {
      const d = euclidean(kans.lat, kans.lon, c[0], c[1])
      if (!best || d < best.d) best = { k, d }
    }
    return best?.k ?? null
  }

  function handleKansenSort(key: typeof kansenSort) {
    if (kansenSort === key) setKansenSortDir(d => d === 'desc' ? 'asc' : 'desc')
    else { setKansenSort(key); setKansenSortDir('desc') }
  }

  function handleKlantSort(key: 'klanten'|'pen'|'postcode'|'leeftijd'|'man'|'vrouw'|'koop') {
    if (klantSort === key) setKlantSortDir(d => d === 'desc' ? 'asc' : 'desc')
    else { setKlantSort(key); setKlantSortDir('desc') }
  }

  const matchPostcodes  = new Set(matches.map(m => m.postcode))
  const klantPostcodes  = new Set(klantGebieden.map(k => k.postcode))
  const topKansen = kansen
    .filter(k => !matchPostcodes.has(k.postcode) && !klantPostcodes.has(k.postcode) && k.score >= 1)
    .sort((a, b) => {
      let diff = 0
      if (kansenSort === 'postcode') diff = Number(a.postcode) - Number(b.postcode)
      else if (kansenSort === 'pen') {
        const penA = a.inwoners > 0 ? (klantCountByPostcode.get(a.postcode) ?? 0) / a.inwoners : 0
        const penB = b.inwoners > 0 ? (klantCountByPostcode.get(b.postcode) ?? 0) / b.inwoners : 0
        diff = penA - penB
      } else {
        diff = a.score - b.score
      }
      return kansenSortDir === 'desc' ? -diff : diff
    })

  const filteredKlanten = klantSearch.trim()
    ? klantGebieden.filter(k => {
        const q = klantSearch.toLowerCase()
        return k.postcode.includes(q) || getStad(k.postcode).toLowerCase().includes(q)
      })
    : klantGebieden

  const sortedKlanten = [...filteredKlanten].sort((a, b) => {
    let diff = 0
    if (klantSort === 'postcode')  diff = Number(a.postcode) - Number(b.postcode)
    else if (klantSort === 'pen')  diff = ((a.inwoners ?? 0) > 0 ? a.klant_count / a.inwoners! : 0) - ((b.inwoners ?? 0) > 0 ? b.klant_count / b.inwoners! : 0)
    else if (klantSort === 'leeftijd') diff = (a.cbs_leeftijd ?? 0) - (b.cbs_leeftijd ?? 0)
    else if (klantSort === 'vrouw')    diff = (a.pct_vrouw ?? 0) - (b.pct_vrouw ?? 0)
    else if (klantSort === 'man')      diff = (100 - (a.pct_vrouw ?? 0)) - (100 - (b.pct_vrouw ?? 0))
    else if (klantSort === 'koop')     diff = (a.pct_koop ?? 0) - (b.pct_koop ?? 0)
    else diff = a.klant_count - b.klant_count
    return klantSortDir === 'desc' ? -diff : diff
  })
  const maxKlantCount = Math.max(...sortedKlanten.map(x => x.klant_count), 1)
  const maxKlantPen   = Math.max(...sortedKlanten.filter(x => (x.inwoners ?? 0) > 0).map(x => x.klant_count / x.inwoners!), 0.001)

  const handleSelectKans = useCallback(async (kans: KansPunt) => {
    if (selectedKans?.postcode === kans.postcode) {
      setSelectedKans(null); setSelectedCbs(null); setFlyTarget(null); return
    }
    setSelectedKans(kans); setSelectedCbs(null); setLoadingCbs(true)
    setSelectedKlant(null); setSelectedKlantCbs(null)
    setFlyTarget({ lat: kans.lat, lon: kans.lon })
    const { data } = await supabase
      .from('pc4_cbs')
      .select('cbs_leeftijd, pct_vrouw, pct_hbo, pct_koop')
      .eq('postcode', kans.postcode)
      .single()
    setSelectedCbs(data as CbsData | null)
    setLoadingCbs(false)
  }, [selectedKans])

  const handleSelectKlant = useCallback(async (klant: KlantGebied) => {
    if (selectedKlant?.postcode === klant.postcode) {
      setSelectedKlant(null); setSelectedKlantCbs(null); return
    }
    setSelectedKlant(klant); setSelectedKlantCbs(null); setLoadingKlantCbs(true)
    setSelectedKans(null); setSelectedCbs(null)
    const { data } = await supabase
      .from('pc4_cbs')
      .select('cbs_leeftijd, pct_vrouw, pct_hbo, pct_koop')
      .eq('postcode', klant.postcode)
      .single()
    setSelectedKlantCbs(data as CbsData | null)
    setLoadingKlantCbs(false)
  }, [selectedKlant])

  // ── Anime.js: CBS card reveal — kansen panel
  useLayoutEffect(() => {
    if (!selectedCbs || !cbsKansRef.current) return
    const cards = cbsKansRef.current.querySelectorAll('[data-cbs-card]')
    animate(cards, { translateY: [14, 0], opacity: [0, 1], duration: 480, easing: 'easeOutExpo', delay: stagger(55) })
  }, [selectedCbs])

  // ── Anime.js: CBS card reveal — klant panel
  useLayoutEffect(() => {
    if (!selectedKlantCbs || !cbsKlantRef.current) return
    const cards = cbsKlantRef.current.querySelectorAll('[data-cbs-card]')
    animate(cards, { translateY: [14, 0], opacity: [0, 1], duration: 480, easing: 'easeOutExpo', delay: stagger(55) })
  }, [selectedKlantCbs])

  // ── Anime.js: score bars kansen tab
  useEffect(() => {
    if (viewTab !== 'postcodes' || !kansenRowsRef.current) return
    const bars = kansenRowsRef.current.querySelectorAll('.ts-score-bar')
    bars.forEach(b => { (b as HTMLElement).style.width = '0' })
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    animate(bars as any, {
      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      width:    (el: any) => (el as HTMLElement).dataset.target + '%',
      duration: 700,
      easing:   'easeOutExpo',
      delay:    stagger(22),
    })
  }, [viewTab, topKansen.length, kansenSort, kansenSortDir])

  // ── Anime.js: KPI counters klanten tab
  useEffect(() => {
    if (viewTab !== 'klanten') return
    const total      = klantGebieden.reduce((s, k) => s + k.klant_count, 0)
    const validPen   = klantGebieden.filter(k => (k.inwoners ?? 0) > 0)
    const avgPenVal  = validPen.length > 0
      ? validPen.reduce((s, k) => s + k.klant_count / k.inwoners!, 0) / validPen.length * 100
      : 0
    kpiObj.current = { total: 0, gebieden: 0, pen: 0 }
    setKpiDisplay({ total: 0, gebieden: 0, pen: '0.0' })
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const anim = animate(kpiObj.current as any, {
      total:    total,
      gebieden: klantGebieden.length,
      pen:      avgPenVal,
      duration: 900,
      easing:   'easeOutExpo',
      onUpdate: () => setKpiDisplay({
        total:    Math.round(kpiObj.current.total),
        gebieden: Math.round(kpiObj.current.gebieden),
        pen:      kpiObj.current.pen.toFixed(1),
      }),
    })
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    return () => { (anim as any).cancel?.() }
  }, [viewTab, klantGebieden])

  // Kansen color scale — earthy terracotta/amber on forest green
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

  const themeGradient =
    viewTab === 'postcodes'
      ? 'radial-gradient(ellipse 90% 55% at 50% 0%, rgba(90,0,20,0.85) 0%, rgba(30,0,8,0.6) 50%, transparent 100%), linear-gradient(180deg, #0E0003 0%, #060205 60%, #030204 100%)'
      : viewTab === 'klanten'
      ? 'radial-gradient(ellipse 100% 60% at 50% 0%, rgba(0,50,160,0.95) 0%, rgba(0,20,70,0.7) 45%, transparent 100%), linear-gradient(180deg, #00040E 0%, #020408 60%, #030404 100%)'
      : undefined

  return (
    <div style={{ height: '100vh', display: 'flex', flexDirection: 'column', overflow: 'hidden', background: themeGradient ?? 'var(--bg)', transition: 'background 0.5s ease', fontFamily: 'var(--font)' }}>

      {/* ══════════════════════════════════════════
          INSIGHT STRIP
      ══════════════════════════════════════════ */}
      <div style={{
        height: `${DASH_H}px`, minHeight: `${DASH_H}px`,
        display: 'flex',
        borderBottom: `1px solid ${S.bdr}`,
        background: 'transparent',
        flexShrink: 0, overflow: 'hidden',
      }}>

        {/* ── LEFT: kansen list ── */}
        <div style={{
          flex: '0 0 32%', padding: '12px 14px',
          borderRight: `1px solid ${S.bdr}`,
          display: 'flex', flexDirection: 'column', overflow: 'hidden',
        }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '8px', marginBottom: '10px', flexShrink: 0 }}>
            <div style={{ width: '5px', height: '5px', borderRadius: '50%', background: 'var(--accent)', opacity: 0.85, flexShrink: 0 }} />
            <span className="ts-label">Top {topKansen.length} kansen</span>
          </div>
          <div style={{ flex: 1, overflowY: 'auto', display: 'flex', flexDirection: 'column', gap: '1px' }}>
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
                  padding: '7px 10px',
                  cursor: 'pointer', width: '100%', textAlign: 'left', flexShrink: 0,
                  transition: 'background 0.12s, border-color 0.12s',
                  boxShadow: isSelected ? `inset 0 0 12px ${kc}10` : 'none',
                }}>
                  <span style={{ fontSize: '11px', fontWeight: 700, color: S.t4, width: '16px', textAlign: 'right', flexShrink: 0, fontFamily: 'var(--font-mono)' }}>{i+1}</span>
                  <div style={{ display: 'flex', flexDirection: 'column', gap: '2px', width: '72px', flexShrink: 0 }}>
                    <span style={{ fontSize: '15px', fontWeight: 700, color: isSelected ? kc : S.t1, lineHeight: 1, fontFamily: 'var(--font-mono)', letterSpacing: '-0.01em' }}>{k.postcode}</span>
                    {stad && <span style={{ fontSize: '11px', color: S.t4, lineHeight: 1, fontFamily: 'var(--font)' }}>{stad}</span>}
                  </div>
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
          </div>
        </div>

        {/* ── RIGHT: KPI overview / targeting panel ── */}
        <div style={{ flex: 1, padding: '12px 16px', display: 'flex', flexDirection: 'column', overflow: 'hidden' }}>

          {!selectedKans && !selectedKlant && (
            <div style={{ display: 'flex', flexDirection: 'column', height: '100%', gap: '8px' }}>
              {/* Logo + 3 KPIs */}
              <div style={{ display: 'flex', alignItems: 'center', gap: '6px', flexShrink: 0 }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '6px', marginRight: '4px' }}>
                  <div style={{ width: '20px', height: '20px', borderRadius: '5px', background: 'rgba(200,129,58,0.10)', border: '1px solid rgba(200,129,58,0.20)', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                    <MapPin size={9} color="var(--accent)" />
                  </div>
                  <span style={{ fontWeight: 500, fontSize: '14px', letterSpacing: '0.01em', color: S.t1, fontFamily: 'var(--font-display)' }}>
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
                    padding: '8px 10px',
                    border: `1px solid rgba(220,80,60,0.16)`,
                    borderTop: `2px solid ${p.color}55`,
                    display: 'flex', flexDirection: 'column', gap: '2px',
                    boxShadow: '0 4px 20px rgba(60,0,12,0.35), inset 0 1px 0 rgba(255,255,255,0.05)',
                  }}>
                    <span style={{ fontSize: '8px', fontWeight: 600, color: 'rgba(232,245,242,0.38)', textTransform: 'uppercase', letterSpacing: '0.12em', fontFamily: 'var(--font)' }}>{p.label}</span>
                    <span style={{ fontSize: '28px', lineHeight: 1, color: p.color, fontFamily: 'var(--font-dotmatrix)', letterSpacing: '0.04em', textShadow: `0 0 16px ${p.glow}` }}>{p.value}</span>
                  </div>
                ))}
              </div>

            </div>
          )}

          {/* Loading */}
          {selectedKans && loadingCbs && (
            <div style={{ display: 'flex', alignItems: 'center', gap: '10px', flex: 1 }}>
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
                <button onClick={() => { setSelectedKans(null); setSelectedCbs(null) }}
                  style={{ marginLeft: 'auto', fontSize: '14px', color: S.t4, background: 'none', border: 'none', cursor: 'pointer', lineHeight: 1, padding: '2px 4px', borderRadius: '4px' }}>✕</button>
              </div>
              <div ref={cbsKansRef} style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr 1fr', gap: '6px', flex: 1 }}>
                {([
                  { label: 'Leeftijd', Icon: Users,      gebied: `${Math.round(selectedCbs.cbs_leeftijd * 10) / 10}jr`, color: '#C2A46A', glow: 'rgba(194,164,106,0.18)', match: Math.abs(profiel.leeftijd - selectedCbs.cbs_leeftijd) <= 5 ? 'Goed' : Math.abs(profiel.leeftijd - selectedCbs.cbs_leeftijd) <= 10 ? 'Ok' : 'Ver' },
                  { label: 'Vrouwen',  Icon: TrendingUp, gebied: `${Math.round(selectedCbs.pct_vrouw * 10) / 10}%`, sub: `${Math.round((100 - selectedCbs.pct_vrouw) * 10) / 10}%`, color: '#B87888', glow: 'rgba(184,120,136,0.18)', match: Math.abs(profiel.pctVrouw - selectedCbs.pct_vrouw) <= 5 ? 'Goed' : Math.abs(profiel.pctVrouw - selectedCbs.pct_vrouw) <= 10 ? 'Ok' : 'Ver' },
                  { label: 'Koop',     Icon: Home,       gebied: `${Math.round(selectedCbs.pct_koop * 10) / 10}%`,      color: '#8878B8', glow: 'rgba(136,120,184,0.18)', match: Math.abs(profiel.pctKoop - selectedCbs.pct_koop) <= 10 ? 'Goed' : Math.abs(profiel.pctKoop - selectedCbs.pct_koop) <= 20 ? 'Ok' : 'Ver' },
                  { label: 'Inwoners', Icon: Building2,  gebied: (selectedKans.inwoners ?? 0) >= 1000 ? `${((selectedKans.inwoners ?? 0)/1000).toFixed(1)}K` : `${selectedKans.inwoners ?? 0}`, color: '#5888A8', glow: 'rgba(88,136,168,0.18)', match: 'Ok' as const },
                ] as { label: string; Icon: React.ElementType; gebied: string; color: string; glow: string; match: string }[]).map(cb => (
                  <div key={cb.label} data-cbs-card style={{
                    background: `linear-gradient(145deg, rgba(8,16,48,0.72), rgba(4,10,32,0.58))`,
                    backdropFilter: 'blur(18px)', WebkitBackdropFilter: 'blur(18px)',
                    borderRadius: 'var(--r-lg)',
                    border: `1px solid rgba(255,255,255,0.06)`,
                    borderTop: `1px solid ${cb.color}55`,
                    padding: '14px 16px',
                    boxShadow: `0 8px 32px rgba(0,0,40,0.45), inset 0 1px 0 rgba(255,255,255,0.04)`,
                    display: 'flex', flexDirection: 'column', justifyContent: 'space-between',
                  }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '6px', marginBottom: '12px' }}>
                      <cb.Icon size={12} color={cb.color} style={{ opacity: 0.7 }} />
                      <div style={{ fontSize: '9px', fontWeight: 600, color: 'rgba(200,220,240,0.50)', textTransform: 'uppercase', letterSpacing: '0.14em' }}>{cb.label}</div>
                    </div>
                    <div style={{ display: 'flex', flexDirection: 'column', gap: '10px' }}>
                      {'sub' in cb ? (
                        <div style={{ display: 'flex', flexDirection: 'column', gap: '4px' }}>
                          <div style={{ display: 'flex', alignItems: 'baseline', gap: '8px' }}>
                            <div style={{ fontSize: '24px', fontWeight: 300, color: 'rgba(140,170,210,0.80)', fontFamily: 'var(--font-mono)', lineHeight: 1, letterSpacing: '-0.02em' }}>{(cb as {sub: string}).sub}</div>
                            <div style={{ fontSize: '10px', color: 'rgba(200,220,240,0.45)', fontFamily: 'var(--font-mono)' }}>mannen</div>
                          </div>
                          <div style={{ display: 'flex', alignItems: 'baseline', gap: '8px' }}>
                            <div style={{ fontSize: '24px', fontWeight: 300, color: cb.color, fontFamily: 'var(--font-mono)', lineHeight: 1, letterSpacing: '-0.02em', textShadow: `0 0 24px ${cb.glow}` }}>{cb.gebied}</div>
                            <div style={{ fontSize: '10px', color: 'rgba(200,220,240,0.45)', fontFamily: 'var(--font-mono)' }}>vrouwen</div>
                          </div>
                        </div>
                      ) : (
                        <div style={{ fontSize: '30px', fontWeight: 300, color: cb.color, fontFamily: 'var(--font-mono)', lineHeight: 1, letterSpacing: '-0.02em', textShadow: `0 0 24px ${cb.glow}` }}>{cb.gebied}</div>
                      )}
                      <div style={{
                        padding: '3px 9px', borderRadius: '3px', fontSize: '9px', fontWeight: 600, whiteSpace: 'nowrap', alignSelf: 'flex-start',
                        letterSpacing: '0.06em', textTransform: 'uppercase',
                        background: cb.match === 'Goed' ? 'rgba(60,140,80,0.14)' : cb.match === 'Ok' ? 'rgba(180,140,60,0.14)' : 'rgba(180,70,60,0.14)',
                        color: cb.match === 'Goed' ? '#74C490' : cb.match === 'Ok' ? '#C0A060' : '#C07068',
                        border: `1px solid ${cb.match === 'Goed' ? 'rgba(60,140,80,0.25)' : cb.match === 'Ok' ? 'rgba(180,140,60,0.25)' : 'rgba(180,70,60,0.25)'}`,
                      }}>{cb.match === 'Goed' ? '✓ Goed' : cb.match === 'Ok' ? '~ Ok' : '✗ Ver'}</div>
                    </div>
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
                <button onClick={() => { setSelectedKans(null); setSelectedCbs(null) }}
                  style={{ marginLeft: 'auto', fontSize: '14px', color: S.t4, background: 'none', border: 'none', cursor: 'pointer' }}>✕</button>
              </div>
              <p style={{ fontSize: '11px', color: S.t2 }}>Geen CBS-data voor <strong style={{ color: S.t1, fontFamily: 'var(--font-mono)' }}>{selectedKans.postcode}</strong>.</p>
            </div>
          )}

          {/* Klant loading */}
          {selectedKlant && loadingKlantCbs && (
            <div style={{ display: 'flex', alignItems: 'center', gap: '10px', flex: 1 }}>
              <div className="ts-spinner" />
              <span style={{ fontSize: '12px', color: S.t3 }}>CBS data laden voor <span style={{ color: 'var(--accent-2)', fontFamily: 'var(--font-mono)' }}>{selectedKlant.postcode}</span>…</span>
            </div>
          )}

          {/* Klant CBS panel — 4 wide glassmorphism cards */}
          {selectedKlant && !loadingKlantCbs && selectedKlantCbs && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', height: '100%' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '7px', flexShrink: 0 }}>
                <div style={{ background: 'rgba(103,191,218,0.10)', border: '1px solid rgba(103,191,218,0.28)', borderRadius: 'var(--r-sm)', padding: '3px 10px', fontSize: '13px', fontWeight: 700, color: 'var(--accent-2)', fontFamily: 'var(--font-mono)' }}>
                  {selectedKlant.postcode}
                </div>
                {getStad(selectedKlant.postcode) && <span style={{ fontSize: '11px', fontWeight: 600, color: S.t2 }}>{getStad(selectedKlant.postcode)}</span>}
                <div style={{ background: S.bg3, borderRadius: 'var(--r-sm)', padding: '3px 8px', fontSize: '11px', fontWeight: 700, color: S.t3, border: `1px solid ${S.bdr}`, fontFamily: 'var(--font-mono)' }}>
                  {selectedKlant.klant_count} klanten{(selectedKlant.inwoners ?? 0) > 0 ? ` · ${((selectedKlant.klant_count / selectedKlant.inwoners!) * 100).toFixed(1)}% pen.` : ''}
                </div>
                <button onClick={() => { setSelectedKlant(null); setSelectedKlantCbs(null) }}
                  style={{ marginLeft: 'auto', fontSize: '14px', color: S.t4, background: 'none', border: 'none', cursor: 'pointer', lineHeight: 1, padding: '2px 4px', borderRadius: '4px' }}>✕</button>
              </div>
              <div ref={cbsKlantRef} style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr 1fr', gap: '6px', flex: 1 }}>
                {([
                  { label: 'Leeftijd', Icon: Users,      gebied: `${Math.round(selectedKlantCbs.cbs_leeftijd * 10) / 10}jr`, color: '#C2A46A', glow: 'rgba(194,164,106,0.18)', match: Math.abs(profiel.leeftijd - selectedKlantCbs.cbs_leeftijd) <= 5 ? 'Goed' : Math.abs(profiel.leeftijd - selectedKlantCbs.cbs_leeftijd) <= 10 ? 'Ok' : 'Ver' },
                  { label: 'Vrouwen',  Icon: TrendingUp, gebied: `${Math.round(selectedKlantCbs.pct_vrouw * 10) / 10}%`, sub: `${Math.round((100 - selectedKlantCbs.pct_vrouw) * 10) / 10}%`, color: '#B87888', glow: 'rgba(184,120,136,0.18)', match: Math.abs(profiel.pctVrouw - selectedKlantCbs.pct_vrouw) <= 5 ? 'Goed' : Math.abs(profiel.pctVrouw - selectedKlantCbs.pct_vrouw) <= 10 ? 'Ok' : 'Ver' },
                  { label: 'Koop',     Icon: Home,       gebied: `${Math.round(selectedKlantCbs.pct_koop * 10) / 10}%`,      color: '#8878B8', glow: 'rgba(136,120,184,0.18)', match: Math.abs(profiel.pctKoop - selectedKlantCbs.pct_koop) <= 10 ? 'Goed' : Math.abs(profiel.pctKoop - selectedKlantCbs.pct_koop) <= 20 ? 'Ok' : 'Ver' },
                  { label: 'Inwoners', Icon: Building2,  gebied: (selectedKlant.inwoners ?? 0) >= 1000 ? `${((selectedKlant.inwoners ?? 0)/1000).toFixed(1)}K` : `${selectedKlant.inwoners ?? 0}`, color: '#5888A8', glow: 'rgba(88,136,168,0.18)', match: 'Ok' as const },
                ] as { label: string; Icon: React.ElementType; gebied: string; color: string; glow: string; match: string }[]).map(cb => (
                  <div key={cb.label} data-cbs-card style={{
                    background: `linear-gradient(145deg, rgba(8,16,48,0.72), rgba(4,10,32,0.58))`,
                    backdropFilter: 'blur(18px)', WebkitBackdropFilter: 'blur(18px)',
                    borderRadius: 'var(--r-lg)',
                    border: `1px solid rgba(255,255,255,0.06)`,
                    borderTop: `1px solid ${cb.color}55`,
                    padding: '14px 16px',
                    boxShadow: `0 8px 32px rgba(0,0,40,0.45), inset 0 1px 0 rgba(255,255,255,0.04)`,
                    display: 'flex', flexDirection: 'column', justifyContent: 'space-between',
                  }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '6px', marginBottom: '12px' }}>
                      <cb.Icon size={12} color={cb.color} style={{ opacity: 0.7 }} />
                      <div style={{ fontSize: '9px', fontWeight: 600, color: 'rgba(200,220,240,0.50)', textTransform: 'uppercase', letterSpacing: '0.14em' }}>{cb.label}</div>
                    </div>
                    <div style={{ display: 'flex', flexDirection: 'column', gap: '10px' }}>
                      {'sub' in cb ? (
                        <div style={{ display: 'flex', flexDirection: 'column', gap: '4px' }}>
                          <div style={{ display: 'flex', alignItems: 'baseline', gap: '8px' }}>
                            <div style={{ fontSize: '24px', fontWeight: 300, color: 'rgba(140,170,210,0.80)', fontFamily: 'var(--font-mono)', lineHeight: 1, letterSpacing: '-0.02em' }}>{(cb as {sub: string}).sub}</div>
                            <div style={{ fontSize: '10px', color: 'rgba(200,220,240,0.45)', fontFamily: 'var(--font-mono)' }}>mannen</div>
                          </div>
                          <div style={{ display: 'flex', alignItems: 'baseline', gap: '8px' }}>
                            <div style={{ fontSize: '24px', fontWeight: 300, color: cb.color, fontFamily: 'var(--font-mono)', lineHeight: 1, letterSpacing: '-0.02em', textShadow: `0 0 24px ${cb.glow}` }}>{cb.gebied}</div>
                            <div style={{ fontSize: '10px', color: 'rgba(200,220,240,0.45)', fontFamily: 'var(--font-mono)' }}>vrouwen</div>
                          </div>
                        </div>
                      ) : (
                        <div style={{ fontSize: '30px', fontWeight: 300, color: cb.color, fontFamily: 'var(--font-mono)', lineHeight: 1, letterSpacing: '-0.02em', textShadow: `0 0 24px ${cb.glow}` }}>{cb.gebied}</div>
                      )}
                      <div style={{
                        padding: '3px 9px', borderRadius: '3px', fontSize: '9px', fontWeight: 600, whiteSpace: 'nowrap', alignSelf: 'flex-start',
                        letterSpacing: '0.06em', textTransform: 'uppercase',
                        background: cb.match === 'Goed' ? 'rgba(60,140,80,0.14)' : cb.match === 'Ok' ? 'rgba(180,140,60,0.14)' : 'rgba(180,70,60,0.14)',
                        color: cb.match === 'Goed' ? '#74C490' : cb.match === 'Ok' ? '#C0A060' : '#C07068',
                        border: `1px solid ${cb.match === 'Goed' ? 'rgba(60,140,80,0.25)' : cb.match === 'Ok' ? 'rgba(180,140,60,0.25)' : 'rgba(180,70,60,0.25)'}`,
                      }}>{cb.match === 'Goed' ? '✓ Goed' : cb.match === 'Ok' ? '~ Ok' : '✗ Ver'}</div>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* No CBS data — klant */}
          {selectedKlant && !loadingKlantCbs && !selectedKlantCbs && (
            <div style={{ flex: 1, display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '7px' }}>
                <div style={{ background: 'rgba(103,191,218,0.10)', border: '1px solid rgba(103,191,218,0.28)', borderRadius: 'var(--r-sm)', padding: '3px 10px', fontSize: '13px', fontWeight: 700, color: 'var(--accent-2)', fontFamily: 'var(--font-mono)' }}>{selectedKlant.postcode}</div>
                <button onClick={() => { setSelectedKlant(null); setSelectedKlantCbs(null) }}
                  style={{ marginLeft: 'auto', fontSize: '14px', color: S.t4, background: 'none', border: 'none', cursor: 'pointer' }}>✕</button>
              </div>
              <p style={{ fontSize: '11px', color: S.t2 }}>Geen CBS-data voor <strong style={{ color: 'var(--accent-2)', fontFamily: 'var(--font-mono)' }}>{selectedKlant.postcode}</strong>.</p>
            </div>
          )}
        </div>
      </div>

      {/* ══ TAB BAR ══ */}
      {(() => {
        const topKlant = klantGebieden[0]
        const topStad  = topKlant ? getStad(topKlant.postcode) : null
        return (
          <div style={{
            height: '56px', flexShrink: 0,
            display: 'flex', alignItems: 'stretch', justifyContent: 'space-between',
            borderBottom: `1px solid ${S.bdr}`,
            background: S.bg1,
          }}>
            <div style={{ display: 'flex', width: '100%' }}>
              {([
                { id: 'kaart',     label: 'Kaart',    Icon: MapIcon,     accent: 'var(--accent)' },
                { id: 'postcodes', label: 'Kansen',   Icon: LayoutList,  accent: 'var(--accent)' },
                { id: 'klanten',   label: 'Klanten',  Icon: Users,       accent: 'var(--accent-2)' },
              ] as { id: 'kaart'|'postcodes'|'klanten'; label: string; Icon: React.ElementType; accent: string }[]).map(({ id, label, Icon, accent }) => {
                const isActive = viewTab === id
                return (
                  <button key={id} onClick={() => setViewTab(id)} aria-label={`Tab: ${label}`} aria-pressed={isActive} style={{
                    flex: 1,
                    display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '8px',
                    padding: '0 24px', fontSize: '13px', fontWeight: 700,
                    border: 'none', cursor: 'pointer',
                    letterSpacing: '0.08em', textTransform: 'uppercase',
                    background: isActive ? 'rgba(255,255,255,0.04)' : 'transparent',
                    color: isActive ? S.t1 : S.t4,
                    fontFamily: 'var(--font)',
                    borderBottom: isActive ? `3px solid ${accent}` : '3px solid transparent',
                    transition: 'color 0.12s, border-color 0.12s, background 0.12s',
                    marginBottom: '-1px',
                  }}>
                    <Icon size={14} color={isActive ? accent : 'var(--t-4)'} />
                    {label}
                    {id === 'postcodes' && (
                      <span style={{ fontSize: '11px', fontWeight: 700, background: 'var(--accent-bg)', color: 'var(--accent)', borderRadius: '4px', padding: '2px 7px', marginLeft: '2px', fontFamily: 'var(--font-mono)' }}>
                        {topKansen.length}
                      </span>
                    )}
                    {id === 'klanten' && klantGebieden.length > 0 && (
                      <span style={{ fontSize: '11px', fontWeight: 700, background: 'rgba(103,191,218,0.10)', color: 'var(--accent-2)', borderRadius: '4px', padding: '2px 7px', marginLeft: '2px', fontFamily: 'var(--font-mono)' }}>
                        {klantGebieden.length}
                      </span>
                    )}
                  </button>
                )
              })}
            </div>
          </div>
        )
      })()}

      {/* ══ GEM. KLANTPROFIEL STRIP ══ */}
      {(() => {
        const refPc = matches[0]?.jouw_postcode
        const refStad = refPc ? getStad(refPc) : null
        const mannen = 100 - profiel.pctVrouw
        return (
          <div style={{
            flexShrink: 0,
            display: 'flex', alignItems: 'center', gap: '6px',
            padding: '5px 16px',
            borderBottom: `1px solid ${S.bdr}`,
            background: 'rgba(255,255,255,0.025)',
          }}>
            <span style={{ fontSize: '9px', fontWeight: 700, color: S.t4, textTransform: 'uppercase', letterSpacing: '0.12em', whiteSpace: 'nowrap' }}>Gem. klantprofiel</span>
            {refPc && (
              <div style={{ display: 'flex', alignItems: 'center', gap: '4px', marginLeft: '2px' }}>
                <span style={{ fontSize: '11px', fontWeight: 700, color: 'var(--accent)', fontFamily: 'var(--font-mono)' }}>{refPc}</span>
                {refStad && <span style={{ fontSize: '10px', color: S.t3 }}>{refStad}</span>}
              </div>
            )}
            <div style={{ width: '1px', height: '12px', background: S.bdr2, flexShrink: 0, margin: '0 2px' }} />
            {[
              { label: 'Leeftijd', value: `${profiel.leeftijd}jr`, color: '#C2A46A' },
              { label: 'Mannen',   value: `${mannen}%`,            color: 'rgba(140,170,210,0.80)' },
              { label: 'Vrouwen',  value: `${profiel.pctVrouw}%`,  color: '#B87888' },
              { label: 'Koop',     value: `${profiel.pctKoop}%`,   color: '#8878B8' },
            ].map((item, i) => (
              <React.Fragment key={item.label}>
                {i > 0 && <span style={{ fontSize: '10px', color: S.bdr2 }}>·</span>}
                <span style={{ fontSize: '9px', color: S.t4, letterSpacing: '0.06em' }}>{item.label}</span>
                <span style={{ fontSize: '11px', fontWeight: 700, color: item.color, fontFamily: 'var(--font-mono)' }}>{item.value}</span>
              </React.Fragment>
            ))}
          </div>
        )
      })()}

      {/* ══════════════════════════════════════════
          MAP + SIDE PANEL
      ══════════════════════════════════════════ */}
      <div style={{ flex: 1, display: 'flex', flexDirection: 'column', overflow: 'hidden' }}>

        {/* ══ POSTCODES TAB ══ */}
        {viewTab === 'postcodes' && (
          <div style={{ flex: 1, overflowY: 'auto', background: 'transparent', padding: '12px 12px', display: 'flex', flexDirection: 'column', gap: '8px' }}>

            {/* Koptekst */}
            <div style={{ display: 'flex', alignItems: 'center', gap: '10px', flexShrink: 0 }}>
              <div style={{ width: '6px', height: '6px', borderRadius: '50%', background: 'var(--accent)', opacity: 0.85, flexShrink: 0 }} />
              <span style={{ fontSize: '12px', fontWeight: 700, color: S.t1, letterSpacing: '0.04em', textTransform: 'uppercase' }}>Kansen · CBS-profiel match</span>
              <span style={{ fontSize: '11px', color: S.t4, fontStyle: 'italic' }}>leeftijd · %vrouw · %koop · inwoners</span>
              <span style={{ fontSize: '10px', fontWeight: 700, background: 'var(--accent-bg)', color: 'var(--accent)', borderRadius: '3px', padding: '2px 8px', fontFamily: 'var(--font-mono)', marginLeft: 'auto' }}>{topKansen.length} kansen</span>
            </div>

            {/* Table header with sort */}
            <div style={{ display: 'grid', gridTemplateColumns: '40px 180px 180px 120px 1fr', gap: '0', alignItems: 'center', padding: '0 16px', flexShrink: 0 }}>
              {([
                { key: null,        label: '#' },
                { key: 'postcode',  label: 'Postcode' },
                { key: 'score',     label: 'Score' },
                { key: 'pen',       label: 'Penetratie' },
                { key: null,        label: 'Dichtstbij klantgebied' },
              ] as { key: 'score'|'postcode'|'pen'|null; label: string }[]).map(h => (
                <span key={h.label}
                  onClick={() => h.key && handleKansenSort(h.key)}
                  style={{
                    fontSize: '10px', fontWeight: 700, color: h.key && kansenSort === h.key ? 'var(--accent)' : S.t4,
                    textTransform: 'uppercase', letterSpacing: '0.10em', padding: '0 4px',
                    cursor: h.key ? 'pointer' : 'default',
                    display: 'flex', alignItems: 'center', gap: '3px',
                  }}>
                  {h.label}
                  {h.key && kansenSort === h.key && <span style={{ color: 'var(--accent)' }}>{kansenSortDir === 'desc' ? '▼' : '▲'}</span>}
                </span>
              ))}
            </div>

            {/* Rows */}
            <div ref={kansenRowsRef} style={{ display: 'flex', flexDirection: 'column', gap: '2px' }}>
              {topKansen.map((k, i) => {
                const kc           = kansColor(k.score)
                const stad         = getStad(k.postcode)
                const isSelected   = selectedKans?.postcode === k.postcode
                const klantCount   = klantCountByPostcode.get(k.postcode) ?? 0
                const penPct       = k.inwoners > 0 ? Math.round(klantCount / k.inwoners * 100) : 0
                const nearestKlant = getNearestKlantGebied(k)
                const nkStad       = nearestKlant ? getStad(nearestKlant.postcode) : null
                return (
                  <div key={k.postcode}
                    onClick={() => handleSelectKans(k)}
                    style={{
                      display: 'grid', gridTemplateColumns: '40px 180px 180px 120px 1fr',
                      alignItems: 'center', gap: '0',
                      background: isSelected ? `${kc}18` : 'rgba(30,0,8,0.45)',
                      border: `1px solid ${isSelected ? kc + '40' : 'rgba(220,80,60,0.12)'}`,
                      borderLeft: `3px solid ${isSelected ? kc : 'transparent'}`,
                      borderRadius: 'var(--r-md)',
                      padding: '13px 16px',
                      cursor: 'pointer',
                      transition: 'background 0.1s, border-color 0.1s',
                      boxShadow: isSelected ? `0 0 16px ${kc}18` : 'none',
                    }}>
                    {/* Rank */}
                    <span style={{ fontSize: '12px', fontWeight: 700, color: S.t4, fontFamily: 'var(--font-mono)' }}>{i + 1}</span>

                    {/* Postcode + stad */}
                    <div style={{ display: 'flex', flexDirection: 'column', gap: '3px', padding: '0 4px' }}>
                      <span style={{ fontSize: '18px', fontWeight: 700, color: isSelected ? kc : S.t1, fontFamily: 'var(--font-mono)', letterSpacing: '-0.01em', lineHeight: 1 }}>{k.postcode}</span>
                      {stad && <span style={{ fontSize: '12px', color: S.t4, lineHeight: 1 }}>{stad}</span>}
                    </div>

                    {/* Score bar */}
                    <div style={{ padding: '0 8px', display: 'flex', alignItems: 'center', gap: '10px' }}>
                      <div style={{ flex: 1, height: '6px', background: S.bdr2, borderRadius: '3px', overflow: 'hidden' }}>
                        <div className="ts-score-bar" data-target={k.score} style={{ height: '100%', background: `linear-gradient(90deg, ${kc}80, ${kc})`, borderRadius: '3px', boxShadow: isSelected ? `0 0 8px ${kc}` : 'none' }} />
                      </div>
                      <span style={{ fontSize: '15px', fontWeight: 700, color: kc, width: '30px', textAlign: 'right', flexShrink: 0, fontFamily: 'var(--font-mono)' }}>{k.score}</span>
                    </div>

                    {/* Penetratie */}
                    <div style={{ padding: '0 4px', display: 'flex', flexDirection: 'column', gap: '4px' }}>
                      <div style={{ display: 'flex', alignItems: 'center', gap: '6px' }}>
                        <div style={{ width: '44px', height: '4px', background: S.bdr2, borderRadius: '2px', overflow: 'hidden', flexShrink: 0 }}>
                          <div style={{ height: '100%', width: `${penPct}%`, background: penPct >= 50 ? '#D44030' : penPct >= 20 ? '#C48830' : '#B8A440', borderRadius: '2px' }} />
                        </div>
                        <span style={{ fontSize: '13px', fontWeight: 700, color: penPct >= 50 ? '#D44030' : penPct >= 20 ? '#C48830' : S.t3, fontFamily: 'var(--font-mono)' }}>
                          {penPct}%
                        </span>
                      </div>
                      {klantCount > 0 && (
                        <span style={{ fontSize: '11px', color: S.t4 }}>{klantCount} klanten</span>
                      )}
                    </div>

                    {/* Dichtstbij klantgebied */}
                    <div style={{ padding: '0 4px' }}>
                      {nearestKlant ? (
                        <div style={{ display: 'flex', flexDirection: 'column', gap: '3px' }}>
                          <div style={{ display: 'flex', alignItems: 'center', gap: '6px', flexWrap: 'wrap' }}>
                            <span style={{ fontSize: '15px', fontWeight: 700, color: 'var(--accent-2)', fontFamily: 'var(--font-mono)' }}>
                              {nearestKlant.postcode}
                            </span>
                            {nkStad && (
                              <span style={{ fontSize: '12px', color: S.t2, fontWeight: 500 }}>{nkStad}</span>
                            )}
                          </div>
                          <span style={{ fontSize: '11px', color: S.t4 }}>
                            {nearestKlant.klant_count} klanten{(nearestKlant.inwoners ?? 0) > 0 ? ` · ${Math.round(nearestKlant.klant_count / nearestKlant.inwoners! * 100)}% pen.` : ''}
                          </span>
                        </div>
                      ) : <span style={{ color: S.t4, fontSize: '12px' }}>·</span>}
                    </div>
                  </div>
                )
              })}
            </div>

            <div style={{ fontSize: '9px', color: S.t4, paddingTop: '4px', lineHeight: 1.6, letterSpacing: '0.02em' }}>
              Score = CBS-match op klantprofiel (leeftijd 15% · %vrouw 5% · %koop 20%) · Penetratie = klanten / inwoners
            </div>
          </div>
        )}

        {/* ══ KLANTEN TAB ══ */}
        {viewTab === 'klanten' && (
          <div style={{ flex: 1, overflowY: 'auto', background: 'transparent', padding: '12px 12px', display: 'flex', flexDirection: 'column', gap: '8px' }}>
            {/* Koptekst + zoek */}
            <div style={{ display: 'flex', alignItems: 'center', gap: '10px', flexShrink: 0 }}>
              <div style={{ width: '5px', height: '5px', borderRadius: '50%', background: 'var(--accent-2)', opacity: 0.85, flexShrink: 0 }} />
              <span style={{ fontSize: '11px', fontWeight: 700, color: S.t1, letterSpacing: '0.04em', textTransform: 'uppercase' }}>Klanten</span>
              <div style={{ flex: 1, position: 'relative' }}>
                <input
                  type="text"
                  placeholder="Zoek op postcode of stad…"
                  value={klantSearch}
                  onChange={e => setKlantSearch(e.target.value)}
                  style={{
                    width: '100%', boxSizing: 'border-box',
                    background: S.bg3, border: `1px solid ${S.bdr}`, borderRadius: 'var(--r-sm)',
                    padding: '5px 28px 5px 10px', fontSize: '11px', color: S.t1,
                    fontFamily: 'var(--font)', outline: 'none',
                    transition: 'border-color 0.15s',
                  }}
                  onFocus={e => (e.target.style.borderColor = 'var(--accent-2)')}
                  onBlur={e => (e.target.style.borderColor = S.bdr)}
                />
                {klantSearch && (
                  <button onClick={() => setKlantSearch('')} style={{
                    position: 'absolute', right: '6px', top: '50%', transform: 'translateY(-50%)',
                    background: 'none', border: 'none', cursor: 'pointer', color: S.t4, fontSize: '12px', lineHeight: 1, padding: '2px',
                  }}>✕</button>
                )}
              </div>
              <span style={{ fontSize: '9px', fontWeight: 700, background: 'rgba(103,191,218,0.10)', color: 'var(--accent-2)', borderRadius: '3px', padding: '2px 7px', fontFamily: 'var(--font-mono)', flexShrink: 0 }}>
                {sortedKlanten.length}{klantSearch ? `/${klantGebieden.length}` : ''}
              </span>
            </div>

            {/* KPI cards */}
            {klantGebieden.length > 0 && (
                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '6px', flexShrink: 0 }}>
                  {[
                    { label: 'Totaal klanten',  value: String(kpiDisplay.total),    color: '#52C4E8', glow: 'rgba(82,196,232,0.20)' },
                    { label: 'Klantgebieden',   value: String(kpiDisplay.gebieden), color: '#4AB0D8', glow: 'rgba(74,176,216,0.18)' },
                    { label: 'Gem. penetratie', value: `${kpiDisplay.pen}%`,        color: '#8FD44C', glow: 'rgba(143,212,76,0.18)'  },
                  ].map(s => (
                    <div key={s.label} style={{
                      background: 'rgba(0,16,70,0.50)',
                      backdropFilter: 'blur(16px)',
                      WebkitBackdropFilter: 'blur(16px)',
                      borderRadius: 'var(--r-md)',
                      border: `1px solid rgba(82,180,212,0.18)`,
                      borderTop: `2px solid ${s.color}60`,
                      padding: '8px 12px',
                      display: 'flex', alignItems: 'center', gap: '10px',
                      boxShadow: `0 4px 16px rgba(0,0,60,0.30)`,
                    }}>
                      <div style={{ fontSize: '24px', lineHeight: 1, color: s.color, fontFamily: 'var(--font-dotmatrix)', letterSpacing: '0.04em', textShadow: `0 0 14px ${s.glow}` }}>{s.value}</div>
                      <div style={{ fontSize: '8px', color: 'rgba(232,245,242,0.45)', textTransform: 'uppercase', letterSpacing: '0.12em', fontFamily: 'var(--font)' }}>{s.label}</div>
                    </div>
                  ))}
                </div>
            )}

            {/* Table header with sort */}
            <div style={{ display: 'grid', gridTemplateColumns: '40px 220px 130px 140px 100px 100px 100px 100px 100px', gap: '0', alignItems: 'center', padding: '0 16px', flexShrink: 0 }}>
              {([
                { key: null,        label: '#' },
                { key: 'postcode',  label: 'Postcode' },
                { key: 'klanten',   label: 'Klanten' },
                { key: 'pen',       label: 'Penetratie' },
                { key: 'leeftijd',  label: 'Leeftijd' },
                { key: 'man',       label: '%Man' },
                { key: 'vrouw',     label: '%Vrouw' },
                { key: 'koop',      label: '%Koop' },
                { key: null,        label: 'Inwoners' },
              ] as { key: 'klanten'|'pen'|'postcode'|'leeftijd'|'man'|'vrouw'|'koop'|null; label: string }[]).map(h => (
                <span key={h.label}
                  onClick={() => h.key && handleKlantSort(h.key)}
                  style={{
                    fontSize: '10px', fontWeight: 700,
                    color: h.key && klantSort === h.key ? 'var(--accent-2)' : S.t4,
                    textTransform: 'uppercase', letterSpacing: '0.08em', padding: '0 4px',
                    cursor: h.key ? 'pointer' : 'default',
                    display: 'flex', alignItems: 'center', gap: '3px',
                  }}>
                  {h.label}
                  {h.key && klantSort === h.key && <span style={{ color: 'var(--accent-2)' }}>{klantSortDir === 'desc' ? '▼' : '▲'}</span>}
                </span>
              ))}
            </div>

            {/* Rows */}
            <div style={{ display: 'flex', flexDirection: 'column', gap: '2px' }}>
              {sortedKlanten.map((k, i) => {
                const stad   = getStad(k.postcode)
                const pen    = (k.inwoners ?? 0) > 0 ? k.klant_count / k.inwoners! * 100 : 0
                const penStr = (k.inwoners ?? 0) > 0 ? pen.toFixed(1) + '%' : '—'
                const penRatio = (k.inwoners ?? 0) > 0 ? k.klant_count / k.inwoners! : 0
                const pct    = klantSort === 'pen'
                  ? Math.round(penRatio / maxKlantPen * 100)
                  : Math.round(k.klant_count / maxKlantCount * 100)
                const bc     = pct >= 80 ? '#67BFDA' : pct >= 50 ? '#4A9AB0' : pct >= 25 ? '#2D7490' : '#1A5068'
                const penColor = pen >= 5 ? '#D44030' : pen >= 2 ? '#C48830' : pen >= 1 ? '#B8A440' : S.t4
                const isKlantSelected = selectedKlant?.postcode === k.postcode
                return (
                  <div key={k.postcode}
                    onClick={() => handleSelectKlant(k)}
                    style={{
                      display: 'grid', gridTemplateColumns: '40px 220px 130px 140px 100px 100px 100px 100px 100px',
                      alignItems: 'center', gap: '0',
                      background: isKlantSelected ? 'rgba(0,40,120,0.45)' : 'rgba(0,12,60,0.40)',
                      border: `1px solid ${isKlantSelected ? 'rgba(103,191,218,0.30)' : 'rgba(82,140,212,0.12)'}`,
                      borderLeft: `3px solid ${isKlantSelected ? 'var(--accent-2)' : bc}`,
                      borderRadius: 'var(--r-md)',
                      padding: '13px 16px',
                      cursor: 'pointer',
                      transition: 'background 0.1s, border-color 0.1s',
                    }}>
                    <span style={{ fontSize: '12px', fontWeight: 700, color: S.t4, fontFamily: 'var(--font-mono)' }}>{i + 1}</span>
                    <div style={{ display: 'flex', flexDirection: 'column', gap: '3px', padding: '0 4px' }}>
                      <span style={{ fontSize: '18px', fontWeight: 700, color: isKlantSelected ? 'var(--accent-2)' : S.t1, fontFamily: 'var(--font-mono)', letterSpacing: '-0.01em', lineHeight: 1 }}>{k.postcode}</span>
                      {stad && <span style={{ fontSize: '12px', color: S.t3, lineHeight: 1 }}>{stad}</span>}
                    </div>
                    <div style={{ padding: '0 4px' }}>
                      <span style={{ fontSize: '15px', fontWeight: 700, color: bc, fontFamily: 'var(--font-mono)' }}>{k.klant_count}</span>
                    </div>
                    <div style={{ padding: '0 4px' }}>
                      <span style={{ fontSize: '15px', fontWeight: 700, color: penColor, fontFamily: 'var(--font-mono)' }}>{penStr}</span>
                    </div>
                    {[
                      k.cbs_leeftijd != null ? `${Math.round(k.cbs_leeftijd * 10) / 10}jr` : '—',
                      k.pct_vrouw    != null ? `${Math.round((100 - k.pct_vrouw) * 10) / 10}%` : '—',
                      k.pct_vrouw    != null ? `${Math.round(k.pct_vrouw * 10) / 10}%` : '—',
                      k.pct_koop     != null ? `${Math.round(k.pct_koop * 10) / 10}%` : '—',
                      (k.inwoners ?? 0) >= 1000 ? `${((k.inwoners ?? 0)/1000).toFixed(1)}K` : `${k.inwoners ?? '—'}`,
                    ].map((val, ci) => (
                      <span key={ci} style={{ padding: '0 4px', fontSize: '14px', color: S.t2, fontFamily: 'var(--font-mono)', fontWeight: 600 }}>{val}</span>
                    ))}
                  </div>
                )
              })}
            </div>
          </div>
        )}

        <div style={{ flex: 1, overflow: 'hidden', display: viewTab === 'kaart' ? 'flex' : 'none' }}>

          {/* ── MAP ── */}
          <div style={{ flex: '0 0 65%', position: 'relative', overflow: 'hidden' }}>

            {/* Mode toggle — dark glassmorphism */}
            <div style={{
              position: 'absolute', top: '12px', left: '12px', zIndex: 500,
              display: 'flex', gap: '2px', padding: '3px',
              background: 'rgba(7,9,15,0.85)', backdropFilter: 'blur(16px)',
              borderRadius: 'var(--r-md)', border: `1px solid ${S.bdr2}`,
              boxShadow: 'var(--shadow-md)',
            }}>
              {([
                { id: 'kansen',  label: 'Kansen',  activeColor: 'var(--accent)', activeBg: 'var(--accent-bg)' },
                { id: 'klanten', label: 'Klanten', activeColor: 'var(--accent-2)', activeBg: 'rgba(103,191,218,0.10)' },
              ] as { id: HeatMode; label: string; activeColor: string; activeBg: string }[]).map(({ id, label, activeColor, activeBg }) => (
                <button key={id} onClick={() => {
                  setHeatMode(id)
                  setSelectedKans(null); setSelectedCbs(null)
                  setFlyTarget(overviewTarget)
                }} aria-label={`Kaartmodus: ${label}`} aria-pressed={heatMode === id} style={{
                  padding: '5px 14px', fontSize: '11px', fontWeight: 700,
                  border: 'none', cursor: 'pointer', borderRadius: 'var(--r-sm)',
                  background: heatMode === id ? activeBg : 'transparent',
                  color: heatMode === id ? activeColor : S.t4,
                  transition: 'all 0.15s ease',
                  fontFamily: 'var(--font)',
                  letterSpacing: '0.06em',
                  textTransform: 'uppercase' as const,
                  boxShadow: heatMode === id ? `0 0 10px ${activeColor}30` : 'none',
                }}>{label}</button>
              ))}
            </div>

            {/* Legend — dark glassmorphism */}
            <div style={{
              position: 'absolute', bottom: '28px', left: '12px', zIndex: 500,
              background: 'rgba(7,9,15,0.88)', backdropFilter: 'blur(16px)',
              borderRadius: 'var(--r-md)', border: `1px solid ${S.bdr2}`,
              boxShadow: 'var(--shadow-md)', padding: '10px 13px',
            }}>
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
              onSelectKans={handleSelectKans}
              onDeselectKans={() => { setSelectedKans(null); setSelectedCbs(null); setFlyTarget(null) }}
            />
          </div>

          {/* ── SIDE PANEL ── */}
          <div style={{ flex: '0 0 35%', borderLeft: `1px solid ${S.bdr}`, display: 'flex', flexDirection: 'column', overflow: 'hidden', background: S.bg1 }}>

            <div style={{ flex: 1, overflowY: 'auto', padding: '12px', display: 'flex', flexDirection: 'column', gap: '12px' }}>

              {heatMode === 'kansen' ? (
                <section>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '7px', marginBottom: '10px' }}>
                    <div style={{ width: '5px', height: '5px', borderRadius: '50%', background: 'var(--accent)', opacity: 0.85 }} />
                    <span className="ts-label">Kansen · {topKansen.length} gebieden</span>
                  </div>
                  <div style={{ display: 'flex', flexDirection: 'column', gap: '2px' }}>
                    {topKansen.map((k, i) => {
                      const kc         = kansColor(k.score)
                      const isSelected = selectedKans?.postcode === k.postcode
                      const stad       = getStad(k.postcode)
                      const pen        = k.inwoners > 0 ? Math.round((klantCountByPostcode.get(k.postcode) ?? 0) / k.inwoners * 100) : 0
                      return (
                        <div key={k.postcode} onClick={() => handleSelectKans(k)} style={{
                          background: isSelected ? `${kc}10` : S.bg2,
                          borderRadius: 'var(--r-md)',
                          border: `1px solid ${isSelected ? kc + '40' : S.bdr}`,
                          borderLeft: `3px solid ${isSelected ? kc : 'transparent'}`,
                          padding: '9px 12px',
                          display: 'flex', alignItems: 'center', gap: '8px',
                          cursor: 'pointer', transition: 'border-color 0.12s, background 0.12s',
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
                    <div style={{ display: 'flex', alignItems: 'center', gap: '7px', marginBottom: '10px' }}>
                      <div style={{ width: '5px', height: '5px', borderRadius: '50%', background: 'var(--accent-2)', opacity: 0.85 }} />
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
                          }} style={{
                            background: S.bg2, borderRadius: 'var(--r-md)',
                            border: `1px solid ${S.bdr}`, borderLeft: `3px solid ${bc}`,
                            padding: '9px 12px', display: 'flex', alignItems: 'center', gap: '9px',
                            cursor: klantCoords ? 'pointer' : 'default',
                            transition: 'background 0.12s',
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
            <div style={{ borderTop: `1px solid ${S.bdr}`, padding: '5px 14px', fontSize: '8px', color: S.t4, background: S.bg1, flexShrink: 0, letterSpacing: '0.12em', textTransform: 'uppercase', fontFamily: 'var(--font)' }}>
              TwinScale · CBS · Carto + OSM
            </div>
          </div>
        </div>

        {/* ══ GEM. KLANTPROFIEL ══ */}
        <div style={{
          flexShrink: 0, height: '60px',
          borderTop: `1px solid ${S.bdr}`,
          background: S.bg1,
          display: 'flex', alignItems: 'stretch',
        }}>
          <div style={{ display: 'flex', flexDirection: 'column', justifyContent: 'center', padding: '0 16px', borderRight: `1px solid ${S.bdr}`, flexShrink: 0, gap: '3px' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '5px' }}>
              <TrendingUp size={9} color="var(--t-4)" />
              <span className="ts-label">Klantprofiel</span>
            </div>
            <span style={{ fontSize: '9px', color: S.t4, fontFamily: 'var(--font-mono)' }}>{matches.length} areas</span>
          </div>
          {[
            { Icon: Users,     label: 'Leeftijd',   value: `${profiel.leeftijd} jr`,                                                                                           pct: Math.min(100,(profiel.leeftijd/70)*100),          color: '#C4A840' },
            { Icon: TrendingUp, label: 'Vrouwen',    value: `${profiel.pctVrouw}%`,                                                                                           pct: profiel.pctVrouw,                                 color: '#C87090' },
            { Icon: Home,       label: 'Koopwoning', value: `${profiel.pctKoop}%`,                                                                                            pct: profiel.pctKoop,                                  color: '#9B72CF' },
            { Icon: Building2,  label: 'Markt',      value: profiel.avgInwoners >= 1000 ? `${(profiel.avgInwoners/1000).toFixed(1)}K inw.` : `${profiel.avgInwoners} inw.`, pct: Math.min(100,(profiel.avgInwoners/15000)*100),    color: '#5BA4CF' },
          ].map(({ Icon, label, value, pct, color }) => (
            <div key={label} style={{ flex: 1, borderRight: `1px solid ${S.bdr}`, padding: '0 14px', display: 'flex', flexDirection: 'column', justifyContent: 'center', gap: '5px' }}>
              <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '4px' }}>
                  <Icon size={9} color="var(--t-4)" />
                  <span style={{ fontSize: '9px', color: S.t4, textTransform: 'uppercase', letterSpacing: '0.08em' }}>{label}</span>
                </div>
                <span style={{ fontSize: '13px', fontWeight: 700, color, letterSpacing: '-0.03em', fontFamily: 'var(--font-mono)' }}>{value}</span>
              </div>
              <div style={{ height: '2px', background: S.bdr2, borderRadius: '1px', overflow: 'hidden' }}>
                <div style={{ height: '100%', width: `${pct}%`, background: color, borderRadius: '1px' }} />
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}
