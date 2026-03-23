-- ─────────────────────────────────────────────────────
-- TwinScale: maak de `kansen` tabel aan in Supabase
-- Plak dit in: Supabase Dashboard → SQL Editor → Run
-- URL: https://supabase.com/dashboard/project/dltpqygzxhambupwobms/sql/new
-- ─────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS kansen (
  postcode TEXT PRIMARY KEY,       -- NL PC4 postcode bijv. '1011'
  lat      FLOAT8 NOT NULL,        -- breedtegraad
  lon      FLOAT8 NOT NULL,        -- lengtegraad
  score    INT2   NOT NULL DEFAULT 50  -- kansscore 0-100
);

-- Iedereen mag de tabel lezen (publieke anon key)
ALTER TABLE kansen ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public read kansen" ON kansen;
CREATE POLICY "Public read kansen"
  ON kansen FOR SELECT
  USING (true);

-- Na het aanmaken: voer het upload script uit:
--   node scripts/upload_kansen.mjs
