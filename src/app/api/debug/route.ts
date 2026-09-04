import { NextResponse } from 'next/server'
import { createClient } from '@supabase/supabase-js'

export async function GET() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL
  const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

  if (!url || !key) {
    return NextResponse.json({ error: 'Missing env vars', url: !!url, key: !!key })
  }

  const sb = createClient(url, key)

  const [matchesResult, kansenResult] = await Promise.all([
    sb.from('matches').select('*').limit(10),
    sb.rpc('bereken_kansen'),
  ])

  return NextResponse.json({
    env: { url: url.slice(0, 30) + '...', keyLen: key.length },
    matches: {
      count: matchesResult.data?.length ?? 0,
      error: matchesResult.error?.message ?? null,
      sample: matchesResult.data?.slice(0, 2) ?? [],
    },
    kansen: {
      count: (matchesResult.data as unknown[])?.length ?? 0,
      error: kansenResult.error?.message ?? null,
    },
  })
}
