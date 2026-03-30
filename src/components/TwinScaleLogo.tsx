'use client'

// Beeldmerk-only (geen tekst) — viewBox omsluit alleen het symbool (x 24–122, y 21–119)
const MARK_PATHS = [
  "M118.3,21.9c.2,1.4,2.1,3.2,2.4,4.4s0,.4-.2.6c-.4.4-4,2.3-4.9,2.7-3.8,1.9-8.1,3.6-12.1,5s-4.2,1.1-4.3,1.5v68.4c0,.2,0,.5.2.7.4.3,3.4.9,4.1,1.2,4,1.4,8.3,3.1,12.1,5s4.5,2.3,4.9,2.7.3.3.2.6c-.3,1.2-2.2,3-2.4,4.4-3.6-1.7-7.1-3.7-10.9-5.2-21.9-9-46.3-9-68.2,0-3.7,1.5-7.2,3.5-10.9,5.2-.2-1.4-2.1-3.2-2.4-4.4s0-.5.2-.6c5.3-3,10.9-5.5,16.6-7.5s4.1-1.1,4.4-1.3.2-.4.2-.7V36s-.4-.3-.4-.3c-7.3-2-14.3-5.1-20.9-8.8-.2-.2-.3-.3-.2-.6.3-1.2,2.2-3,2.4-4.4,3.6,1.7,7.1,3.7,10.9,5.2,21.9,9,46.3,9,68.2,0s7.2-3.5,10.9-5.2ZM93.7,37.2c-13.3,3-27.4,3-40.7,0v66.4c13.4-3,27.4-3,40.7,0V37.2Z",
  "M121.8,115.4c-1.4.2-3.2,2.1-4.4,2.4s-.4,0-.6-.2c-.4-.4-2.3-4-2.7-4.9-1.9-3.8-3.6-8.1-5-12.1s-1.1-4.2-1.5-4.3H39.3c-.2,0-.5,0-.7.2-.3.4-.9,3.4-1.2,4.1-1.4,4-3.1,8.3-5,12.1s-2.3,4.5-2.7,4.9-.3.3-.6.2c-1.2-.3-3-2.2-4.4-2.4,1.7-3.6,3.7-7.1,5.2-10.9,9-21.9,9-46.3,0-68.2s-3.5-7.2-5.2-10.9c1.4-.2,3.2-2.1,4.4-2.4s.5,0,.6.2c3,5.3,5.5,10.9,7.5,16.6s1.1,4.1,1.3,4.4.4.2.7.2h68.4s.3-.4.3-.4c2-7.3,5.1-14.3,8.8-20.9.2-.2.3-.3.6-.2,1.2.3,3,2.2,4.4,2.4-1.7,3.6-3.7,7.1-5.2,10.9-9,21.9-9,46.3,0,68.2,1.5,3.7,3.5,7.2,5.2,10.9ZM106.6,90.8c-3-13.3-3-27.4,0-40.7H40.1c3,13.4,3,27.4,0,40.7h66.4Z",
]

interface LogoProps {
  size?: number       // hoogte in px
  color?: string
  className?: string
  style?: React.CSSProperties
}

// Beeldmerk — symbool zonder tekst
export default function TwinScaleLogo({ size = 28, color = 'currentColor', className, style }: LogoProps) {
  // Symbool vult de hele originele viewBox (378.7 × 140.9)
  // maar het beeldmerk zelf zit in ~x:24–123, y:21–119 → crop die regio
  const markW = 99   // 123 - 24
  const markH = 98   // 119 - 21
  const scale = size / markH
  return (
    <svg
      width={markW * scale}
      height={size}
      viewBox="24 21 99 98"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      className={className}
      style={style}
    >
      {MARK_PATHS.map((d, i) => (
        <path key={i} d={d} fill={color} />
      ))}
    </svg>
  )
}

// Volledig logo met tekst — voor grotere displays
export function TwinScaleLogoFull({ size: height = 40, color = 'currentColor', className, style }: LogoProps) {
  const w = (378.7 / 140.9) * height
  return (
    <svg
      width={w}
      height={height}
      viewBox="0 0 378.7 140.9"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      className={className}
      style={style}
    >
      {MARK_PATHS.map((d, i) => (
        <path key={i} d={d} fill={color} />
      ))}
      {/* Tekst wordt weggelaten — fonts laden niet betrouwbaar in SVG-in-React */}
    </svg>
  )
}
