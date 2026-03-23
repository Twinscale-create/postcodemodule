/**
 * run_all_sql.mjs
 * Voert alle 4 SQL scripts uit via directe PostgreSQL verbinding.
 */
import { createRequire } from 'module'
import { readFileSync } from 'fs'
const require = createRequire(import.meta.url)
const { Client } = require('pg')

const DB = {
  host:     'db.dltpqygzxhambupwobms.supabase.co',
  port:     5432,
  user:     'postgres',
  password: 'Appelszijnlekker!',
  database: 'postgres',
  ssl:      { rejectUnauthorized: false }
}

const SCRIPTS = [
  'scripts/alter_pc4_add_inwoners.sql',
  'scripts/update_pc4_inwoners.sql',
  'scripts/create_klant_dichtheid_fn_v2.sql',
  'scripts/setup_pc4_cbs.sql',
]

async function main() {
  const client = new Client(DB)
  await client.connect()
  console.log('✅ Verbonden met database')

  for (const file of SCRIPTS) {
    console.log(`\n▶ Uitvoeren: ${file}`)
    const sql = readFileSync(file, 'utf8')
    try {
      const res = await client.query(sql)
      // res kan een array zijn bij meerdere statements
      const results = Array.isArray(res) ? res : [res]
      for (const r of results) {
        if (r.rows && r.rows.length > 0) {
          console.log('  Resultaat:', JSON.stringify(r.rows))
        }
        if (r.command) {
          console.log(`  ${r.command} — ${r.rowCount ?? 0} rijen`)
        }
      }
      console.log(`  ✅ Klaar: ${file}`)
    } catch (e) {
      console.error(`  ❌ Fout bij ${file}:`, e.message)
      await client.end()
      process.exit(1)
    }
  }

  await client.end()
  console.log('\n✅ Alle scripts uitgevoerd!')
}

main().catch(e => { console.error(e); process.exit(1) })
