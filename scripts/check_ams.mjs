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

    // Amsterdam: 1000-1109
    const ams = dataRows.filter(r => {
      const pc = Number(r[0])
      return pc >= 1000 && pc <= 1109
    })

    console.log('=== Amsterdam PC4 postcodes (1000-1109) — CBS 2024 ===')
    let total = 0
    for (const r of ams) {
      const inw = r[1]
      if (inw && inw > 0) {
        total += inw
        console.log(`  ${r[0]}: ${inw} inwoners`)
      }
    }
    console.log(`\nTOTAAL: ${total.toLocaleString('nl-NL')} inwoners`)
    console.log(`Aantal PC4 gebieden: ${ams.filter(r => r[1] > 0).length}`)

    // Controleer ook de postcodes die in onze klantdata zitten (1011, 1054, 1092)
    const klantPcs = [1011, 1054, 1092]
    console.log('\n=== Specifieke klantpostcodes in Amsterdam ===')
    for (const pc of klantPcs) {
      const r = dataRows.find(r => Number(r[0]) === pc)
      if (r) console.log(`  ${pc}: ${r[1]} inwoners (m=${r[2]}, v=${r[3]})`)
    }
  })
}).on('error', e => console.error(e.message))
