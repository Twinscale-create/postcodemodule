'use client'

import { useEffect, useRef, useState } from 'react'
import type { LucideIcon } from 'lucide-react'

interface KPICardProps {
  label: string
  value: string
  sub?: string
  Icon: LucideIcon
  iconColor?: string
  animate?: boolean
  numericValue?: number
  delay?: number
  accentColor?: string
}

export default function KPICard({
  label, value, sub, Icon, iconColor, animate, numericValue, delay = 0, accentColor,
}: KPICardProps) {
  const [display, setDisplay] = useState(animate ? '0' : value)
  const [visible, setVisible] = useState(false)

  useEffect(() => {
    const t = setTimeout(() => setVisible(true), delay)
    return () => clearTimeout(t)
  }, [delay])

  useEffect(() => {
    if (!animate || !numericValue || !visible) return
    const duration = 1400
    const start = Date.now()
    const tick = () => {
      const progress = Math.min((Date.now() - start) / duration, 1)
      const eased = 1 - Math.pow(1 - progress, 3)
      const val = Math.round(eased * numericValue)
      setDisplay(val.toLocaleString('nl-NL'))
      if (progress < 1) requestAnimationFrame(tick)
    }
    requestAnimationFrame(tick)
  }, [animate, numericValue, visible])

  return (
    <div
      className="ts-card"
      style={{
        opacity: visible ? 1 : 0,
        transform: visible ? 'translateY(0)' : 'translateY(12px)',
        transition: `opacity 0.4s ease ${delay}ms, transform 0.4s ease ${delay}ms, box-shadow 0.25s ease`,
      }}
    >
      <div style={{ display: 'flex', alignItems: 'flex-start', justifyContent: 'space-between', gap: 12 }}>
        <div style={{ flex: 1, minWidth: 0 }}>
          <p className="ts-label" style={{ marginBottom: 8 }}>{label}</p>
          <p className="ts-value" style={{ color: accentColor || 'var(--text-primary)' }}>
            {animate ? display : value}
          </p>
          {sub && (
            <p style={{ fontSize: 12, color: 'var(--text-tertiary)', marginTop: 4 }}>{sub}</p>
          )}
        </div>
        <div style={{
          width: 40, height: 40, borderRadius: 10,
          background: iconColor ? `${iconColor}12` : 'var(--border-ultralight)',
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          flexShrink: 0,
          border: `1px solid ${iconColor ? `${iconColor}20` : 'var(--border-ultralight)'}`,
        }}>
          <Icon size={18} color={iconColor || 'var(--text-secondary)'} strokeWidth={1.8} />
        </div>
      </div>
    </div>
  )
}
