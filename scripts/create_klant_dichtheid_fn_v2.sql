-- TwinScale: klantdichtheid per postcode (v4 — echte inwoners uit pc4_cbs)
-- Telt unieke klanten per postcode uit kassadata.
-- Pakt echte inwoners uit pc4_cbs (gevuld via fetch_cbs_pc4.mjs + update_pc4_real.sql).
-- Lat/lon worden client-side opgezocht via geocode.ts.
--
-- Vereist: alter_pc4_add_inwoners.sql + update_pc4_real.sql eerst uitvoeren
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
    COALESCE(c.inwoners, 0)::INT    AS inwoners
  FROM kassadata k
  LEFT JOIN pc4_cbs c ON c.postcode = k.postcode
  WHERE k.postcode IS NOT NULL
    AND k.postcode <> ''
  GROUP BY k.postcode, c.inwoners
  ORDER BY klant_count DESC
  LIMIT 100;
$$;
