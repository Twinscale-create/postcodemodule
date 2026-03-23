'use client'

import { useState } from 'react'
import { MapPin, Users, Wallet, GraduationCap, Home, ChevronDown, ChevronUp, Star, Check } from 'lucide-react'
import { Match } from '@/types'

function getScoreColor(score: number): string {
  if (score >= 85) return 'var(--accent-green)'
  if (score >= 70) return '#FF9F0A'
  return 'var(--accent-red)'
}

function getScoreBadgeClass(score: number): string {
  if (score >= 85) return 'score-badge score-green'
  if (score >= 70) return 'score-badge score-yellow'
  return 'score-badge score-red'
}

function getScoreLabel(score: number): string {
  if (score >= 90) return 'Uitstekend'
  if (score >= 85) return 'Zeer goed'
  if (score >= 75) return 'Goed'
  if (score >= 70) return 'Matig'
  return 'Laag'
}

function getSimilarities(match: Match): string[] {
  const items: string[] = []
  if (Math.abs(match.cbs_leeftijd - match.jouw_leeftijd) <= 3) items.push('Vergelijkbare leeftijd')
  if (Math.abs(match.cbs_inkomen - match.jouw_inkomen) / match.jouw_inkomen < 0.2) items.push('Vergelijkbaar inkomen')
  if (Math.abs(match.cbs_pct_vrouw - match.jouw_pct_vrouw) <= 10) items.push(`${match.cbs_pct_vrouw}% vrouw`)
  if (match.cbs_pct_hbo >= 45) items.push(`${match.cbs_pct_hbo}% HBO+`)
  return items.slice(0, 3)
}

interface MatchItemProps {
  match: Match
  selected: boolean
  onSelect: () => void
  delay: number
}

function MatchItem({ match, selected, onSelect, delay }: MatchItemProps) {
  const color = getScoreColor(match.match_score)
  const similarities = getSimilarities(match)

  return (
    <div
      onClick={onSelect}
      className={`match-item${selected ? ' active' : ''}`}
      style={{
        animationDelay: `${delay}ms`,
        animation: 'fadeUp 0.35s ease both',
      }}
    >
      {/* Header row */}
      <div style={{ display: 'flex', alignItems: 'center', gap: 12 }}>
        {/* Rank */}
        <div style={{
          width: 32, height: 32, borderRadius: 8,
          background: selected ? color + '15' : 'var(--border-ultralight)',
          border: `1px solid ${selected ? color + '30' : 'var(--border-ultralight)'}`,
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          flexShrink: 0, fontSize: 13, fontWeight: 700,
          color: selected ? color : 'var(--text-secondary)',
          transition: 'all 0.2s',
        }}>
          {match.rank}
        </div>

        {/* Location info */}
        <div style={{ flex: 1, minWidth: 0 }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: 6, flexWrap: 'wrap' }}>
            <span style={{ fontWeight: 600, fontSize: 14, color: 'var(--text-primary)' }}>
              {match.stad}
            </span>
            <span style={{ fontSize: 12, color: 'var(--text-tertiary)' }}>
              {match.wijk}
            </span>
            <span className="score-badge score-blue" style={{ fontSize: 10, padding: '1px 6px' }}>
              {match.postcode}
            </span>
          </div>

          {/* Score bar */}
          <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginTop: 6 }}>
            <div className="score-bar-track" style={{ flex: 1 }}>
              <div
                className="score-bar-fill"
                style={{ width: `${match.match_score}%`, background: color }}
              />
            </div>
            <span className={getScoreBadgeClass(match.match_score)}>
              {match.match_score}%
            </span>
          </div>
        </div>

        {/* Chevron */}
        <div style={{ color: 'var(--text-tertiary)', flexShrink: 0 }}>
          {selected ? <ChevronUp size={16} /> : <ChevronDown size={16} />}
        </div>
      </div>

      {/* Expanded details */}
      {selected && (
        <div style={{ marginTop: 16, paddingTop: 16, borderTop: '1px solid var(--border-ultralight)' }}>
          {/* Stats grid */}
          <div style={{
            display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: 8, marginBottom: 14,
          }}>
            {[
              { Icon: Users,        label: 'Inwoners',    value: match.inwoners.toLocaleString('nl-NL') },
              { Icon: Wallet,       label: 'Inkomen',     value: `€${(match.cbs_inkomen/1000).toFixed(0)}K` },
              { Icon: GraduationCap,label: 'HBO+',        value: `${match.cbs_pct_hbo}%` },
              { Icon: Home,         label: 'Koopwoning',  value: `${match.cbs_pct_koop}%` },
              { Icon: MapPin,       label: 'Leeftijd',    value: `${match.cbs_leeftijd} jr` },
              { Icon: Users,        label: 'Vrouw',       value: `${match.cbs_pct_vrouw}%` },
            ].map((item, i) => (
              <div key={i} style={{
                background: 'var(--bg-primary)',
                borderRadius: 8, padding: '8px 10px',
                border: '1px solid var(--border-ultralight)',
              }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: 4, marginBottom: 3 }}>
                  <item.Icon size={11} color="var(--text-tertiary)" />
                  <span style={{ fontSize: 10, color: 'var(--text-tertiary)', fontWeight: 500, textTransform: 'uppercase', letterSpacing: '0.04em' }}>
                    {item.label}
                  </span>
                </div>
                <div style={{ fontSize: 14, fontWeight: 600, color: 'var(--text-primary)' }}>
                  {item.value}
                </div>
              </div>
            ))}
          </div>

          {/* Similarities */}
          {similarities.length > 0 && (
            <div>
              <p style={{ fontSize: 11, color: 'var(--text-tertiary)', marginBottom: 6, fontWeight: 500, textTransform: 'uppercase', letterSpacing: '0.06em' }}>
                Overeenkomsten
              </p>
              <div style={{ display: 'flex', flexDirection: 'column', gap: 4 }}>
                {similarities.map((s, i) => (
                  <div key={i} style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
                    <Check size={12} color="var(--accent-green)" strokeWidth={2.5} />
                    <span style={{ fontSize: 12, color: 'var(--text-secondary)' }}>{s}</span>
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>
      )}
    </div>
  )
}

interface MatchesListProps {
  matches: Match[]
}

export default function MatchesList({ matches }: MatchesListProps) {
  const [selected, setSelected] = useState<number | null>(matches[0]?.id ?? null)

  return (
    <div>
      {/* Header */}
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 16 }}>
        <div>
          <p className="ts-label">Top {matches.length} Matches</p>
          <p style={{ fontSize: 12, color: 'var(--text-tertiary)', marginTop: 2 }}>
            Klik voor details
          </p>
        </div>
        <Star size={16} color="var(--text-tertiary)" />
      </div>

      {/* Match items */}
      <div style={{ display: 'flex', flexDirection: 'column', gap: 4 }}>
        {matches.map((match, i) => (
          <MatchItem
            key={match.id}
            match={match}
            selected={selected === match.id}
            onSelect={() => setSelected(selected === match.id ? null : match.id)}
            delay={i * 60}
          />
        ))}
      </div>

      {/* Legend */}
      <div className="ts-divider" style={{ margin: '16px 0' }} />
      <div style={{ display: 'flex', gap: 16, flexWrap: 'wrap' }}>
        {[
          { c: 'var(--accent-green)', l: '≥ 85% uitstekend' },
          { c: '#FF9F0A',             l: '70–84% goed' },
          { c: 'var(--accent-red)',   l: '< 70% laag' },
        ].map(item => (
          <div key={item.l} style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
            <div style={{ width: 8, height: 8, borderRadius: '50%', background: item.c }} />
            <span style={{ fontSize: 11, color: 'var(--text-tertiary)' }}>{item.l}</span>
          </div>
        ))}
      </div>
    </div>
  )
}
