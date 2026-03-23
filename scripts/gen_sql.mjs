import { readFileSync, writeFileSync } from 'fs'
import { fileURLToPath } from 'url'
import { dirname, join } from 'path'

const __dirname = dirname(fileURLToPath(import.meta.url))

// Extract inline data from upload script
const content = readFileSync(join(__dirname, 'upload_kansen.mjs'), 'utf8')
const match = content.match(/const NL_KANSEN = \[([\s\S]*?)\]/)
if (!match) { console.error('Could not find NL_KANSEN'); process.exit(1) }

const rows = eval('[' + match[1] + ']')

const vals = rows.map(r => `  ('${r.postcode}', ${r.lat}, ${r.lon}, ${r.score})`).join(',\n')
const sql = `-- TwinScale: kansen data upload (${rows.length} PC4 postcodes)
-- Plak dit in Supabase SQL Editor en klik Run
INSERT INTO kansen (postcode, lat, lon, score) VALUES
${vals}
ON CONFLICT (postcode) DO UPDATE
  SET lat = EXCLUDED.lat,
      lon = EXCLUDED.lon,
      score = EXCLUDED.score;
`

writeFileSync(join(__dirname, 'insert_kansen_data.sql'), sql)
console.log(`✅ Generated insert_kansen_data.sql with ${rows.length} rows`)
