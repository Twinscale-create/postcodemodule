'use client'

import {
  BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer,
  Legend, RadarChart, Radar, PolarGrid, PolarAngleAxis, PolarRadiusAxis,
} from 'recharts'
import { useState } from 'react'
import { BarChart2, Activity } from 'lucide-react'
import { Match } from '@/types'

const PALETTE = ['#0071E3', '#30D158', '#FF9F0A', '#FF453A', '#BF5AF2']

function shortName(m: Match) {
  return `${m.stad.split(' ')[0].substring(0, 7)} ${m.postcode}`
}

function CustomTooltip({ active, payload, label }: {
  active?: boolean
  payload?: Array<{ name: string; value: number; color: string }>
  label?: string
}) {
  if (!active || !payload?.length) return null
  return (
    <div style={{
      background: 'var(--bg-primary)',
      border: '1px solid var(--border-ultralight)',
      borderRadius: 10,
      padding: '10px 14px',
      boxShadow: 'var(--shadow-large)',
      fontSize: 13,
    }}>
      <p style={{ fontWeight: 600, marginBottom: 6, color: 'var(--text-primary)' }}>{label}</p>
      {payload.map(p => (
        <div key={p.name} style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 3 }}>
          <div style={{ width: 8, height: 8, borderRadius: '50%', background: p.color }} />
          <span style={{ color: 'var(--text-secondary)', fontSize: 12 }}>{p.name}</span>
          <span style={{ fontWeight: 600, marginLeft: 'auto', paddingLeft: 16, color: 'var(--text-primary)' }}>
            {p.value.toLocaleString('nl-NL')}
          </span>
        </div>
      ))}
    </div>
  )
}

type ChartMode = 'bar' | 'radar'

export default function DemoChart({ matches }: { matches: Match[] }) {
  const [mode, setMode] = useState<ChartMode>('bar')

  if (!matches.length) return null
  const home = matches[0]

  const metrics = [
    { key: 'inkomen',  label: 'Inkomen (€K)', homeVal: Math.round(home.jouw_inkomen / 1000), getVal: (m: Match) => Math.round(m.cbs_inkomen / 1000) },
    { key: 'leeftijd', label: 'Leeftijd',     homeVal: home.jouw_leeftijd,                  getVal: (m: Match) => m.cbs_leeftijd },
    { key: 'vrouw',    label: '% Vrouw',       homeVal: home.jouw_pct_vrouw,                 getVal: (m: Match) => m.cbs_pct_vrouw },
    { key: 'hbo',      label: '% HBO+',        homeVal: 42,                                  getVal: (m: Match) => m.cbs_pct_hbo },
    { key: 'koop',     label: '% Koopwoning',  homeVal: 55,                                  getVal: (m: Match) => m.cbs_pct_koop },
  ]

  const barData = metrics.map(m => {
    const obj: Record<string, string | number> = { name: m.label, 'Jouw postcode': m.homeVal }
    matches.forEach(match => { obj[shortName(match)] = m.getVal(match) })
    return obj
  })

  const radarMetrics = [
    { key: 'score',    label: 'Match %',   getVal: (m: Match) => m.match_score },
    { key: 'inkomen',  label: 'Inkomen',   getVal: (m: Match) => Math.min(100, m.cbs_inkomen / 600) },
    { key: 'hbo',      label: '% HBO+',   getVal: (m: Match) => m.cbs_pct_hbo },
    { key: 'koop',     label: '% Koop',   getVal: (m: Match) => m.cbs_pct_koop },
    { key: 'vrouw',    label: '% Vrouw',  getVal: (m: Match) => m.cbs_pct_vrouw },
    { key: 'leeftijd', label: 'Leeftijd', getVal: (m: Match) => Math.min(100, m.cbs_leeftijd * 2.2) },
  ]

  const radarData = radarMetrics.map(rm => {
    const obj: Record<string, string | number> = { metric: rm.label }
    matches.forEach(m => { obj[shortName(m)] = rm.getVal(m) })
    return obj
  })

  const keys = matches.map(m => shortName(m))

  return (
    <div>
      {/* Header */}
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 20, flexWrap: 'wrap', gap: 12 }}>
        <div>
          <p className="ts-label">Demografisch Profiel</p>
          <p style={{ fontSize: 13, color: 'var(--text-secondary)', marginTop: 4 }}>
            Vergelijk jouw markt met de gevonden matches
          </p>
        </div>
        <div style={{ display: 'flex', gap: 6 }}>
          {[
            { id: 'bar',   Icon: BarChart2, label: 'Staafdiagram' },
            { id: 'radar', Icon: Activity,  label: 'Spinnenweb' },
          ].map(({ id, Icon, label }) => (
            <button
              key={id}
              onClick={() => setMode(id as ChartMode)}
              className={`ts-btn ts-btn-secondary${mode === id ? ' active' : ''}`}
              style={{ display: 'flex', alignItems: 'center', gap: 5 }}
            >
              <Icon size={13} />
              {label}
            </button>
          ))}
        </div>
      </div>

      {/* Chart */}
      {mode === 'bar' && (
        <ResponsiveContainer width="100%" height={240}>
          <BarChart data={barData} margin={{ top: 4, right: 4, bottom: 0, left: -16 }} barCategoryGap="32%">
            <CartesianGrid strokeDasharray="3 3" stroke="var(--border-ultralight)" vertical={false} />
            <XAxis dataKey="name" tick={{ fill: 'var(--text-secondary)', fontSize: 11 }} axisLine={false} tickLine={false} />
            <YAxis tick={{ fill: 'var(--text-secondary)', fontSize: 10 }} axisLine={false} tickLine={false} />
            <Tooltip content={<CustomTooltip />} cursor={{ fill: 'rgba(0,0,0,0.03)' }} />
            <Legend wrapperStyle={{ fontSize: 11, paddingTop: 12 }} />
            <Bar dataKey="Jouw postcode" fill={PALETTE[0]} radius={[3, 3, 0, 0]} opacity={0.85} />
            {keys.map((k, i) => (
              <Bar key={k} dataKey={k} fill={PALETTE[(i + 1) % PALETTE.length]} radius={[3, 3, 0, 0]} opacity={0.85} />
            ))}
          </BarChart>
        </ResponsiveContainer>
      )}

      {mode === 'radar' && (
        <ResponsiveContainer width="100%" height={240}>
          <RadarChart data={radarData} margin={{ top: 8, right: 24, bottom: 8, left: 24 }}>
            <PolarGrid stroke="var(--border-ultralight)" />
            <PolarAngleAxis dataKey="metric" tick={{ fill: 'var(--text-secondary)', fontSize: 11 }} />
            <PolarRadiusAxis angle={90} domain={[0, 100]} tick={{ fill: 'var(--text-tertiary)', fontSize: 9 }} />
            {keys.map((k, i) => (
              <Radar
                key={k} name={k} dataKey={k}
                stroke={PALETTE[i % PALETTE.length]}
                fill={PALETTE[i % PALETTE.length]}
                fillOpacity={0.08} strokeWidth={2}
              />
            ))}
            <Legend wrapperStyle={{ fontSize: 11, paddingTop: 8 }} />
            <Tooltip content={<CustomTooltip />} />
          </RadarChart>
        </ResponsiveContainer>
      )}

      {/* Quick comparison cards */}
      <div className="ts-divider" style={{ margin: '16px 0' }} />
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(140px, 1fr))', gap: 8 }}>
        {matches.slice(0, 3).map((match, i) => {
          const diff = match.cbs_inkomen - home.jouw_inkomen
          return (
            <div key={match.id} style={{
              background: 'var(--bg-primary)',
              border: '1px solid var(--border-ultralight)',
              borderRadius: 10,
              padding: '10px 12px',
            }}>
              <p style={{ fontSize: 11, color: 'var(--text-tertiary)', marginBottom: 4 }}>
                #{match.rank} {match.stad}
              </p>
              <p style={{ fontSize: 15, fontWeight: 700, color: PALETTE[i % PALETTE.length] }}>
                {match.match_score}% match
              </p>
              <p style={{ fontSize: 11, color: 'var(--text-tertiary)', marginTop: 3 }}>
                Inkomen {diff >= 0 ? '+' : ''}{Math.round(diff / 1000)}K vs jou
              </p>
            </div>
          )
        })}
      </div>
    </div>
  )
}
