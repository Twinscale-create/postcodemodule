-- TwinScale: klantdichtheid per postcode (v3 — zonder inwoners JOIN)
-- Telt unieke klanten per postcode uit kassadata.
-- pc4_cbs heeft geen inwoners kolom — penetratiegraad staat op 0 (verborgen in UI).
-- Lat/lon worden client-side opgezocht via geocode.ts.
--
-- Plak in Supabase SQL Editor → Run

-- Return type wijzigt, daarom eerst droppen
DROP FUNCTION IF EXISTS klant_dichtheid();

CREATE OR REPLACE FUNCTION klant_dichtheid()
RETURNS TABLE(
  postcode    TEXT,
  klant_count INT,
  inwoners    INT
)
LANGUAGE SQL
SECURITY DEFINER
AS $$
  SELECT
    k.postcode,
    COUNT(DISTINCT k.klant_id)::INT AS klant_count,
    0::INT AS inwoners
  FROM kassadata k
  WHERE k.postcode IS NOT NULL
    AND k.postcode <> ''
  GROUP BY k.postcode
  ORDER BY klant_count DESC
  LIMIT 100;
$$;
