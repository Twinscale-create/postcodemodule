-- ══════════════════════════════════════════════════════════════════
-- TwinScale: inwoners kolom toevoegen aan pc4_cbs
--
-- Stap 1: Plak dit in Supabase SQL Editor → Run
-- Stap 2: Draai node scripts/fetch_cbs_pc4.mjs → plak update_pc4_real.sql → Run
-- Stap 3: Draai scripts/create_klant_dichtheid_fn_v2.sql → Run
-- ══════════════════════════════════════════════════════════════════

-- Voeg inwoners kolom toe (als die nog niet bestaat)
ALTER TABLE pc4_cbs
  ADD COLUMN IF NOT EXISTS inwoners INT DEFAULT 0;

-- Bestaande rijen op 0 zetten zodat we weten welke nog bijgewerkt moeten worden
-- (fetch_cbs_pc4.mjs vult dit met echte CBS waarden)
UPDATE pc4_cbs SET inwoners = 0 WHERE inwoners IS NULL;

-- Controleer:
SELECT
  COUNT(*) AS totaal_postcodes,
  SUM(CASE WHEN inwoners > 0 THEN 1 ELSE 0 END) AS met_inwoners,
  SUM(CASE WHEN inwoners = 0 THEN 1 ELSE 0 END) AS zonder_inwoners
FROM pc4_cbs;
