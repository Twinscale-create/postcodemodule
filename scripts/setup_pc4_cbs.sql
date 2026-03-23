-- ═══════════════════════════════════════════════════════════════════════
-- TwinScale: pc4_cbs tabel + bereken_kansen() PostgreSQL functie
--
-- Het matching-algoritme draait VEILIG in de database (SECURITY DEFINER).
-- De logica is niet zichtbaar in de browser — alleen de scores komen terug.
--
-- Stap 1: Plak dit bestand in Supabase SQL Editor → Run
-- Stap 2: Draai scripts/gen_pc4_cbs_sql.mjs → plak insert_pc4_cbs.sql → Run
-- Stap 3: Klaar — app roept supabase.rpc('bereken_kansen') aan
-- ═══════════════════════════════════════════════════════════════════════

-- ── 1. CBS-profielen tabel per PC4 postcode ─────────────────────────────
CREATE TABLE IF NOT EXISTS pc4_cbs (
  postcode     TEXT PRIMARY KEY,
  lat          FLOAT       NOT NULL,
  lon          FLOAT       NOT NULL,
  cbs_inkomen  INT         NOT NULL,   -- gem. besteedbaar inkomen (€/jaar)
  cbs_leeftijd FLOAT       NOT NULL,   -- gem. leeftijd bewoners
  pct_vrouw    FLOAT       NOT NULL,   -- % vrouwen (0–100)
  pct_hbo      FLOAT       NOT NULL,   -- % HBO+ opleiding (0–100)
  pct_koop     FLOAT       NOT NULL,   -- % koopwoningen (0–100)
  bron_jaar    INT         DEFAULT 2024,  -- jaar van CBS-bron
  updated_at   TIMESTAMPTZ DEFAULT NOW()
);

-- RLS: publiek leesbaar (alleen SELECT, geen INSERT/UPDATE via anon key)
ALTER TABLE pc4_cbs ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'pc4_cbs' AND policyname = 'Public read pc4_cbs'
  ) THEN
    CREATE POLICY "Public read pc4_cbs" ON pc4_cbs FOR SELECT USING (true);
  END IF;
END $$;


-- ── 2. bereken_kansen() — CBS-matching in de database ───────────────────
--
-- Gewichten (som = 1.0, afgestemd op modezaak / retail):
--   inkomen   35%  — koopkracht, bestedingsvermogen
--   pct_hbo   25%  — levensstijl, modebewustzijn
--   pct_koop  20%  — woningbezit / financiële stabiliteit
--   leeftijd  15%  — doelgroep leeftijdsmatch
--   pct_vrouw  5%  — geslachtsverhouding
--
-- Normalisatiebereiken op basis van landelijke NL PC4-spreiding:
--   inkomen   30.000 – 80.000  (bereik 50.000)
--   leeftijd       24 – 50     (bereik 26)
--   pct_vrouw      46 – 58     (bereik 12)
--   pct_hbo        28 – 80     (bereik 52)
--   pct_koop       15 – 80     (bereik 65)
--
-- SECURITY DEFINER = draait als DB-owner. Algoritme niet zichtbaar via client.
-- Wanneer de CBS API-data binnenkomt: update alleen pc4_cbs tabel — functie
-- hoeft niet te veranderen.
-- ────────────────────────────────────────────────────────────────────────
CREATE OR REPLACE FUNCTION bereken_kansen()
RETURNS TABLE(postcode TEXT, lat FLOAT, lon FLOAT, score INT, inwoners INT)
LANGUAGE SQL
SECURITY DEFINER
AS $$
  WITH

  -- Referentieprofielen = CBS-profiel van ALLE klantpostcodes uit kassadata
  refs AS (
    SELECT DISTINCT
      c.cbs_inkomen::FLOAT,
      c.cbs_leeftijd::FLOAT,
      c.pct_vrouw::FLOAT AS pct_vrouw,
      c.pct_hbo::FLOAT   AS pct_hbo,
      c.pct_koop::FLOAT  AS pct_koop
    FROM kassadata k
    JOIN pc4_cbs c ON c.postcode = k.postcode
    WHERE k.postcode IS NOT NULL AND k.postcode <> ''
  ),

  -- Werkelijke klantpostcodes — worden uitgesloten uit het kansen-resultaat
  klant_postcodes AS (
    SELECT DISTINCT postcode FROM kassadata
    WHERE postcode IS NOT NULL AND postcode <> ''
  ),

  -- Werkelijke penetratie per postcode voor penalisatie
  pens AS (
    SELECT
      k.postcode,
      COUNT(DISTINCT k.klant_id)::FLOAT / NULLIF(c.inwoners, 0) AS pen
    FROM kassadata k
    LEFT JOIN pc4_cbs c ON c.postcode = k.postcode
    WHERE k.postcode IS NOT NULL AND k.postcode <> ''
    GROUP BY k.postcode, c.inwoners
  ),

  -- CBS-similarity score per kandidaatpostcode (excl. bestaande klantgebieden)
  scores AS (
    SELECT
      k.postcode,
      k.lat,
      k.lon,
      MAX(
        ROUND(
          POWER(
            GREATEST(0.0, 1.0 - (
              0.35 * LEAST(1.0, ABS((k.cbs_inkomen  - r.cbs_inkomen)  / 50000.0)) +
              0.15 * LEAST(1.0, ABS((k.cbs_leeftijd - r.cbs_leeftijd) /    26.0)) +
              0.05 * LEAST(1.0, ABS((k.pct_vrouw    - r.pct_vrouw)    /    12.0)) +
              0.25 * LEAST(1.0, ABS((k.pct_hbo      - r.pct_hbo)      /    52.0)) +
              0.20 * LEAST(1.0, ABS((k.pct_koop     - r.pct_koop)     /    65.0))
            )),
            0.7
          ) * 100
        )
      )::INT AS cbs_score
    FROM pc4_cbs k
    CROSS JOIN refs r
    WHERE k.postcode NOT IN (SELECT postcode FROM klant_postcodes)
    GROUP BY k.postcode, k.lat, k.lon
  )

  SELECT
    s.postcode,
    s.lat,
    s.lon,
    GREATEST(0, ROUND(s.cbs_score * (1.0 - COALESCE(p.pen, 0.0) * 0.6)))::INT AS score,
    COALESCE(k.inwoners, 0)::INT AS inwoners
  FROM scores s
  LEFT JOIN pens p ON p.postcode = s.postcode
  LEFT JOIN pc4_cbs k ON k.postcode = s.postcode
  ORDER BY score DESC;
$$;

-- Controleer resultaat:
SELECT COUNT(*) AS pc4_postcodes FROM pc4_cbs;
