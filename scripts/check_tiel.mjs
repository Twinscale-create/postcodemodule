import { createRequire } from 'module'
import { get } from 'https'
const require = createRequire(import.meta.url)
const AdmZip = require('adm-zip')
const XLSX   = require('xlsx')

const chunks = []
get('https://download.cbs.nl/postcode/2025-cbs_pc4_2024_v1.zip', res => {
  res.on('data', d => chunks.push(d))
  res.on('end', () => {
    const buf = Buffer.concat(chunks)
    const zip = new AdmZip(buf)
    const xlsEntry = zip.getEntries().find(e => /\.xlsx?$/i.test(e.entryName))
    const wb  = XLSX.read(xlsEntry.getData(), { type: 'buffer' })
    const ws  = wb.Sheets[wb.SheetNames[0]]
    const raw = XLSX.utils.sheet_to_json(ws, { header: 1, defval: null })
    const dataRows = raw.slice(9)

    // Tiel postcodes: 4000-4009
    const tiel = dataRows.filter(r => {
      const pc = Number(r[0])
      return pc >= 4000 && pc <= 4009
    })

    console.log('=== Ruwe CBS 2024 data voor Tiel postcodes (4000-4009) ===')
    console.log('Col 0=PC4, Col 1=Inwoners, Col 2=Mannen, Col 3=Vrouwen, Col 30=%Koop')
    let totalInw = 0
    for (const r of tiel) {
      const inw = r[1]
      const man = r[2]
      const vrw = r[3]
      const koop = r[30]
      console.log(`  PC4 ${r[0]}: inwoners=${inw} (m=${man}, v=${vrw}), %koop=${koop}`)
      if (inw && inw > 0) totalInw += inw
    }
    console.log(`  TOTAAL Tiel (4000-4009): ${totalInw} inwoners`)

    // Specifiek 4001
    const r4001 = dataRows.find(r => Number(r[0]) === 4001)
    console.log('\n=== Volledige rij voor 4001 ===')
    if (r4001) console.log(JSON.stringify(r4001))
  })
}).on('error', e => console.error(e.message))
