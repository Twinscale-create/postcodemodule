-- TwinScale: klantdichtheid per postcode (v3 — met CBS inkomen voor sortering)
-- Telt unieke klanten per postcode uit kassadata.
-- Geeft ook cbs_inkomen terug zodat de klanten-tabel op inkomen gesorteerd kan worden.
--
-- Plak in Supabase SQL Editor → Run  (of run via scripts/run_all_sql.mjs)

DROP FUNCTION IF EXISTS klant_dichtheid();

CREATE OR REPLACE FUNCTION klant_dichtheid()
RETURNS TABLE(
  postcode    TEXT,
  klant_count INT,
  inwoners    INT,
  cbs_inkomen FLOAT
)
LANGUAGE SQL
SECURITY DEFINER
AS $$
  SELECT
    k.postcode,
    COUNT(DISTINCT k.klant_id)::INT       AS klant_count,
    COALESCE(c.inwoners,    0)::INT        AS inwoners,
    COALESCE(c.cbs_inkomen, 0)::FLOAT     AS cbs_inkomen
  FROM kassadata k
  LEFT JOIN pc4_cbs c ON c.postcode = k.postcode
  WHERE k.postcode IS NOT NULL
    AND k.postcode <> ''
  GROUP BY k.postcode, c.inwoners, c.cbs_inkomen
  ORDER BY klant_count DESC
  LIMIT 100;
$$;
