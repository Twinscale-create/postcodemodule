/**
 * upload_kassadata.mjs
 * Uploadt alle 8200 kassatransacties automatisch naar Supabase
 * in batches van 200 rijen via de bulk_insert_kassadata() functie.
 *
 * Vereisten:
 *   1. Voer scripts/create_bulk_insert_fn.sql uit in Supabase SQL Editor
 *   2. node scripts/upload_kassadata.mjs
 */

import { readFileSync } from 'fs'
import { createInterface } from 'readline'
import { createReadStream } from 'fs'

const SUPABASE_URL = 'https://dltpqygzxhambupwobms.supabase.co'
const SUPABASE_KEY = 'sb_publishable_gT1LYFawCoX0spS3IO-o4Q_CwjrRHsD'
const BATCH_SIZE = 200

// Lees CSV
async function readCsv(path) {
  const rows = []
  const stream = createReadStream(path)
  const rl = createInterface({ input: stream, crlfDelay: Infinity })

  let headers = null
  for await (const line of rl) {
    if (!line.trim()) continue
    const vals = line.split(',')
    if (!headers) { headers = vals; continue }
    const obj = {}
    headers.forEach((h, i) => { obj[h.trim()] = vals[i]?.trim() ?? '' })
    rows.push(obj)
  }
  return rows
}

async function uploadBatch(batch, batchNum, total) {
  const res = await fetch(`${SUPABASE_URL}/rest/v1/rpc/bulk_insert_kassadata`, {
    method: 'POST',
    headers: {
      'apikey': SUPABASE_KEY,
      'Authorization': `Bearer ${SUPABASE_KEY}`,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ rows: batch }),
  })

  if (!res.ok) {
    const err = await res.text()
    throw new Error(`Batch ${batchNum} mislukt: ${err}`)
  }
  const inserted = await res.json()
  process.stdout.write(`\r  Batch ${batchNum}/${total} — ${inserted} rijen ingevoegd    `)
  return inserted
}

async function main() {
  const csvPath = 'C:/Users/st4rf/Downloads/TwinScale_Kassadata_Volledig.csv'
  console.log(`📂 Lees kassadata uit ${csvPath}...`)

  const rows = await readCsv(csvPath)
  console.log(`✅ ${rows.length} transacties geladen`)

  // Splits in batches
  const batches = []
  for (let i = 0; i < rows.length; i += BATCH_SIZE) {
    batches.push(rows.slice(i, i + BATCH_SIZE))
  }
  console.log(`📤 Upload ${batches.length} batches van ${BATCH_SIZE} rijen...\n`)

  let totalInserted = 0
  for (let i = 0; i < batches.length; i++) {
    try {
      const n = await uploadBatch(batches[i], i + 1, batches.length)
      totalInserted += n
    } catch (err) {
      console.error(`\n❌ ${err.message}`)
      console.error('Tip: voer scripts/create_bulk_insert_fn.sql uit in Supabase SQL Editor')
      process.exit(1)
    }
  }

  console.log(`\n\n✅ Klaar! ${totalInserted} nieuwe transacties ingevoegd in kassadata`)
}

main().catch(err => {
  console.error('❌ Fout:', err.message)
  process.exit(1)
})
