# =====================================================
# TWINSCALE — CSV UPLOAD TESTER (KLAAR VOOR GEBRUIK)
# =====================================================

"""
📋 INSTRUCTIES:

STAP 1: Download een dataset van Kaggle
---------------------------------------
Ga naar: https://www.kaggle.com/datasets/carrie1/ecommerce-data
Klik op "Download" (je moet inloggen/gratis account maken)
Je krijgt: archive.zip
Unzip dit → je krijgt: data.csv

STAP 2: Zet data.csv in dezelfde map als dit script
----------------------------------------------------
Beide bestanden moeten in je twinscale map staan:
  📁 twinscale/
     📄 csv_tester_ready.py  ← dit bestand
     📄 data.csv             ← jouw Kaggle bestand

STAP 3: Verander hieronder de bestandsnaam (regel 35)
-----------------------------------------------------
Als je bestand NIET "data.csv" heet, verander dan regel 35.

STAP 4: Draai het script
-------------------------
python csv_tester_ready.py

RESULTAAT:
Je krijgt: twinscale_matches.csv met alle tweelingwijken!
"""

import pandas as pd
import numpy as np

# ⬇️ VERANDER DIT ALS JE BESTAND ANDERS HEET ⬇️
JOUW_CSV_BESTAND = "data.csv"  
# ⬆️ Bijvoorbeeld: "sales.csv" of "transactions.csv" ⬆️

print("=" * 80)
print("TWINSCALE — CSV TESTER")
print("=" * 80)
print()
print(f"🔍 Zoeken naar bestand: {JOUW_CSV_BESTAND}")
print()

# =====================================================
# STAP 1: Laad CSV
# =====================================================

try:
    df_raw = pd.read_csv(JOUW_CSV_BESTAND)
    print(f"✅ Bestand geladen!")
    print(f"   • {len(df_raw):,} rijen")
    print(f"   • {len(df_raw.columns)} kolommen")
    print()
except FileNotFoundError:
    print(f"❌ FOUT: Bestand '{JOUW_CSV_BESTAND}' niet gevonden!")
    print()
    print("✋ CHECK DIT:")
    print("   1. Staat je CSV in dezelfde map als dit script?")
    print("   2. Heet je bestand EXACT zoals hierboven staat?")
    print("   3. Heb je getypt: data.csv (niet Data.csv of data.CSV)")
    print()
    print("💡 TIP: Type in de terminal:")
    print("   dir       (Windows)")
    print("   ls        (Mac/Linux)")
    print()
    print("   Dan zie je alle bestanden. Kopieer de exacte naam naar regel 35.")
    print()
    exit()

# Toon kolomnamen
print("📊 Gevonden kolommen in jouw CSV:")
for i, col in enumerate(df_raw.columns, 1):
    print(f"   {i}. {col}")
print()

# =====================================================
# STAP 2: Detecteer kolommen automatisch
# =====================================================

print("🔍 Kolommen detecteren...")
print()

KOLOM_MAPPING = {
    'postcode': ['postcode', 'zipcode', 'postal_code', 'zip', 'customer_zipcode', 'customerzip', 'postalcode'],
    'bedrag': ['amount', 'bedrag', 'total', 'price', 'sale_amount', 'total_amount', 'unitprice', 'revenue'],
    'gender': ['gender', 'geslacht', 'sex', 'customer_gender'],
    'leeftijd': ['age', 'leeftijd', 'customer_age'],
    'aantal': ['quantity', 'aantal', 'qty', 'items'],
}

def vind_kolom(df, mogelijke_namen):
    for col in df.columns:
        if col.lower().strip() in mogelijke_namen:
            return col
    return None

kolom_postcode = vind_kolom(df_raw, KOLOM_MAPPING['postcode'])
kolom_bedrag = vind_kolom(df_raw, KOLOM_MAPPING['bedrag'])
kolom_gender = vind_kolom(df_raw, KOLOM_MAPPING['gender'])
kolom_leeftijd = vind_kolom(df_raw, KOLOM_MAPPING['leeftijd'])
kolom_aantal = vind_kolom(df_raw, KOLOM_MAPPING['aantal'])

# Check of verplichte velden er zijn
if not kolom_postcode:
    print("⚠️  WAARSCHUWING: Geen postcode kolom gevonden")
    print(f"    Gezocht naar: {KOLOM_MAPPING['postcode']}")
    print()
    print("    We maken nu NEPPE postcodes aan voor de demo.")
    print("    In productie moet je echte postcode data hebben!")
    print()
    # Maak neppe postcodes voor demo
    np.random.seed(42)
    postcodes = ['4001', '5038', '5042', '5014', '5025', '5046']
    df_raw['postcode_DEMO'] = np.random.choice(postcodes, len(df_raw))
    kolom_postcode = 'postcode_DEMO'

if not kolom_bedrag:
    print("❌ FOUT: Geen bedrag kolom gevonden!")
    print(f"   Gezocht naar: {KOLOM_MAPPING['bedrag']}")
    print()
    print("   Jouw kolommen: {df_raw.columns.tolist()}")
    print()
    print("   Als je bedrag kolom anders heet, voeg hem toe aan regel 73.")
    exit()

print("✅ Gedetecteerde kolommen:")
print(f"   • Postcode: {kolom_postcode}")
print(f"   • Bedrag:   {kolom_bedrag}")
if kolom_gender:
    print(f"   • Gender:   {kolom_gender}")
if kolom_leeftijd:
    print(f"   • Leeftijd: {kolom_leeftijd}")
if kolom_aantal:
    print(f"   • Aantal:   {kolom_aantal}")
print()

# =====================================================
# STAP 3: Data opschonen
# =====================================================

print("🧹 Data opschonen...")
print()

df = pd.DataFrame()
df['postcode_raw'] = df_raw[kolom_postcode]
df['bedrag'] = pd.to_numeric(df_raw[kolom_bedrag], errors='coerce')

if kolom_gender:
    df['gender'] = df_raw[kolom_gender].astype(str).str.upper().str[0]
    df['gender'] = df['gender'].replace({'F': 'V', 'W': 'V', 'FEMALE': 'V'})

if kolom_leeftijd:
    df['leeftijd'] = pd.to_numeric(df_raw[kolom_leeftijd], errors='coerce')

if kolom_aantal:
    df['aantal_items'] = pd.to_numeric(df_raw[kolom_aantal], errors='coerce')

# Maak NL postcodes (eerste 4 cijfers)
df['postcode'] = df['postcode_raw'].astype(str).str[:4]

# Filter alleen geldige NL postcodes
df = df[df['postcode'].str.match(r'^\d{4}$', na=False)].copy()
df = df[df['bedrag'] > 0].copy()  # Verwijder negatieve bedragen

print(f"✅ {len(df):,} rijen met geldige data")
print()

# =====================================================
# STAP 4: Statistieken per postcode
# =====================================================

print("📊 Statistieken berekenen...")
print()

stats = df.groupby('postcode').agg({
    'bedrag': ['sum', 'mean', 'count']
})
stats.columns = ['totale_omzet', 'gem_bon', 'aantal']

# Gender stats
if 'gender' in df.columns:
    gender_pct = df[df['gender'].notna()].groupby('postcode')['gender'].apply(
        lambda x: (x == 'V').sum() / len(x) * 100 if len(x) > 0 else 50
    )
    stats['pct_vrouw'] = gender_pct
else:
    stats['pct_vrouw'] = 50  # Default

# Leeftijd stats
if 'leeftijd' in df.columns:
    leeftijd_gem = df.groupby('postcode')['leeftijd'].mean()
    stats['gem_leeftijd'] = leeftijd_gem
else:
    stats['gem_leeftijd'] = 35  # Default

stats = stats.sort_values('totale_omzet', ascending=False)

print("📍 Top 5 postcodes:")
print()
for i, (pc, row) in enumerate(stats.head(5).iterrows(), 1):
    print(f"   {i}. {pc}  →  €{row['totale_omzet']:,.2f}  ({int(row['aantal'])} transacties)")
print()

topwijk = stats.index[0]
print(f"🏆 TOPWIJK: {topwijk}")
print()

# =====================================================
# STAP 5: Match met CBS
# =====================================================

print("🔗 CBS data laden...")
print()

CBS = [
    {'pc':'3583','wijk':'Utrecht Oost',    'stad':'Utrecht',   'leeftijd':36,'inkomen':54000,'vrouw':61,'hbo':71,'koop':68},
    {'pc':'2555','wijk':'Loosduinen',      'stad':'Den Haag',  'leeftijd':39,'inkomen':50000,'vrouw':58,'hbo':64,'koop':72},
    {'pc':'3062','wijk':'Kralingen',       'stad':'Rotterdam', 'leeftijd':37,'inkomen':53000,'vrouw':62,'hbo':68,'koop':65},
    {'pc':'5612','wijk':'Woensel',         'stad':'Eindhoven', 'leeftijd':38,'inkomen':49000,'vrouw':55,'hbo':60,'koop':61},
    {'pc':'1073','wijk':'De Pijp',         'stad':'Amsterdam', 'leeftijd':34,'inkomen':58000,'vrouw':52,'hbo':74,'koop':24},
    {'pc':'6822','wijk':'Spijkerkwartier', 'stad':'Arnhem',    'leeftijd':41,'inkomen':47000,'vrouw':57,'hbo':55,'koop':58},
    {'pc':'9711','wijk':'Binnenstad',      'stad':'Groningen', 'leeftijd':28,'inkomen':34000,'vrouw':54,'hbo':72,'koop':18},
    {'pc':'4811','wijk':'Breda Centrum',   'stad':'Breda',     'leeftijd':39,'inkomen':46000,'vrouw':56,'hbo':57,'koop':71},
    {'pc':'4001','wijk':'Tilburg Centrum', 'stad':'Tilburg',   'leeftijd':35,'inkomen':32000,'vrouw':64,'hbo':48,'koop':55},
    {'pc':'5038','wijk':'Tilburg Noord',   'stad':'Tilburg',   'leeftijd':34,'inkomen':38000,'vrouw':61,'hbo':46,'koop':52},
]

profiel = {
    'leeftijd': float(stats.loc[topwijk, 'gem_leeftijd']),
    'inkomen': 45000,  # Geschat
    'vrouw': float(stats.loc[topwijk, 'pct_vrouw']),
    'hbo': 50,  # Geschat
    'koop': 60,  # Geschat
}

print("✅ CBS data geladen")
print()
print("⚙️  Matching algoritme draaien...")
print()

# Matching
GEWICHT = {'inkomen':0.30, 'leeftijd':0.25, 'hbo':0.20, 'vrouw':0.15, 'koop':0.10}
BEREIK = {'leeftijd':(20,65), 'inkomen':(20000,90000), 'vrouw':(40,75), 'hbo':(20,85), 'koop':(10,95)}

matches = []
for wijk in CBS:
    score = 0
    for f, w in GEWICHT.items():
        mn, mx = BEREIK[f]
        diff = abs(profiel[f] - wijk[f])
        sim = max(0, 1 - diff/(mx-mn))
        score += sim * w
    matches.append({
        'postcode': wijk['pc'],
        'wijk': wijk['wijk'],
        'stad': wijk['stad'],
        'score': round(score*100, 1),
        'cbs_leeftijd': wijk['leeftijd'],
        'cbs_pct_vrouw': wijk['vrouw'],
        'jouw_topwijk': topwijk,
        'jouw_leeftijd': round(profiel['leeftijd'], 1),
        'jouw_pct_vrouw': round(profiel['vrouw'], 1),
    })

df_matches = pd.DataFrame(matches).sort_values('score', ascending=False).reset_index(drop=True)
df_matches.insert(0, 'rank', range(1, len(df_matches)+1))

# =====================================================
# RESULTAAT
# =====================================================

print("=" * 80)
print("🎯 TOP 5 TWEELINGWIJKEN")
print("=" * 80)
print()

for _, r in df_matches.head(5).iterrows():
    emoji = "🥇" if r['rank']==1 else "🥈" if r['rank']==2 else "🥉" if r['rank']==3 else "  "
    print(f"{emoji} #{r['rank']}  {r['score']}%  →  {r['postcode']} {r['wijk']} ({r['stad']})")

print()
print("=" * 80)

# Export
df_matches.to_csv('twinscale_matches.csv', index=False)
stats.to_csv('twinscale_jouw_postcodes.csv')

print()
print("💾 BESTANDEN AANGEMAAKT:")
print("   ✅ twinscale_matches.csv           ← Open dit in Excel!")
print("   ✅ twinscale_jouw_postcodes.csv    ← Jouw statistieken")
print()
print("=" * 80)
print("✅ KLAAR!")
print("=" * 80)
