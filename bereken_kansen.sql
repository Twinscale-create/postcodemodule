CREATE OR REPLACE FUNCTION bereken_kansen()
RETURNS TABLE(postcode text, lat float8, lon float8, score int)
LANGUAGE sql
SECURITY DEFINER
AS $$
WITH

klant_omzet AS (
  SELECT
    postcode,
    COUNT(DISTINCT klant_id) AS klant_count,
    SUM(bedrag_totaal)       AS omzet
  FROM kassadata
  WHERE postcode IS NOT NULL AND postcode != ''
  GROUP BY postcode
),

klant_profiel AS (
  SELECT
    SUM(c.cbs_inkomen  * k.omzet) / NULLIF(SUM(k.omzet), 0) AS avg_inkomen,
    SUM(c.cbs_leeftijd * k.omzet) / NULLIF(SUM(k.omzet), 0) AS avg_leeftijd,
    SUM(c.pct_vrouw    * k.omzet) / NULLIF(SUM(k.omzet), 0) AS avg_vrouw,
    SUM(c.pct_hbo      * k.omzet) / NULLIF(SUM(k.omzet), 0) AS avg_hbo,
    SUM(c.pct_koop     * k.omzet) / NULLIF(SUM(k.omzet), 0) AS avg_koop
  FROM klant_omzet k
  JOIN pc4_cbs c ON c.postcode = k.postcode
),

max_klanten AS (
  SELECT MAX(klant_count)::float AS max_count FROM klant_omzet
)

SELECT
  c.postcode,
  c.lat::float8,
  c.lon::float8,
  LEAST(100, GREATEST(0, ROUND((
    100.0 * (1.0 - (
      LEAST(1.0, ABS(c.cbs_inkomen  - p.avg_inkomen)  / (NULLIF(p.avg_inkomen,  0) * 0.5)) * 0.30 +
      LEAST(1.0, ABS(c.cbs_leeftijd - p.avg_leeftijd) / (NULLIF(p.avg_leeftijd, 0) * 0.5)) * 0.20 +
      LEAST(1.0, ABS(c.pct_vrouw    - p.avg_vrouw)    / 30.0) * 0.20 +
      LEAST(1.0, ABS(c.pct_hbo      - p.avg_hbo)      / 40.0) * 0.15 +
      LEAST(1.0, ABS(c.pct_koop     - p.avg_koop)     / 50.0) * 0.15
    ))
    * (1.0 - COALESCE(k.klant_count, 0)::float / NULLIF(m.max_count, 0))
  )::int)) AS score

FROM pc4_cbs c
CROSS JOIN klant_profiel p
CROSS JOIN max_klanten m
LEFT JOIN klant_omzet k ON k.postcode = c.postcode
WHERE c.lat IS NOT NULL
ORDER BY score DESC;
$$;

CREATE OR REPLACE FUNCTION klant_dichtheid()
RETURNS TABLE(postcode text, klant_count int, inwoners int)
LANGUAGE sql
SECURITY DEFINER
AS $$
  SELECT
    k.postcode,
    COUNT(DISTINCT k.klant_id)::int AS klant_count,
    0::int                          AS inwoners
  FROM kassadata k
  WHERE k.postcode IS NOT NULL AND k.postcode != ''
  GROUP BY k.postcode
  ORDER BY klant_count DESC;
$$;
