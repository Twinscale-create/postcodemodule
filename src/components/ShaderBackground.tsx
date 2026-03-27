'use client'

// SSR-safe wrapper — Three.js vereist browser
import dynamic from 'next/dynamic'

const ShaderGradientInner = dynamic(
  () => import('./ShaderGradientInner'),
  { ssr: false }
)

export default function ShaderBackground() {
  return <ShaderGradientInner />
}
