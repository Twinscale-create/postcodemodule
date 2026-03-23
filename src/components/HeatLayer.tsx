'use client'

import { useEffect, useRef } from 'react'
import { useMap } from 'react-leaflet'
import L from 'leaflet'

type HeatPoint = [number, number, number]

interface HeatLayerProps {
  points: HeatPoint[]
  radius?: number
  blur?: number
  max?: number
  minOpacity?: number
  gradient?: Record<string, string>
}

export default function HeatLayer({
  points,
  radius = 40,
  blur = 25,
  max = 1.0,
  minOpacity = 0.4,
  gradient,
}: HeatLayerProps) {
  const map = useMap()
  const layerRef = useRef<L.Layer | null>(null)

  useEffect(() => {
    let mounted = true

    async function init() {
      await import('leaflet.heat')
      if (!mounted) return

      // Remove previous layer
      if (layerRef.current) {
        map.removeLayer(layerRef.current)
      }

      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      const heat = (L as any).heatLayer(points, {
        radius,
        blur,
        max,
        minOpacity,
        gradient: gradient ?? {
          0.0: '#0000ff',
          0.3: '#00ffff',
          0.5: '#00ff00',
          0.7: '#ffff00',
          1.0: '#ff0000',
        },
      })

      heat.addTo(map)
      layerRef.current = heat
    }

    init()

    return () => {
      mounted = false
      if (layerRef.current) {
        map.removeLayer(layerRef.current)
        layerRef.current = null
      }
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [map, JSON.stringify(points), radius, blur, max, minOpacity, JSON.stringify(gradient)])

  return null
}
