-- ══════════════════════════════════════════════════════════════════
-- bereken_kansen() — TwinScale kansen-algoritme v2
--
-- Drie pijlers:
--   1. Geografische nabijheid  (40%)  — sterkste differentiator
--      Vestiging: Geldermalsen 4190, lat 51.8667, lon 5.2833
--      Exponentiële decay: score halveert elke ~35 km
--
--   2. CBS-profiel match       (60%)  — wie lijkt op onze klanten?
--      pct_koop 60% · leeftijd 30% · pct_vrouw 10%
--      Power transform ^0.7 voor betere spreiding
--
--   3. Penetratie-korting              — al bereikt = minder kans
--      Absolute penetratie (klanten/inwoners), max 60% korting
--
-- Score = cbs_match^0.7 × geo_factor × (1 − pen × 0.6) × 100
-- Resultaat: realistische spreiding 0–100, nabije gebieden bovenaan
-- ══════════════════════════════════════════════════════════════════

CREATE OR REPLACE FUNCTION bereken_kansen()
RETURNS TABLE(postcode text, lat float8, lon float8, score int, inwoners int)
LANGUAGE sql
SECURITY DEFINER
AS $$
WITH

-- ── 1. Klantaantallen per postcode uit kassadata ──────────────────
klant_omzet AS (
  SELECT
    postcode,
    COUNT(DISTINCT klant_id) AS klant_count,
    SUM(bedrag_totaal)       AS omzet
  FROM kassadata
  WHERE postcode IS NOT NULL AND postcode != ''
  GROUP BY postcode
),

-- ── 2. Omzet-gewogen demografisch klantprofiel ───────────────────
klant_profiel AS (
  SELECT
    SUM(c.cbs_leeftijd * k.omzet) / NULLIF(SUM(k.omzet), 0) AS avg_leeftijd,
    SUM(c.pct_vrouw    * k.omzet) / NULLIF(SUM(k.omzet), 0) AS avg_vrouw,
    SUM(c.pct_koop     * k.omzet) / NULLIF(SUM(k.omzet), 0) AS avg_koop
  FROM klant_omzet k
  JOIN pc4_cbs c ON c.postcode = k.postcode
),

-- ── 3. Afstand tot vestiging (Geldermalsen) per kandidaat ─────────
-- Haversine-benadering: 1° lat ≈ 111 km, 1° lon ≈ 111 × cos(lat) km
kandidaten AS (
  SELECT
    c.postcode,
    c.lat,
    c.lon,
    c.cbs_leeftijd,
    c.pct_vrouw,
    c.pct_koop,
    COALESCE(c.inwoners, 0)                             AS inwoners,
    COALESCE(k.klant_count, 0)                          AS bestaande_klanten,
    SQRT(
      POW((c.lat - 51.8667) * 111.0,                   2) +
      POW((c.lon -  5.2833) * 111.0 * COS(RADIANS(51.8667)), 2)
    )                                                   AS dist_km
  FROM pc4_cbs c
  LEFT JOIN klant_omzet k ON k.postcode = c.postcode
  WHERE c.lat IS NOT NULL AND c.lon IS NOT NULL
),

-- ── 4. Geografische factor: exponentiële decay ────────────────────
-- Halveringsafstand = 35 km → op 35 km = 0.50, op 70 km = 0.25
-- Geclipped op [0.08, 1.00] zodat veraf nooit 0 wordt
geo AS (
  SELECT
    k.*,
    GREATEST(0.08, EXP(-0.693 * k.dist_km / 35.0)) AS geo_factor
  FROM kandidaten k
)

-- ── 5. Eindscore ─────────────────────────────────────────────────
SELECT
  g.postcode,
  g.lat::float8,
  g.lon::float8,
  LEAST(100, GREATEST(0, ROUND((

    -- CBS-match (0–1) met power transform ^0.7 voor spreiding
    POWER(
      GREATEST(0.0, 1.0 - (
        LEAST(1.0, ABS(COALESCE(g.pct_koop,     p.avg_koop)     - p.avg_koop)     / 65.0) * 0.60 +
        LEAST(1.0, ABS(COALESCE(g.cbs_leeftijd, p.avg_leeftijd) - p.avg_leeftijd) / 26.0) * 0.30 +
        LEAST(1.0, ABS(COALESCE(g.pct_vrouw,    p.avg_vrouw)    - p.avg_vrouw)    / 12.0) * 0.10
      )),
      0.7
    )

    -- × geografische nabijheidsfactor
    * g.geo_factor

    -- × onbenut potentieel (absolute penetratie, max 60% korting)
    * (1.0 - LEAST(1.0,
        CASE WHEN g.inwoners > 0
          THEN g.bestaande_klanten::float / g.inwoners
          ELSE 0
        END
      ) * 0.6)

    * 100.0

  )::int)) AS score,

  g.inwoners::int

FROM geo g
CROSS JOIN klant_profiel p
ORDER BY score DESC;
$$;


-- ══════════════════════════════════════════════════════════════════
-- klant_dichtheid() — klantaantallen per postcode
-- Haal inwoners op uit pc4_cbs (niet meer hardcoded 0)
-- ══════════════════════════════════════════════════════════════════

CREATE OR REPLACE FUNCTION klant_dichtheid()
RETURNS TABLE(postcode text, klant_count int, inwoners int)
LANGUAGE sql
SECURITY DEFINER
AS $$
  SELECT
    k.postcode,
    COUNT(DISTINCT k.klant_id)::int          AS klant_count,
    COALESCE(c.inwoners, 0)::int             AS inwoners
  FROM kassadata k
  LEFT JOIN pc4_cbs c ON c.postcode = k.postcode
  WHERE k.postcode IS NOT NULL AND k.postcode != ''
  GROUP BY k.postcode, c.inwoners
  ORDER BY klant_count DESC;
$$;
