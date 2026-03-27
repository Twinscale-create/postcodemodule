'use client'

// SSR-safe wrapper — Three.js vereist browser
import dynamic from 'next/dynamic'

const KansenShaderInner = dynamic(
  () => import('./KansenShaderInner'),
  { ssr: false }
)

export default function KansenShader() {
  return <KansenShaderInner />
}
