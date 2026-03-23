const URL = 'https://dltpqygzxhambupwobms.supabase.co'
const KEY = 'sb_publishable_gT1LYFawCoX0spS3IO-o4Q_CwjrRHsD'

const res = await fetch(`${URL}/rest/v1/rpc/klant_dichtheid`, {
  method: 'POST',
  headers: { apikey: KEY, 'Content-Type': 'application/json' },
  body: '{}'
})
const rows = await res.json()
if (!Array.isArray(rows)) { console.error(rows); process.exit(1) }

const tiel = rows.find(r => r.postcode === '4001')
console.log('Postcode 4001 in DB:', JSON.stringify(tiel))
console.log('')
console.log('Alle klantgebieden:')
rows.forEach(r => {
  const inw = r.inwoners || 5500
  const pen = (r.klant_count / inw * 100).toFixed(2)
  console.log(`  ${r.postcode}  klanten=${r.klant_count}  inwoners_db=${r.inwoners}  pen=${pen}%`)
})

// Ook checken: hoeveel inwoners heeft 4001 volgens CBS (update_pc4_real.sql)?
const CBS_4001_INWONERS = 2330
if (tiel) {
  const penOud  = (tiel.klant_count / 5500 * 100).toFixed(2)
  const penNieuw = (tiel.klant_count / CBS_4001_INWONERS * 100).toFixed(2)
  console.log('')
  console.log(`=== Postcode 4001 (Tiel) ===`)
  console.log(`  Klanten:            ${tiel.klant_count}`)
  console.log(`  Inwoners in DB:     ${tiel.inwoners}  (nu nog ${tiel.inwoners === 0 ? 'NIET bijgewerkt' : 'BIJGEWERKT'})`)
  console.log(`  Inwoners CBS 2024:  ${CBS_4001_INWONERS}`)
  console.log(`  Penetratie OUD:     ${penOud}%  (5500 gem. fallback)`)
  console.log(`  Penetratie NIEUW:   ${penNieuw}%  (echte CBS inwoners)`)
}
