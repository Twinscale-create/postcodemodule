'use client'

import { ShaderGradientCanvas, ShaderGradient } from '@shadergradient/react'

// Klanten tab — paars/grijs waterplane, uSpeed=0.1 (rustig)
const URL =
  'animate=on&brightness=1&cAzimuthAngle=180&cDistance=2.8&cPolarAngle=80' +
  '&cameraZoom=9.1&color1=%23606080&color2=%238d7dca&color3=%23212121' +
  '&destination=onCanvas&embedMode=off&envPreset=city&format=gif' +
  '&fov=45&frameRate=10&gizmoHelper=hide&grain=off&lightType=3d' +
  '&pixelDensity=1&positionX=0&positionY=0&positionZ=0' +
  '&range=disabled&rangeEnd=40&rangeStart=0&reflection=0.1' +
  '&rotationX=50&rotationY=0&rotationZ=-60&shader=defaults&type=waterPlane' +
  '&uAmplitude=0&uDensity=1.5&uFrequency=0&uSpeed=0.03&uStrength=1.5&uTime=8&wireframe=false'

export default function KlantenShaderInner() {
  return (
    <ShaderGradientCanvas
      style={{
        position: 'fixed',
        inset: 0,
        width: '100vw',
        height: '100vh',
        zIndex: -1,
        pointerEvents: 'none',
      }}
      pixelDensity={1}
      fov={45}
    >
      <ShaderGradient control="query" urlString={URL} />
    </ShaderGradientCanvas>
  )
}
