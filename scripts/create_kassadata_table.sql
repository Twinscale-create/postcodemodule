-- TwinScale: kassadata tabel
-- Plak dit EERST in Supabase SQL Editor om de tabel te maken

CREATE TABLE IF NOT EXISTS kassadata (
  transactie_id   TEXT PRIMARY KEY,
  datum           DATE NOT NULL,
  tijd            TIME NOT NULL,
  klant_id        TEXT NOT NULL,
  postcode        TEXT,
  gender          TEXT,
  leeftijd        INT2,
  email           TEXT,
  categorie       TEXT,
  aantal_items    INT2,
  bedrag_excl     NUMERIC(10,2),
  korting         NUMERIC(10,2),
  bedrag_totaal   NUMERIC(10,2),
  betaalmethode   TEXT,
  medewerker_id   TEXT,
  created_at      TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE kassadata ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public read kassadata" ON kassadata FOR SELECT USING (true);
