import {
  Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
  AlignmentType, HeadingLevel, BorderStyle, WidthType, ShadingType,
  LevelFormat, PageNumber, Header, Footer, VerticalAlign,
  ExternalHyperlink
} from 'docx'
import { writeFileSync } from 'fs'

// ── colour palette ───────────────────────────────────────────────────────────
const NAVY   = '1B2A4A'
const ORANGE = 'E85D04'
const LIGHT  = 'F4F7FB'
const WHITE  = 'FFFFFF'
const GREY   = '6B7280'
const BORDER_COLOR = 'D1D5DB'

// ── helpers ──────────────────────────────────────────────────────────────────
const border = (color = BORDER_COLOR) => ({ style: BorderStyle.SINGLE, size: 1, color })
const noBorder = () => ({ style: BorderStyle.NONE, size: 0, color: WHITE })
const allBorders = (color = BORDER_COLOR) => ({ top: border(color), bottom: border(color), left: border(color), right: border(color) })
const noBorders = () => ({ top: noBorder(), bottom: noBorder(), left: noBorder(), right: noBorder() })

const sp = (before = 0, after = 0) => ({ spacing: { before, after } })

function h1(text) {
  return new Paragraph({
    heading: HeadingLevel.HEADING_1,
    children: [new TextRun({ text, bold: true, size: 36, font: 'Calibri', color: NAVY })],
    ...sp(360, 160),
  })
}

function h2(text, color = NAVY) {
  return new Paragraph({
    heading: HeadingLevel.HEADING_2,
    children: [new TextRun({ text, bold: true, size: 28, font: 'Calibri', color })],
    ...sp(280, 120),
  })
}

function body(text, options = {}) {
  return new Paragraph({
    children: [new TextRun({ text, size: 22, font: 'Calibri', color: '374151', ...options })],
    ...sp(80, 80),
  })
}

function bold(text) {
  return new TextRun({ text, bold: true, size: 22, font: 'Calibri', color: NAVY })
}

function bullet(text, level = 0) {
  return new Paragraph({
    numbering: { reference: 'bullets', level },
    children: [new TextRun({ text, size: 22, font: 'Calibri', color: '374151' })],
    ...sp(60, 60),
  })
}

function divider() {
  return new Paragraph({
    border: { bottom: { style: BorderStyle.SINGLE, size: 4, color: 'E5E7EB', space: 1 } },
    ...sp(200, 200),
    children: [],
  })
}

function spacer(pts = 120) {
  return new Paragraph({ children: [], spacing: { before: pts, after: 0 } })
}

// ── big inzicht card ─────────────────────────────────────────────────────────
function inzichtCard(label, value, sub) {
  return new TableCell({
    borders: allBorders('E5E7EB'),
    shading: { fill: LIGHT, type: ShadingType.CLEAR },
    margins: { top: 160, bottom: 160, left: 180, right: 180 },
    width: { size: 2200, type: WidthType.DXA },
    children: [
      new Paragraph({ children: [new TextRun({ text: value, bold: true, size: 48, font: 'Calibri', color: ORANGE })], ...sp(0,60) }),
      new Paragraph({ children: [new TextRun({ text: label, bold: true, size: 20, font: 'Calibri', color: NAVY })], ...sp(0,40) }),
      new Paragraph({ children: [new TextRun({ text: sub, size: 18, font: 'Calibri', color: GREY })], ...sp(0,0) }),
    ],
  })
}

// ── kansen row ───────────────────────────────────────────────────────────────
function kansenRow(rank, postcode, stad, score, gap, isHeader = false) {
  const bg = isHeader ? NAVY : (rank % 2 === 0 ? LIGHT : WHITE)
  const textColor = isHeader ? WHITE : '374151'
  const bold2 = isHeader

  function cell(text, w, align = AlignmentType.LEFT) {
    return new TableCell({
      borders: allBorders('E5E7EB'),
      shading: { fill: bg, type: ShadingType.CLEAR },
      margins: { top: 100, bottom: 100, left: 140, right: 140 },
      width: { size: w, type: WidthType.DXA },
      children: [new Paragraph({
        alignment: align,
        children: [new TextRun({ text, bold: bold2, size: 20, font: 'Calibri', color: textColor })]
      })]
    })
  }

  return new TableRow({ children: [
    cell(isHeader ? '#' : String(rank), 600, AlignmentType.CENTER),
    cell(postcode, 1200),
    cell(stad, 2400),
    cell(isHeader ? 'Match score' : `${score}/100`, 1500, AlignmentType.CENTER),
    cell(isHeader ? 'Kansengap' : gap, 2400, AlignmentType.RIGHT),
  ]})
}

// ── stap box ─────────────────────────────────────────────────────────────────
function stapRow(nr, title, desc) {
  return new TableRow({ children: [
    new TableCell({
      borders: noBorders(),
      shading: { fill: ORANGE, type: ShadingType.CLEAR },
      margins: { top: 120, bottom: 120, left: 160, right: 160 },
      width: { size: 800, type: WidthType.DXA },
      verticalAlign: VerticalAlign.CENTER,
      children: [new Paragraph({
        alignment: AlignmentType.CENTER,
        children: [new TextRun({ text: nr, bold: true, size: 32, font: 'Calibri', color: WHITE })]
      })]
    }),
    new TableCell({
      borders: allBorders('E5E7EB'),
      shading: { fill: LIGHT, type: ShadingType.CLEAR },
      margins: { top: 120, bottom: 120, left: 200, right: 200 },
      width: { size: 7760, type: WidthType.DXA },
      children: [
        new Paragraph({ children: [new TextRun({ text: title, bold: true, size: 22, font: 'Calibri', color: NAVY })], ...sp(0,60) }),
        new Paragraph({ children: [new TextRun({ text: desc, size: 20, font: 'Calibri', color: '374151' })], ...sp(0,0) }),
      ]
    }),
  ]})
}

// ── main document ────────────────────────────────────────────────────────────
const doc = new Document({
  numbering: {
    config: [
      { reference: 'bullets', levels: [
        { level: 0, format: LevelFormat.BULLET, text: '\u2022', alignment: AlignmentType.LEFT,
          style: { paragraph: { indent: { left: 720, hanging: 360 } } } },
        { level: 1, format: LevelFormat.BULLET, text: '\u25E6', alignment: AlignmentType.LEFT,
          style: { paragraph: { indent: { left: 1080, hanging: 360 } } } },
      ]},
    ]
  },
  styles: {
    default: { document: { run: { font: 'Calibri', size: 22, color: '374151' } } },
    paragraphStyles: [
      { id: 'Heading1', name: 'Heading 1', basedOn: 'Normal', next: 'Normal', quickFormat: true,
        run: { size: 36, bold: true, font: 'Calibri', color: NAVY },
        paragraph: { spacing: { before: 360, after: 160 }, outlineLevel: 0 } },
      { id: 'Heading2', name: 'Heading 2', basedOn: 'Normal', next: 'Normal', quickFormat: true,
        run: { size: 28, bold: true, font: 'Calibri', color: NAVY },
        paragraph: { spacing: { before: 280, after: 120 }, outlineLevel: 1 } },
    ]
  },
  sections: [{
    properties: {
      page: {
        size: { width: 11906, height: 16838 }, // A4
        margin: { top: 1134, right: 1134, bottom: 1134, left: 1134 }, // ~2cm
      }
    },
    headers: {
      default: new Header({
        children: [new Paragraph({
          children: [
            new TextRun({ text: 'TwinScale', bold: true, size: 20, font: 'Calibri', color: NAVY }),
            new TextRun({ text: '  |  Postcode Finder', size: 20, font: 'Calibri', color: GREY }),
          ],
          border: { bottom: { style: BorderStyle.SINGLE, size: 4, color: 'E5E7EB', space: 2 } },
        })]
      })
    },
    footers: {
      default: new Footer({
        children: [new Paragraph({
          alignment: AlignmentType.RIGHT,
          children: [
            new TextRun({ text: 'Vertrouwelijk  \u2022  ', size: 18, font: 'Calibri', color: GREY }),
            new TextRun({ children: [PageNumber.CURRENT], size: 18, font: 'Calibri', color: GREY }),
          ],
          border: { top: { style: BorderStyle.SINGLE, size: 4, color: 'E5E7EB', space: 2 } },
        })]
      })
    },
    children: [

      // ── TITEL ──────────────────────────────────────────────────────────────
      new Paragraph({
        children: [new TextRun({ text: 'TwinScale Postcode Finder', bold: true, size: 56, font: 'Calibri', color: NAVY })],
        ...sp(0, 80),
      }),
      new Paragraph({
        children: [new TextRun({ text: 'Locatie-intelligentie voor het Nederlandse MKB', size: 26, font: 'Calibri', color: GREY })],
        ...sp(0, 320),
      }),

      divider(),

      // ── SECTIE 1: AUTOMATISCHE INZICHTEN ───────────────────────────────────
      new Paragraph({
        children: [
          new TextRun({ text: '\u2728  ', size: 32, font: 'Calibri' }),
          new TextRun({ text: 'Automatische Inzichten', bold: true, size: 40, font: 'Calibri', color: NAVY }),
        ],
        ...sp(240, 80),
      }),
      new Paragraph({
        children: [new TextRun({
          text: 'Zodra kassadata is gekoppeld toont het dashboard direct \u2014 zonder configuratie \u2014 de volgende inzichten:',
          size: 22, font: 'Calibri', color: '374151',
        })],
        ...sp(0, 200),
      }),

      // KPI kaarten
      new Table({
        width: { size: 9638, type: WidthType.DXA },
        columnWidths: [2200, 2200, 2200, 2200, 838],
        rows: [new TableRow({ children: [
          inzichtCard('Top postcode', '1011', 'Hoogste klantpenetratie'),
          inzichtCard('Match score', '91/100', 'CBS-profiel gelijkenis'),
          inzichtCard('Kansengap', '6.200', 'bereikbare huishoudens'),
          inzichtCard('Postcodes in kaart', '47', 'actieve kansgebieden'),
          new TableCell({
            borders: noBorders(),
            shading: { fill: WHITE, type: ShadingType.CLEAR },
            width: { size: 838, type: WidthType.DXA },
            children: [new Paragraph({ children: [] })],
          }),
        ]})],
      }),

      spacer(200),

      new Paragraph({
        children: [new TextRun({ text: 'Wat het systeem automatisch berekent:', bold: true, size: 22, font: 'Calibri', color: NAVY })],
        ...sp(120, 80),
      }),
      bullet('Welke postcode de hoogste klantpenetratie heeft \u2014 dit wordt de referentiepostcode'),
      bullet('Postcodes in heel Nederland met een vergelijkbaar CBS-profiel'),
      bullet('Hoeveel huishoudens er in die postcodes zijn versus hoeveel klanten je al hebt'),
      bullet('De top 10 kansgebieden gesorteerd op onbenut potentieel (de \u201Cgap\u201D)'),
      bullet('Kleurcodekaart: rood = hoge kans, lichtgeel = matig, grijs = niet interessant'),

      spacer(120),

      // ── Top 10 tabel ─────────────────────────────────────────────────────
      h2('\ud83c\udfc6  Voorbeeld: Top 10 Kansgebieden', ORANGE),
      new Paragraph({
        children: [new TextRun({ text: 'Op basis van fictieve kassadata (demo \u2014 jouw eigen data levert jouw eigen top 10):', size: 20, font: 'Calibri', color: GREY })],
        ...sp(0, 140),
      }),

      new Table({
        width: { size: 9638, type: WidthType.DXA },
        columnWidths: [600, 1200, 2400, 1500, 2400, 1538],
        rows: [
          new TableRow({ children: [
            new TableCell({ borders: allBorders(NAVY), shading: { fill: NAVY, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 600, type: WidthType.DXA }, children: [new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: '#', bold: true, size: 20, font: 'Calibri', color: WHITE })] })] }),
            new TableCell({ borders: allBorders(NAVY), shading: { fill: NAVY, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 1200, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: 'Postcode', bold: true, size: 20, font: 'Calibri', color: WHITE })] })] }),
            new TableCell({ borders: allBorders(NAVY), shading: { fill: NAVY, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 2400, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: 'Stad / Wijk', bold: true, size: 20, font: 'Calibri', color: WHITE })] })] }),
            new TableCell({ borders: allBorders(NAVY), shading: { fill: NAVY, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 1500, type: WidthType.DXA }, children: [new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: 'Match score', bold: true, size: 20, font: 'Calibri', color: WHITE })] })] }),
            new TableCell({ borders: allBorders(NAVY), shading: { fill: NAVY, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 2400, type: WidthType.DXA }, children: [new Paragraph({ alignment: AlignmentType.RIGHT, children: [new TextRun({ text: 'Kansengap (hh.)', bold: true, size: 20, font: 'Calibri', color: WHITE })] })] }),
            new TableCell({ borders: noBorders(), shading: { fill: WHITE, type: ShadingType.CLEAR }, width: { size: 1538, type: WidthType.DXA }, children: [new Paragraph({ children: [] })] }),
          ]}),
          ...[
            [1, '2012', 'Haarlem \u2013 Centrum', '94', '+4.800'],
            [2, '3011', 'Rotterdam \u2013 Centrum', '91', '+6.200'],
            [3, '2501', 'Den Haag \u2013 Centrum', '89', '+5.400'],
            [4, '3581', 'Utrecht \u2013 Oog in Al', '87', '+3.900'],
            [5, '1054', 'Amsterdam \u2013 Oud-West', '86', '+2.100'],
            [6, '9711', 'Groningen \u2013 Centrum', '84', '+4.100'],
            [7, '5611', 'Eindhoven \u2013 Centrum', '82', '+3.600'],
            [8, '6811', 'Arnhem \u2013 Centrum', '80', '+2.800'],
            [9, '8011', 'Zwolle \u2013 Centrum', '78', '+2.200'],
            [10, '7311', 'Apeldoorn \u2013 Centrum', '76', '+1.900'],
          ].map(([rank, pc, stad, score, gap], i) => new TableRow({ children: [
            new TableCell({ borders: allBorders('E5E7EB'), shading: { fill: i % 2 === 0 ? WHITE : LIGHT, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 600, type: WidthType.DXA }, children: [new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: String(rank), size: 20, font: 'Calibri', color: '374151' })] })] }),
            new TableCell({ borders: allBorders('E5E7EB'), shading: { fill: i % 2 === 0 ? WHITE : LIGHT, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 1200, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: pc, bold: true, size: 20, font: 'Calibri', color: NAVY })] })] }),
            new TableCell({ borders: allBorders('E5E7EB'), shading: { fill: i % 2 === 0 ? WHITE : LIGHT, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 2400, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: stad, size: 20, font: 'Calibri', color: '374151' })] })] }),
            new TableCell({ borders: allBorders('E5E7EB'), shading: { fill: i % 2 === 0 ? WHITE : LIGHT, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 1500, type: WidthType.DXA }, children: [new Paragraph({ alignment: AlignmentType.CENTER, children: [new TextRun({ text: score + '/100', bold: true, size: 20, font: 'Calibri', color: score >= '90' ? '16A34A' : score >= '80' ? 'CA8A04' : ORANGE })] })] }),
            new TableCell({ borders: allBorders('E5E7EB'), shading: { fill: i % 2 === 0 ? WHITE : LIGHT, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 140, right: 140 }, width: { size: 2400, type: WidthType.DXA }, children: [new Paragraph({ alignment: AlignmentType.RIGHT, children: [new TextRun({ text: gap, size: 20, font: 'Calibri', color: '374151' })] })] }),
            new TableCell({ borders: noBorders(), shading: { fill: WHITE, type: ShadingType.CLEAR }, width: { size: 1538, type: WidthType.DXA }, children: [new Paragraph({ children: [] })] }),
          ]})),
        ],
      }),

      spacer(80),
      new Paragraph({
        children: [new TextRun({ text: '\u2139\uFE0F  Naarmate meer kassatransacties worden geladen, worden er meer kansen zichtbaar en nauwkeuriger berekend.', size: 19, font: 'Calibri', color: GREY })],
        ...sp(120, 40),
      }),

      divider(),

      // ── SECTIE 2: HOE HET ALGORITME WERKT ──────────────────────────────────
      h1('Hoe het algoritme werkt'),
      new Paragraph({
        children: [new TextRun({
          text: 'TwinScale zoekt geen postcodes die bij jouw vestiging passen \u2014 maar postcodes die bij jouw beste klanten passen.',
          bold: true, size: 24, font: 'Calibri', color: NAVY,
        })],
        ...sp(0, 200),
      }),

      new Table({
        width: { size: 9638, type: WidthType.DXA },
        columnWidths: [800, 8838],
        rows: [
          stapRow('1', 'Kassadata inladen',
            'Het systeem ontvangt transacties met postcode per klant. Hoe meer data, hoe nauwkeuriger het beeld.'),
          stapRow('2', 'Beste postcode bepalen',
            'Het algoritme berekent voor elke postcode: (aantal klanten \xF7 aantal huishoudens) = penetratiegraad. De postcode met de h\xF6gste penetratiegraad wordt automatisch de referentiepostcode. Jouw vestigingslocatie speelt hierin geen rol.'),
          stapRow('3', 'CBS DNA-profiel bouwen',
            'Van de referentiepostcode worden de CBS-kenmerken opgehaald: WOZ-waarde, aandeel koopwoningen, leeftijdsopbouw 30\u201365, autos per huishouden en werkgelegenheidspercentage.'),
          stapRow('4', 'Tweelingwijken zoeken',
            'Alle ~4.000 Nederlandse PC4-gebieden worden vergeleken met het DNA-profiel. Postcodes met een hoge overeenkomst (match score) verschijnen op de kaart.'),
          stapRow('5', 'Kansengap berekenen',
            'Per matching postcode: potentieel = penetratiegraad referentie \xD7 huishoudens. Kansengap = potentieel \u2212 huidige klanten. Dit is het aantal bereikbare klanten dat je nog niet hebt.'),
          stapRow('6', 'Kaart & Top 10',
            'De kaart kleurt postcodes van rood (hoge kans) naar lichtgeel (matige kans). Het dashboard toont de Top 10 kansgebieden gesorteerd op kansengap.'),
        ],
      }),

      spacer(200),

      // ── Rekenvoorbeeld ─────────────────────────────────────────────────────
      h2('Rekenvoorbeeld'),
      new Paragraph({
        children: [
          bold('Referentiepostcode 1011 (Amsterdam Centrum): '),
          new TextRun({ text: '340 klanten op 3.400 huishoudens = 10% penetratie.', size: 22, font: 'Calibri', color: '374151' }),
        ],
        ...sp(80, 80),
      }),
      new Paragraph({
        children: [
          bold('Tweelingpostcode 2012 (Haarlem Centrum): '),
          new TextRun({ text: '5.200 huishoudens, zelfde CBS-profiel, slechts 40 huidige klanten.', size: 22, font: 'Calibri', color: '374151' }),
        ],
        ...sp(80, 80),
      }),
      new Paragraph({
        children: [new TextRun({ text: 'Potentieel: 10% \xD7 5.200 = 520 klanten   |   Kansengap: 520 \u2212 40 = 480 bereikbare klanten', size: 22, font: 'Calibri', color: ORANGE, bold: true })],
        ...sp(80, 160),
      }),

      divider(),

      // ── SECTIE 3: DATA ─────────────────────────────────────────────────────
      h1('Data & bronnen'),

      new Table({
        width: { size: 9638, type: WidthType.DXA },
        columnWidths: [3200, 6438],
        rows: [
          new TableRow({ children: [
            new TableCell({ borders: allBorders(NAVY), shading: { fill: NAVY, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 160, right: 160 }, width: { size: 3200, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: 'Databron', bold: true, size: 20, font: 'Calibri', color: WHITE })] })] }),
            new TableCell({ borders: allBorders(NAVY), shading: { fill: NAVY, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 160, right: 160 }, width: { size: 6438, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: 'Inhoud & gebruik', bold: true, size: 20, font: 'Calibri', color: WHITE })] })] }),
          ]}),
          ...[
            ['CBS StatLine API (1\xD7 p/mnd)', 'WOZ-waarden, koopwoningpercentage, leeftijdsopbouw, auto\'s per huishouden, werkgelegenheid per PC4'],
            ['Kassatransacties (dagelijks)', 'Klantenpostcodes, aankoopfrequentie, omzet per transactie \u2014 ge\xEFmporteerd via CSV of API'],
            ['Kadaster / BAG', 'Aantal huishoudens per PC4 (basis voor penetratiegraden)'],
            ['TwinScale warehouse', 'Gecombineerde opslag in Supabase (MVP) of BigQuery/Snowflake (productie)'],
          ].map(([bron, inhoud], i) => new TableRow({ children: [
            new TableCell({ borders: allBorders('E5E7EB'), shading: { fill: i % 2 === 0 ? WHITE : LIGHT, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 160, right: 160 }, width: { size: 3200, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: bron, bold: true, size: 20, font: 'Calibri', color: NAVY })] })] }),
            new TableCell({ borders: allBorders('E5E7EB'), shading: { fill: i % 2 === 0 ? WHITE : LIGHT, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 160, right: 160 }, width: { size: 6438, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: inhoud, size: 20, font: 'Calibri', color: '374151' })] })] }),
          ]})),
        ],
      }),

      spacer(200),
      new Paragraph({
        children: [new TextRun({ text: '\ud83d\udd10  Privacy: alle klantdata wordt verwerkt conform de AVG. Geen individuele persoonsgegevens worden opgeslagen \u2014 uitsluitend geaggregeerde postcodestatistieken.', size: 20, font: 'Calibri', color: GREY })],
        ...sp(80, 80),
      }),

      divider(),

      // ── SECTIE 4: FEATURES ─────────────────────────────────────────────────
      h1('Features & Roadmap'),

      new Table({
        width: { size: 9638, type: WidthType.DXA },
        columnWidths: [4819, 4819],
        rows: [
          new TableRow({ children: [
            new TableCell({ borders: noBorders(), shading: { fill: WHITE, type: ShadingType.CLEAR }, margins: { top: 0, bottom: 0, left: 0, right: 180 }, width: { size: 4819, type: WidthType.DXA }, children: [
              new Paragraph({ children: [new TextRun({ text: '\u2705  Nu beschikbaar', bold: true, size: 22, font: 'Calibri', color: NAVY })], ...sp(0, 120) }),
              bullet('Kassadata upload & verwerking'),
              bullet('Automatische referentiepostcode bepaling'),
              bullet('CBS-koppeling per PC4'),
              bullet('Interactieve kaart met kleurcodering'),
              bullet('Top 10 kansgebieden dashboard'),
              bullet('Penetratiegraden per postcode'),
            ]}),
            new TableCell({ borders: noBorders(), shading: { fill: WHITE, type: ShadingType.CLEAR }, margins: { top: 0, bottom: 0, left: 180, right: 0 }, width: { size: 4819, type: WidthType.DXA }, children: [
              new Paragraph({ children: [new TextRun({ text: '\ud83d\udea7  Komende releases', bold: true, size: 22, font: 'Calibri', color: NAVY })], ...sp(0, 120) }),
              bullet('Exporteer doelgroeplijst voor Meta Ads & Google Ads'),
              bullet('Directe koppeling Lightspeed / MyPOS / Exact'),
              bullet('Reisradius-filter (bereken kansen binnen X minuten rijden)'),
              bullet('Seizoen & trend alerts per postcode'),
              bullet('Branche-benchmarks (anoniem, meerdere klanten)'),
              bullet('Vestigingsadvies met omzetschatting'),
            ]}),
          ]}),
        ],
      }),

      divider(),

      // ── SECTIE 5: TECHNISCH ─────────────────────────────────────────────────
      h1('Technische architectuur (MVP)'),
      new Paragraph({
        children: [new TextRun({ text: 'Hieronder de opzet voor het Minimum Viable Product. De productieomgeving schaalt naar BigQuery of Snowflake.', size: 22, font: 'Calibri', color: GREY })],
        ...sp(0, 180),
      }),

      new Table({
        width: { size: 9638, type: WidthType.DXA },
        columnWidths: [2400, 7238],
        rows: [
          new TableRow({ children: [
            new TableCell({ borders: allBorders(NAVY), shading: { fill: NAVY, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 160, right: 160 }, width: { size: 2400, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: 'Component', bold: true, size: 20, font: 'Calibri', color: WHITE })] })] }),
            new TableCell({ borders: allBorders(NAVY), shading: { fill: NAVY, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 160, right: 160 }, width: { size: 7238, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: 'Rol', bold: true, size: 20, font: 'Calibri', color: WHITE })] })] }),
          ]}),
          ...[
            ['Supabase', 'Data warehouse voor CBS-data (cbs_pc4 tabel) en klantmatches'],
            ['Python / pandas', 'Dagelijkse ETL: kassabestand inladen, scores berekenen, matches wegschrijven'],
            ['CBS OData v4 API', 'Maandelijkse refresh van PC4-statistieken (gratis, geen API-key nodig)'],
            ['Next.js dashboard', 'Real-time visualisatie: kaart, Top 10 kansen, penetratiegraden'],
            ['react-leaflet', 'Interactieve kaart met kleurcode per PC4-postcode (choropleth)'],
          ].map(([comp, rol], i) => new TableRow({ children: [
            new TableCell({ borders: allBorders('E5E7EB'), shading: { fill: i % 2 === 0 ? WHITE : LIGHT, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 160, right: 160 }, width: { size: 2400, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: comp, bold: true, size: 20, font: 'Calibri', color: NAVY })] })] }),
            new TableCell({ borders: allBorders('E5E7EB'), shading: { fill: i % 2 === 0 ? WHITE : LIGHT, type: ShadingType.CLEAR }, margins: { top: 100, bottom: 100, left: 160, right: 160 }, width: { size: 7238, type: WidthType.DXA }, children: [new Paragraph({ children: [new TextRun({ text: rol, size: 20, font: 'Calibri', color: '374151' })] })] }),
          ]})),
        ],
      }),

      spacer(200),
      new Paragraph({
        children: [new TextRun({ text: 'CBS OData endpoint: ', bold: true, size: 20, font: 'Calibri', color: NAVY })],
        ...sp(80, 40),
      }),
      new Paragraph({
        children: [new ExternalHyperlink({
          link: 'https://www.cbs.nl/nl-nl/onze-diensten/open-data/statline-als-open-data/snelstartgids-odata-v4',
          children: [new TextRun({ text: 'cbs.nl \u2192 StatLine OData v4 snelstartgids', style: 'Hyperlink', size: 20, font: 'Calibri' })],
        })],
        ...sp(0, 120),
      }),

      new Paragraph({
        children: [new TextRun({ text: 'SQL tabelstructuur (Supabase):', bold: true, size: 20, font: 'Calibri', color: NAVY })],
        ...sp(120, 80),
      }),
      new Paragraph({
        shading: { fill: '1E293B', type: ShadingType.CLEAR },
        children: [new TextRun({
          text: 'CREATE TABLE cbs_pc4 ( pc4 TEXT PRIMARY KEY, woz NUMERIC, koop_pct NUMERIC, leeftijd_30_65_pct NUMERIC, autos_per_huishouden NUMERIC, werkgelegenheid_pct NUMERIC, jaar INTEGER );',
          font: 'Courier New', size: 18, color: '86EFAC',
        })],
        ...sp(0, 200),
      }),

      divider(),

      // ── FOOTER NOTE ─────────────────────────────────────────────────────────
      new Paragraph({
        alignment: AlignmentType.CENTER,
        children: [new TextRun({ text: 'TwinScale \u2022 Locatie-intelligentie voor het Nederlandse MKB \u2022 Vertrouwelijk document', size: 18, font: 'Calibri', color: GREY })],
        ...sp(160, 0),
      }),
    ]
  }]
})

Packer.toBuffer(doc).then(buf => {
  writeFileSync('C:/Users/st4rf/Downloads/TwinScale_Postcode_Finder.docx', buf)
  console.log('✅ Document klaar: C:/Users/st4rf/Downloads/TwinScale_Postcode_Finder.docx')
})
