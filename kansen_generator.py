# ============================================================
# TWINSCALE — Kansen Generator
#
# Berekent voor alle ~4000 Nederlandse PC4-postcodes een
# kansen-score op basis van gelijkenis met jouw klantprofiel.
# Resultaat wordt geüpload naar Supabase tabel 'kansen'.
#
# INSTALLEREN:
#   pip install pandas numpy cbsodata supabase requests
#
# DRAAIEN:
#   python kansen_generator.py
#
# Dit script draait ook automatisch via twinscale_pipeline.py
# elke nacht na de match-berekening.
# ============================================================

import os
import time
import requests
import pandas as pd
import numpy as np

try:
    import cbsodata
    CBS_AVAILABLE = True
except ImportError:
    CBS_AVAILABLE = False
    print("⚠️  cbsodata niet geïnstalleerd. Gebruik: pip install cbsodata")

try:
    from supabase import create_client
    SUPABASE_AVAILABLE = True
except ImportError:
    SUPABASE_AVAILABLE = False
    print("⚠️  supabase niet geïnstalleerd. Gebruik: pip install supabase")


# ── Supabase connectie ─────────────────────────────────────
# Zet je eigen keys hier of in environment variables
SUPABASE_URL = os.getenv("NEXT_PUBLIC_SUPABASE_URL", "")
SUPABASE_KEY = os.getenv("SUPABASE_SERVICE_ROLE_KEY", "")  # service role key voor writes


# ── Meest recente CBS dataset ──────────────────────────────
# 85616NED = Kerncijfers wijken en buurten 2023 (nieuwste)
# 83765NED = 2022, 84799NED = 2021 (fallbacks)
CBS_DATASET_ID = "85616NED"
CBS_FALLBACK   = "83765NED"


# ── Jouw klantprofiel (wordt automatisch ingeladen uit Supabase matches) ──
DEFAULT_PROFIEL = {
    "inkomen":  35000,   # gem. jaarinkomen klanten (€)
    "leeftijd": 35,      # gem. leeftijd
    "pct_vrouw": 68,     # % vrouw
    "pct_hbo":  42,      # % HBO+ (schatting)
    "pct_koop": 55,      # % koopwoning (schatting)
}

# Gewichten per factor (moeten optellen tot 1.0)
GEWICHTEN = {
    "inkomen":   0.30,
    "leeftijd":  0.25,
    "pct_vrouw": 0.25,
    "pct_hbo":   0.10,
    "pct_koop":  0.10,
}

# Spreiding per factor (voor normalisatie)
BEREIK = {
    "inkomen":   30000,  # €0–€60K range
    "leeftijd":  30,     # 15–75 jaar range
    "pct_vrouw": 30,     # 35–65%
    "pct_hbo":   40,     # 10–50%
    "pct_koop":  60,     # 10–70%
}


def laad_cbs_data() -> pd.DataFrame:
    """
    Haalt alle Nederlandse PC4-postcodes op via CBS Statline API.
    Gebruikt de meest recente dataset (2023).
    """
    if not CBS_AVAILABLE:
        print("❌ cbsodata niet beschikbaar. Installeer met: pip install cbsodata")
        return pd.DataFrame()

    for dataset_id in [CBS_DATASET_ID, CBS_FALLBACK]:
        try:
            print(f"📡 CBS data ophalen: {dataset_id}...")
            data = cbsodata.get_data(
                dataset_id,
                filters="substring(WijkenEnBuurten,1,2) eq 'PC'"
            )
            df = pd.DataFrame(data)
            print(f"✅ {len(df)} postcodegebieden geladen uit CBS {dataset_id}")
            return verwerk_cbs_data(df)
        except Exception as e:
            print(f"⚠️  {dataset_id} mislukt: {e}")

    print("❌ Geen CBS data beschikbaar")
    return pd.DataFrame()


def verwerk_cbs_data(df: pd.DataFrame) -> pd.DataFrame:
    """
    Normaliseert de CBS kolomnamen naar vaste namen.
    CBS verandert soms kolomnamen tussen jaren.
    """
    # Mogelijke kolomnamen per CBS-versie
    kolom_map = {
        # Postcode
        'WijkenEnBuurten':         'postcode_raw',
        # Inwoners
        'AantalInwoners_5':        'inwoners',
        'Inwoners_5':              'inwoners',
        # Inkomen (mediaan of gemiddeld huishoudinkomen x1000)
        'GemiddeldInkomenPerInwoner_66':   'inkomen_raw',
        'GemiddeldInkomenPerInkomensontvanger_64': 'inkomen_raw',
        'MediaanInkomenPerInkomensontvanger_66': 'inkomen_raw',
        # Leeftijd
        'GemiddeldeLeeftijdTotaaleBevolking_30': 'leeftijd',
        'GemiddeldeLeeftijdTotaleBevolking_30':  'leeftijd',
        # % Vrouw
        'k_65JaarOfOuder_13': None,  # niet direct % vrouw, skip
        # HBO (% hoog opleidingsniveau)
        'HoogOpgeleid_64':     'pct_hbo',
        'HoogOpgeleid_65':     'pct_hbo',
        # Koopwoningen
        'Koopwoningen_15':     'pct_koop',
        'Koopwoningen_16':     'pct_koop',
        # Stad/naam
        'Naam':                'naam',
        'GM_NAAM':             'stad',
    }

    df = df.rename(columns={k: v for k, v in kolom_map.items() if v and k in df.columns})

    # Extraheer PC4 (4-cijferige postcode)
    if 'postcode_raw' in df.columns:
        df['postcode'] = df['postcode_raw'].str.extract(r'(\d{4})')
    elif 'WijkenEnBuurten' in df.columns:
        df['postcode'] = df['WijkenEnBuurten'].str.extract(r'(\d{4})')

    # Inkomen: CBS slaat op als x1000 euro — converteer naar €
    if 'inkomen_raw' in df.columns:
        df['inkomen'] = pd.to_numeric(df['inkomen_raw'], errors='coerce') * 1000
    elif 'inkomen' not in df.columns:
        df['inkomen'] = np.nan

    # % Vrouw: CBS heeft geen directe kolom — schat op basis van geslachtsratio
    # Gebruik 50% als fallback (neutrale waarde)
    if 'pct_vrouw' not in df.columns:
        df['pct_vrouw'] = 50.0

    # Zorg voor numerieke types
    for col in ['inwoners', 'inkomen', 'leeftijd', 'pct_hbo', 'pct_koop', 'pct_vrouw']:
        if col in df.columns:
            df[col] = pd.to_numeric(df[col], errors='coerce')

    # Filter op geldige postcodes
    df = df[df['postcode'].notna() & (df['postcode'].str.len() == 4)]
    df = df.drop_duplicates(subset='postcode')

    return df


def bereken_kansen_score(row: pd.Series, profiel: dict) -> float:
    """
    Berekent hoe groot de kans is dat deze postcode potentiële klanten heeft.

    Score = gewogen gelijkenis met jouw klantprofiel (0–100)
    Hoge score = postcodegebied lijkt veel op waar jouw klanten wonen
    = hoge kans dat er nieuwe klanten te vinden zijn
    """
    totaal_score = 0.0
    totaal_gewicht = 0.0

    factor_map = {
        'inkomen':   ('inkomen',   'inkomen'),
        'leeftijd':  ('leeftijd',  'leeftijd'),
        'pct_vrouw': ('pct_vrouw', 'pct_vrouw'),
        'pct_hbo':   ('pct_hbo',   'pct_hbo'),
        'pct_koop':  ('pct_koop',  'pct_koop'),
    }

    for factor, (cbs_col, profiel_col) in factor_map.items():
        if cbs_col not in row.index or pd.isna(row[cbs_col]):
            continue
        if profiel_col not in profiel:
            continue

        gewicht = GEWICHTEN[factor]
        bereik  = BEREIK[factor]
        verschil = abs(float(row[cbs_col]) - float(profiel[profiel_col]))
        gelijkenis = max(0.0, 1.0 - verschil / bereik)

        totaal_score   += gewicht * gelijkenis
        totaal_gewicht += gewicht

    if totaal_gewicht == 0:
        return 0.0

    return round((totaal_score / totaal_gewicht) * 100, 1)


def voeg_coordinaten_toe(df: pd.DataFrame) -> pd.DataFrame:
    """
    Voegt lat/lon toe via Nominatim geocoding.
    Gebruikt cache om API-calls te beperken.
    Vertraagt requests om rate limit te respecteren (max 1/sec).
    """
    print(f"📍 Coördinaten ophalen voor {len(df)} postcodes...")

    # Lokale cache voor snelheid
    coords_cache: dict = {}

    # Probeer eerst de lokale geocode.ts data te gebruiken (snel)
    BEKENDE_COORDS = {
        # Snel-cache: meest voorkomende PC4 postcodes
        # (volledig register zit in src/lib/geocode.ts)
    }

    lats, lons = [], []
    gecached = 0
    via_api  = 0
    mislukt  = 0

    for _, row in df.iterrows():
        pc = str(row['postcode'])

        if pc in coords_cache:
            lat, lon = coords_cache[pc]
            gecached += 1
        elif pc in BEKENDE_COORDS:
            lat, lon = BEKENDE_COORDS[pc]
            coords_cache[pc] = (lat, lon)
            gecached += 1
        else:
            # Nominatim geocoding (gratis, max 1 req/sec)
            try:
                r = requests.get(
                    "https://nominatim.openstreetmap.org/search",
                    params={"q": f"{pc}, Nederland", "format": "json", "limit": 1},
                    headers={"User-Agent": "TwinScale/1.0 kansen-generator"},
                    timeout=5
                )
                data = r.json()
                if data:
                    lat = float(data[0]['lat'])
                    lon = float(data[0]['lon'])
                    coords_cache[pc] = (lat, lon)
                    via_api += 1
                else:
                    lat, lon = 52.13, 5.29  # centrum NL
                    mislukt += 1
                time.sleep(1.1)  # respecteer Nominatim rate limit
            except Exception:
                lat, lon = 52.13, 5.29
                mislukt += 1

        lats.append(lat)
        lons.append(lon)

    df['lat'] = lats
    df['lon'] = lons
    print(f"  ✅ {gecached} cache, {via_api} API, {mislukt} fallback")
    return df


def upload_naar_supabase(df: pd.DataFrame):
    """
    Upload de kansen data naar Supabase tabel 'kansen'.

    Maak eerst de tabel aan in Supabase met dit SQL:

    CREATE TABLE kansen (
        id          BIGSERIAL PRIMARY KEY,
        postcode    TEXT NOT NULL UNIQUE,
        lat         FLOAT NOT NULL,
        lon         FLOAT NOT NULL,
        score       FLOAT NOT NULL,
        updated_at  TIMESTAMPTZ DEFAULT NOW()
    );
    CREATE INDEX ON kansen (score DESC);
    """
    if not SUPABASE_AVAILABLE:
        print("❌ supabase package niet beschikbaar")
        return

    if not SUPABASE_URL or not SUPABASE_KEY:
        print("❌ NEXT_PUBLIC_SUPABASE_URL of SUPABASE_SERVICE_ROLE_KEY niet ingesteld")
        print("   Zet ze als environment variables of vul ze bovenaan dit script in.")
        return

    try:
        client = create_client(SUPABASE_URL, SUPABASE_KEY)

        # Upload in batches van 500 (Supabase limiet)
        records = df[['postcode', 'lat', 'lon', 'score']].to_dict('records')
        batch_size = 500
        totaal_geupload = 0

        for i in range(0, len(records), batch_size):
            batch = records[i:i + batch_size]
            client.table('kansen').upsert(batch, on_conflict='postcode').execute()
            totaal_geupload += len(batch)
            print(f"  📤 {totaal_geupload}/{len(records)} geüpload...")

        print(f"✅ {totaal_geupload} postcodes geüpload naar Supabase 'kansen' tabel")
    except Exception as e:
        print(f"❌ Supabase upload mislukt: {e}")


def sla_op_als_csv(df: pd.DataFrame, pad: str = "kansen_data.csv"):
    """Sla ook lokaal op als CSV (handig voor debug/backup)."""
    df[['postcode', 'lat', 'lon', 'score']].to_csv(pad, index=False)
    print(f"💾 Opgeslagen als {pad}")


def genereer_kansen(profiel: dict = None, upload: bool = True) -> pd.DataFrame:
    """
    Hoofdfunctie — roep dit aan vanuit de pipeline of standalone.

    Parameters:
        profiel: dict met klantprofiel (inkomen, leeftijd, etc.)
                 Als None, wordt DEFAULT_PROFIEL gebruikt
        upload:  True = upload naar Supabase, False = alleen lokale CSV

    Returns:
        DataFrame met alle postcodes + kansen scores
    """
    if profiel is None:
        profiel = DEFAULT_PROFIEL

    print("=" * 60)
    print("TWINSCALE — Kansen Generator")
    print(f"Klantprofiel: inkomen=€{profiel['inkomen']:,.0f}, "
          f"leeftijd={profiel['leeftijd']}, vrouw={profiel['pct_vrouw']}%")
    print("=" * 60)

    # Stap 1: CBS data laden
    df_cbs = laad_cbs_data()
    if df_cbs.empty:
        print("❌ Geen CBS data, pipeline gestopt")
        return pd.DataFrame()

    # Stap 2: Kansen scores berekenen
    print(f"\n🔢 Scores berekenen voor {len(df_cbs)} postcodes...")
    df_cbs['score'] = df_cbs.apply(
        lambda row: bereken_kansen_score(row, profiel), axis=1
    )

    # Stap 3: Coördinaten toevoegen
    print("\n📍 Coördinaten toevoegen...")
    df_cbs = voeg_coordinaten_toe(df_cbs)

    # Stap 4: Alleen postcodes met score > 40 opslaan (filtert lege/onbekende data)
    df_result = df_cbs[df_cbs['score'] > 40].copy()
    print(f"\n📊 {len(df_result)} postcodes met score > 40 (van {len(df_cbs)} totaal)")
    print(f"   Top 5:\n{df_result.nlargest(5, 'score')[['postcode', 'score']].to_string(index=False)}")

    # Stap 5: Opslaan
    sla_op_als_csv(df_result)

    if upload:
        print("\n📤 Uploaden naar Supabase...")
        upload_naar_supabase(df_result)

    return df_result


# ── Standalone uitvoeren ────────────────────────────────────
if __name__ == "__main__":
    genereer_kansen(upload=True)
