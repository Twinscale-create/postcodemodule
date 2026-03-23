/**
 * upload_kansen.mjs
 * Upload synthetic NL PC4 kansen dataset to Supabase.
 * Run: node scripts/upload_kansen.mjs
 *
 * This creates/populates the `kansen` table with ~600 Dutch PC4 postcodes.
 * The table schema:
 *   postcode TEXT PRIMARY KEY
 *   lat FLOAT8
 *   lon FLOAT8
 *   score INT2
 */

import { createClient } from '@supabase/supabase-js'
import { readFileSync } from 'fs'
import { fileURLToPath } from 'url'
import { dirname, join } from 'path'

const __filename = fileURLToPath(import.meta.url)
const __dirname = dirname(__filename)

// Read env vars from .env.local
const envPath = join(__dirname, '..', '.env.local')
const envContent = readFileSync(envPath, 'utf8')
const env = Object.fromEntries(
  envContent.split('\n')
    .filter(l => l.includes('='))
    .map(l => l.split('=').map(s => s.trim()))
)

const SUPABASE_URL = env['NEXT_PUBLIC_SUPABASE_URL']
const SUPABASE_KEY = env['NEXT_PUBLIC_SUPABASE_ANON_KEY']

if (!SUPABASE_URL || !SUPABASE_KEY) {
  console.error('❌ Could not read Supabase credentials from .env.local')
  process.exit(1)
}

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY)

// Inline dataset (subset of nl_kansen.ts for Node.js compatibility)
const NL_KANSEN = [
  // Amsterdam
  { postcode: '1011', lat: 52.3728, lon: 4.9002, score: 88 },
  { postcode: '1012', lat: 52.3714, lon: 4.8952, score: 85 },
  { postcode: '1013', lat: 52.3840, lon: 4.8740, score: 82 },
  { postcode: '1015', lat: 52.3770, lon: 4.8810, score: 84 },
  { postcode: '1016', lat: 52.3640, lon: 4.8870, score: 81 },
  { postcode: '1017', lat: 52.3614, lon: 4.8960, score: 79 },
  { postcode: '1018', lat: 52.3657, lon: 4.9157, score: 77 },
  { postcode: '1019', lat: 52.3720, lon: 4.9300, score: 73 },
  { postcode: '1051', lat: 52.3769, lon: 4.8671, score: 76 },
  { postcode: '1052', lat: 52.3716, lon: 4.8512, score: 74 },
  { postcode: '1053', lat: 52.3671, lon: 4.8477, score: 72 },
  { postcode: '1054', lat: 52.3657, lon: 4.8562, score: 70 },
  { postcode: '1055', lat: 52.3710, lon: 4.8290, score: 68 },
  { postcode: '1056', lat: 52.3750, lon: 4.8130, score: 65 },
  { postcode: '1057', lat: 52.3680, lon: 4.8080, score: 63 },
  { postcode: '1058', lat: 52.3620, lon: 4.7980, score: 60 },
  { postcode: '1059', lat: 52.3560, lon: 4.7880, score: 58 },
  { postcode: '1061', lat: 52.3590, lon: 4.8230, score: 62 },
  { postcode: '1062', lat: 52.3540, lon: 4.8330, score: 64 },
  { postcode: '1063', lat: 52.3490, lon: 4.8410, score: 61 },
  { postcode: '1064', lat: 52.3450, lon: 4.8490, score: 59 },
  { postcode: '1065', lat: 52.3410, lon: 4.8570, score: 57 },
  { postcode: '1071', lat: 52.3576, lon: 4.8860, score: 80 },
  { postcode: '1072', lat: 52.3534, lon: 4.8971, score: 78 },
  { postcode: '1073', lat: 52.3491, lon: 4.8891, score: 75 },
  { postcode: '1074', lat: 52.3452, lon: 4.8814, score: 72 },
  { postcode: '1075', lat: 52.3466, lon: 4.8712, score: 70 },
  { postcode: '1081', lat: 52.3350, lon: 4.8560, score: 60 },
  { postcode: '1082', lat: 52.3310, lon: 4.8620, score: 62 },
  { postcode: '1083', lat: 52.3270, lon: 4.8680, score: 64 },
  { postcode: '1091', lat: 52.3590, lon: 4.9200, score: 69 },
  { postcode: '1092', lat: 52.3650, lon: 4.9290, score: 67 },
  { postcode: '1093', lat: 52.3700, lon: 4.9390, score: 65 },
  { postcode: '1101', lat: 52.3100, lon: 4.9360, score: 54 },
  { postcode: '1311', lat: 52.3750, lon: 5.2220, score: 70 },
  { postcode: '1312', lat: 52.3800, lon: 5.2300, score: 68 },
  { postcode: '1313', lat: 52.3850, lon: 5.2380, score: 66 },
  { postcode: '1314', lat: 52.3900, lon: 5.2460, score: 64 },
  { postcode: '1321', lat: 52.3680, lon: 5.2040, score: 66 },
  { postcode: '1322', lat: 52.3630, lon: 5.1930, score: 64 },
  { postcode: '1441', lat: 52.5029, lon: 4.9583, score: 55 },
  { postcode: '1501', lat: 52.4380, lon: 4.8140, score: 60 },
  { postcode: '1811', lat: 52.6324, lon: 4.7534, score: 61 },
  { postcode: '1812', lat: 52.6380, lon: 4.7620, score: 59 },
  { postcode: '1813', lat: 52.6440, lon: 4.7700, score: 57 },
  { postcode: '1814', lat: 52.6500, lon: 4.7780, score: 55 },
  // Haarlem
  { postcode: '2011', lat: 52.3820, lon: 4.6370, score: 71 },
  { postcode: '2012', lat: 52.3800, lon: 4.6300, score: 69 },
  { postcode: '2013', lat: 52.3850, lon: 4.6200, score: 67 },
  { postcode: '2021', lat: 52.3760, lon: 4.6480, score: 68 },
  { postcode: '2022', lat: 52.3720, lon: 4.6560, score: 66 },
  { postcode: '2023', lat: 52.3680, lon: 4.6640, score: 64 },
  { postcode: '2031', lat: 52.3950, lon: 4.6280, score: 62 },
  { postcode: '2101', lat: 52.3480, lon: 4.6200, score: 77 },
  { postcode: '2102', lat: 52.3520, lon: 4.6120, score: 75 },
  { postcode: '2103', lat: 52.3560, lon: 4.6040, score: 73 },
  // Leiden
  { postcode: '2311', lat: 52.1580, lon: 4.5020, score: 75 },
  { postcode: '2312', lat: 52.1560, lon: 4.5100, score: 73 },
  { postcode: '2313', lat: 52.1520, lon: 4.5180, score: 71 },
  { postcode: '2314', lat: 52.1490, lon: 4.5260, score: 69 },
  { postcode: '2321', lat: 52.1620, lon: 4.4860, score: 70 },
  { postcode: '2331', lat: 52.1640, lon: 4.5140, score: 69 },
  { postcode: '2351', lat: 52.1820, lon: 4.5140, score: 62 },
  { postcode: '2401', lat: 52.1294, lon: 4.6594, score: 63 },
  // Den Haag
  { postcode: '2511', lat: 52.0784, lon: 4.3101, score: 82 },
  { postcode: '2512', lat: 52.0740, lon: 4.3030, score: 80 },
  { postcode: '2513', lat: 52.0660, lon: 4.3030, score: 78 },
  { postcode: '2514', lat: 52.0597, lon: 4.3010, score: 76 },
  { postcode: '2515', lat: 52.0500, lon: 4.3170, score: 74 },
  { postcode: '2516', lat: 52.0700, lon: 4.3450, score: 72 },
  { postcode: '2521', lat: 52.0910, lon: 4.3450, score: 71 },
  { postcode: '2531', lat: 52.1010, lon: 4.3500, score: 68 },
  { postcode: '2541', lat: 52.0400, lon: 4.3880, score: 67 },
  { postcode: '2551', lat: 52.0670, lon: 4.2640, score: 66 },
  { postcode: '2561', lat: 52.0610, lon: 4.2420, score: 64 },
  { postcode: '2581', lat: 52.0970, lon: 4.2720, score: 66 },
  { postcode: '2591', lat: 52.0840, lon: 4.2780, score: 63 },
  // Delft
  { postcode: '2611', lat: 52.0110, lon: 4.3620, score: 71 },
  { postcode: '2612', lat: 52.0070, lon: 4.3700, score: 69 },
  { postcode: '2613', lat: 52.0030, lon: 4.3770, score: 67 },
  { postcode: '2621', lat: 51.9920, lon: 4.3660, score: 60 },
  // Rotterdam
  { postcode: '3011', lat: 51.9150, lon: 4.4800, score: 80 },
  { postcode: '3012', lat: 51.9200, lon: 4.4700, score: 78 },
  { postcode: '3013', lat: 51.9280, lon: 4.4700, score: 76 },
  { postcode: '3014', lat: 51.9150, lon: 4.4600, score: 74 },
  { postcode: '3015', lat: 51.9070, lon: 4.4680, score: 72 },
  { postcode: '3021', lat: 51.9300, lon: 4.4500, score: 69 },
  { postcode: '3031', lat: 51.9300, lon: 4.4960, score: 65 },
  { postcode: '3041', lat: 51.9050, lon: 4.4400, score: 63 },
  { postcode: '3051', lat: 51.9100, lon: 4.5360, score: 60 },
  { postcode: '3061', lat: 51.9200, lon: 4.5600, score: 59 },
  { postcode: '3071', lat: 51.9040, lon: 4.5040, score: 62 },
  { postcode: '3081', lat: 51.9260, lon: 4.4120, score: 61 },
  { postcode: '3111', lat: 51.9188, lon: 4.3890, score: 58 },
  { postcode: '3201', lat: 51.8510, lon: 4.3230, score: 53 },
  // Dordrecht
  { postcode: '3311', lat: 51.8170, lon: 4.6950, score: 65 },
  { postcode: '3312', lat: 51.8200, lon: 4.7020, score: 63 },
  { postcode: '3313', lat: 51.8230, lon: 4.7100, score: 62 },
  { postcode: '3321', lat: 51.8100, lon: 4.6880, score: 63 },
  // Utrecht
  { postcode: '3511', lat: 52.0919, lon: 5.1065, score: 79 },
  { postcode: '3512', lat: 52.0959, lon: 5.1157, score: 77 },
  { postcode: '3513', lat: 52.0879, lon: 5.1119, score: 75 },
  { postcode: '3514', lat: 52.0807, lon: 5.1088, score: 73 },
  { postcode: '3521', lat: 52.0795, lon: 5.1228, score: 72 },
  { postcode: '3531', lat: 52.0890, lon: 5.1360, score: 74 },
  { postcode: '3541', lat: 52.0820, lon: 5.0710, score: 68 },
  { postcode: '3551', lat: 52.0930, lon: 5.0850, score: 69 },
  { postcode: '3561', lat: 52.1110, lon: 5.1120, score: 71 },
  { postcode: '3571', lat: 52.0780, lon: 5.1650, score: 66 },
  { postcode: '3581', lat: 52.0850, lon: 5.1520, score: 70 },
  { postcode: '3701', lat: 52.0892, lon: 5.2284, score: 74 },
  { postcode: '3721', lat: 52.1100, lon: 5.2200, score: 72 },
  // Amersfoort
  { postcode: '3811', lat: 52.1540, lon: 5.3950, score: 71 },
  { postcode: '3812', lat: 52.1490, lon: 5.4030, score: 69 },
  { postcode: '3821', lat: 52.1640, lon: 5.3900, score: 69 },
  { postcode: '3822', lat: 52.1710, lon: 5.3840, score: 67 },
  // Tiel — low scores (vestiging area)
  { postcode: '4001', lat: 51.8917, lon: 5.4333, score: 15 },
  { postcode: '4002', lat: 51.8950, lon: 5.4400, score: 18 },
  { postcode: '4003', lat: 51.8880, lon: 5.4270, score: 16 },
  { postcode: '4031', lat: 51.8800, lon: 5.5100, score: 35 },
  { postcode: '4041', lat: 51.8700, lon: 5.4600, score: 38 },
  { postcode: '4101', lat: 51.8900, lon: 5.3000, score: 44 },
  // Wageningen / Ede
  { postcode: '6700', lat: 51.9700, lon: 5.6640, score: 64 },
  { postcode: '6701', lat: 51.9750, lon: 5.6720, score: 62 },
  { postcode: '6704', lat: 51.9720, lon: 5.6480, score: 64 },
  { postcode: '6706', lat: 51.9640, lon: 5.6320, score: 64 },
  // Nijmegen
  { postcode: '6511', lat: 51.8080, lon: 5.8700, score: 73 },
  { postcode: '6512', lat: 51.8130, lon: 5.8740, score: 71 },
  { postcode: '6521', lat: 51.8200, lon: 5.8620, score: 70 },
  { postcode: '6531', lat: 51.8000, lon: 5.8540, score: 68 },
  { postcode: '6541', lat: 51.8100, lon: 5.8200, score: 65 },
  // Arnhem
  { postcode: '6811', lat: 51.9780, lon: 5.9010, score: 70 },
  { postcode: '6812', lat: 51.9740, lon: 5.9100, score: 68 },
  { postcode: '6821', lat: 51.9940, lon: 5.8950, score: 69 },
  { postcode: '6831', lat: 51.9870, lon: 5.9200, score: 66 },
  { postcode: '6841', lat: 51.9650, lon: 5.8720, score: 64 },
  // Apeldoorn
  { postcode: '7311', lat: 52.2040, lon: 5.9560, score: 66 },
  { postcode: '7312', lat: 52.2100, lon: 5.9640, score: 64 },
  { postcode: '7321', lat: 52.2040, lon: 6.0040, score: 61 },
  // Deventer
  { postcode: '7411', lat: 52.2480, lon: 6.1520, score: 67 },
  { postcode: '7412', lat: 52.2540, lon: 6.1600, score: 65 },
  { postcode: '7421', lat: 52.2420, lon: 6.1440, score: 65 },
  // Enschede
  { postcode: '7511', lat: 52.2270, lon: 6.9020, score: 68 },
  { postcode: '7512', lat: 52.2330, lon: 6.8980, score: 66 },
  { postcode: '7521', lat: 52.2140, lon: 6.8950, score: 65 },
  { postcode: '7531', lat: 52.2000, lon: 6.8720, score: 60 },
  { postcode: '7541', lat: 52.2200, lon: 6.8650, score: 63 },
  { postcode: '7551', lat: 52.2629, lon: 6.7933, score: 63 },
  // Zwolle
  { postcode: '8011', lat: 52.5070, lon: 6.0930, score: 69 },
  { postcode: '8012', lat: 52.5050, lon: 6.1010, score: 67 },
  { postcode: '8021', lat: 52.5150, lon: 6.0790, score: 67 },
  { postcode: '8031', lat: 52.5180, lon: 6.1090, score: 64 },
  { postcode: '8041', lat: 52.5420, lon: 6.1000, score: 61 },
  // Leeuwarden
  { postcode: '8911', lat: 53.2010, lon: 5.8010, score: 62 },
  { postcode: '8912', lat: 53.2050, lon: 5.8100, score: 60 },
  { postcode: '8921', lat: 53.2100, lon: 5.7900, score: 59 },
  { postcode: '8931', lat: 53.2060, lon: 5.7720, score: 58 },
  // Groningen
  { postcode: '9711', lat: 53.2220, lon: 6.5700, score: 74 },
  { postcode: '9712', lat: 53.2280, lon: 6.5650, score: 72 },
  { postcode: '9713', lat: 53.2340, lon: 6.5610, score: 70 },
  { postcode: '9721', lat: 53.2300, lon: 6.5400, score: 69 },
  { postcode: '9727', lat: 53.1970, lon: 6.5420, score: 63 },
  { postcode: '9731', lat: 53.2160, lon: 6.5780, score: 64 },
  { postcode: '9741', lat: 53.1900, lon: 6.5620, score: 59 },
  // Breda
  { postcode: '4811', lat: 51.5820, lon: 4.7830, score: 69 },
  { postcode: '4812', lat: 51.5780, lon: 4.7900, score: 67 },
  { postcode: '4821', lat: 51.5940, lon: 4.7830, score: 64 },
  { postcode: '4831', lat: 51.5660, lon: 4.7700, score: 65 },
  // Den Bosch
  { postcode: '5211', lat: 51.6880, lon: 5.2990, score: 74 },
  { postcode: '5212', lat: 51.6940, lon: 5.3070, score: 72 },
  { postcode: '5221', lat: 51.6820, lon: 5.2910, score: 71 },
  { postcode: '5231', lat: 51.6980, lon: 5.3540, score: 63 },
  // Tilburg
  { postcode: '5011', lat: 51.5610, lon: 5.0880, score: 62 },
  { postcode: '5012', lat: 51.5670, lon: 5.0810, score: 60 },
  { postcode: '5021', lat: 51.5490, lon: 5.0880, score: 63 },
  { postcode: '5031', lat: 51.5600, lon: 5.0560, score: 60 },
  { postcode: '5041', lat: 51.5530, lon: 5.0510, score: 61 },
  // Eindhoven
  { postcode: '5611', lat: 51.4320, lon: 5.4780, score: 76 },
  { postcode: '5612', lat: 51.4380, lon: 5.4830, score: 74 },
  { postcode: '5613', lat: 51.4460, lon: 5.4810, score: 72 },
  { postcode: '5621', lat: 51.4430, lon: 5.4940, score: 71 },
  { postcode: '5631', lat: 51.4220, lon: 5.4680, score: 68 },
  { postcode: '5641', lat: 51.4680, lon: 5.5200, score: 67 },
  { postcode: '5651', lat: 51.4300, lon: 5.4480, score: 70 },
  // Helmond
  { postcode: '5701', lat: 51.4832, lon: 5.6690, score: 63 },
  { postcode: '5702', lat: 51.4880, lon: 5.6770, score: 61 },
  // Venlo
  { postcode: '5911', lat: 51.3656, lon: 6.1680, score: 60 },
  { postcode: '5921', lat: 51.3602, lon: 6.1600, score: 59 },
  // Roermond
  { postcode: '6041', lat: 51.1930, lon: 5.9770, score: 58 },
  { postcode: '6131', lat: 51.0040, lon: 5.8650, score: 59 },
  // Maastricht
  { postcode: '6211', lat: 50.8540, lon: 5.6780, score: 72 },
  { postcode: '6212', lat: 50.8590, lon: 5.6700, score: 70 },
  { postcode: '6221', lat: 50.8460, lon: 5.6840, score: 69 },
  { postcode: '6411', lat: 50.8873, lon: 5.9837, score: 62 },
  // Zeeland
  { postcode: '4331', lat: 51.4988, lon: 3.6136, score: 52 },
  { postcode: '4401', lat: 51.4980, lon: 3.7200, score: 50 },
  { postcode: '4501', lat: 51.4930, lon: 3.8580, score: 50 },
  { postcode: '4601', lat: 51.5900, lon: 4.1300, score: 55 },
  // Flevoland
  { postcode: '8200', lat: 52.5153, lon: 5.4713, score: 63 },
  { postcode: '8221', lat: 52.4600, lon: 5.4100, score: 60 },
  { postcode: '8231', lat: 52.5000, lon: 5.5400, score: 59 },
  { postcode: '8241', lat: 52.5700, lon: 5.6200, score: 55 },
  // Rural
  { postcode: '7800', lat: 52.7736, lon: 6.8992, score: 50 },
  { postcode: '9400', lat: 52.9752, lon: 6.5520, score: 50 },
  { postcode: '9601', lat: 52.8100, lon: 6.5000, score: 49 },
  { postcode: '8601', lat: 53.1100, lon: 5.6400, score: 45 },
  { postcode: '8901', lat: 53.1500, lon: 5.5400, score: 44 },
  { postcode: '9781', lat: 53.2000, lon: 6.3900, score: 47 },
  { postcode: '9951', lat: 53.3000, lon: 6.6100, score: 44 },
  { postcode: '6600', lat: 51.8700, lon: 5.9700, score: 57 },
  { postcode: '6641', lat: 51.8400, lon: 5.8800, score: 58 },
]

async function main() {
  console.log(`📤 Uploading ${NL_KANSEN.length} kansen records to Supabase...`)

  // Upsert in batches of 100
  const BATCH = 100
  let uploaded = 0
  let errors = 0

  for (let i = 0; i < NL_KANSEN.length; i += BATCH) {
    const batch = NL_KANSEN.slice(i, i + BATCH)
    const { error } = await supabase
      .from('kansen')
      .upsert(batch, { onConflict: 'postcode' })

    if (error) {
      console.error(`❌ Batch ${i}-${i+BATCH}: ${error.message}`)
      errors += batch.length
    } else {
      uploaded += batch.length
      process.stdout.write(`\r  ✓ ${uploaded}/${NL_KANSEN.length} records...`)
    }
  }

  console.log(`\n\n✅ Done! ${uploaded} uploaded, ${errors} errors.`)

  if (errors > 0) {
    console.log('\n⚠️  If you get a "relation does not exist" error, create the table first:')
    console.log(`
  CREATE TABLE kansen (
    postcode TEXT PRIMARY KEY,
    lat FLOAT8 NOT NULL,
    lon FLOAT8 NOT NULL,
    score INT2 NOT NULL DEFAULT 50
  );
  -- Enable Row Level Security
  ALTER TABLE kansen ENABLE ROW LEVEL SECURITY;
  CREATE POLICY "Public read" ON kansen FOR SELECT USING (true);
    `)
  }
}

main().catch(console.error)
