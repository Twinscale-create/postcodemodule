-- TwinScale: bulk insert functie voor kassadata
-- Maakt het mogelijk om via de API (anon key) kassadata te uploaden
-- SECURITY DEFINER = draait als DB-owner, bypast RLS
--
-- Plak dit in Supabase SQL Editor → Run (eenmalig)
-- Daarna: node scripts/upload_kassadata.mjs

CREATE OR REPLACE FUNCTION bulk_insert_kassadata(rows JSONB)
RETURNS INT
LANGUAGE PLPGSQL
SECURITY DEFINER
AS $$
DECLARE
  inserted INT;
BEGIN
  INSERT INTO kassadata (
    transactie_id, datum, tijd, klant_id, postcode, gender, leeftijd,
    email, categorie, aantal_items, bedrag_excl, korting, bedrag_totaal,
    betaalmethode, medewerker_id
  )
  SELECT
    r->>'transactie_id',
    (r->>'datum')::DATE,
    (r->>'tijd')::TIME,
    r->>'klant_id',
    r->>'postcode',
    r->>'gender',
    (r->>'leeftijd')::INT2,
    r->>'email',
    r->>'categorie',
    (r->>'aantal_items')::INT2,
    (r->>'bedrag_excl')::NUMERIC,
    (r->>'korting')::NUMERIC,
    (r->>'bedrag_totaal')::NUMERIC,
    r->>'betaalmethode',
    r->>'medewerker_id'
  FROM jsonb_array_elements(rows) AS r
  ON CONFLICT (transactie_id) DO NOTHING;

  GET DIAGNOSTICS inserted = ROW_COUNT;
  RETURN inserted;
END;
$$;
