'use client'

// SSR-safe wrapper — Three.js vereist browser
import dynamic from 'next/dynamic'

const KlantenShaderInner = dynamic(
  () => import('./KlantenShaderInner'),
  { ssr: false }
)

export default function KlantenShader() {
  return <KlantenShaderInner />
}
