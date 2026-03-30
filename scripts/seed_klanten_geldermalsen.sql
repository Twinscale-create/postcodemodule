-- ============================================================
-- TwinScale — Klanten seed voor verzorgingsgebied Geldermalsen
-- Genereert ~11.100 unieke klanten / ~28.000 transacties
--
-- HOE UITVOEREN:
--   Supabase dashboard → SQL Editor → plak alles → Run
-- ============================================================

-- Stap 1: Wis bestaande gegenereerde klanten (K-prefix)
DELETE FROM kassadata WHERE klant_id LIKE 'K%';

-- Stap 2: Seed functie aanmaken en direct uitvoeren
DO $$
DECLARE
  -- Postcodes + gewichten (proportioneel aan bevolking × nabijheid Geldermalsen)
  postcodes TEXT[]    := ARRAY[
    '4190','4191','4192','4193',                    -- Geldermalsen kern
    '4001','4002','4003','4004','4005','4006',       -- Tiel
    '4101','4102','4103','4104','4105',              -- Culemborg
    '4160','4161','4162',                            -- Zaltbommel
    '4201','4202','4203','4204','4207',              -- Gorinchem
    '4140','4141','4142','4143',                     -- Leerdam
    '4130','4131','4132',                            -- Vianen
    '4021','4022','4041','4043','4051','4053',       -- Buren gemeente
    '4181','4182','4183','4184',                     -- Waardenburg/Ophemert
    '4055','4056','4061','4062',                     -- Betuwe dorpen
    '4110','4112','4116',                            -- Beesd e.o.
    '5211','5212','5213','5223',                     -- Den Bosch richting
    '6600','6601','6641','6642',                     -- Wijchen/Beuningen
    '3401','3402',                                   -- IJsselstein
    '4120','4121','4031','4011','4012','4241'        -- Overige rand
  ];
  gewichten INT[]     := ARRAY[
    14,9,6,5,                   -- Geldermalsen
    68,52,40,31,24,18,          -- Tiel
    30,22,16,11,8,              -- Culemborg
    32,22,15,                   -- Zaltbommel
    25,18,13,9,6,               -- Gorinchem
    22,16,12,8,                 -- Leerdam
    16,11,8,                    -- Vianen
    10,7,9,6,8,5,               -- Buren
    12,8,6,5,                   -- Waardenburg
    10,7,7,5,                   -- Betuwe dorpen
    7,7,5,                      -- Beesd
    14,10,7,8,                  -- Den Bosch
    12,8,9,6,                   -- Wijchen/Beuningen
    10,7,                       -- IJsselstein
    7,5,7,8,6,6                 -- Overige rand
  ];

  totaal_gewicht     INT := 0;
  doel_klanten       INT := 11111;
  klant_id_teller    INT := 1;
  tx_teller          INT := 1;

  -- Loop variabelen
  i                  INT;
  pc                 TEXT;
  gewicht            INT;
  klanten_in_pc      INT;
  j                  INT;
  k                  INT;
  gender_char        TEXT;
  leeftijd_val       INT;
  klant_id_str       TEXT;
  n_transacties      INT;
  categorie_val      TEXT;
  bedrag_val         NUMERIC;
  korting_val        NUMERIC;
  datum_val          DATE;
  tijd_val           TIME;
  betaalmethode_val  TEXT;
  medewerker_val     TEXT;
  tx_id_str          TEXT;
  rnd_float          FLOAT;

BEGIN
  -- Bereken totaal gewicht
  FOR i IN 1..array_length(gewichten, 1) LOOP
    totaal_gewicht := totaal_gewicht + gewichten[i];
  END LOOP;

  RAISE NOTICE 'Seeding gestart — doel: % klanten over % postcodes', doel_klanten, array_length(postcodes,1);

  -- Loop over elke postcode
  FOR i IN 1..array_length(postcodes, 1) LOOP
    pc      := postcodes[i];
    gewicht := gewichten[i];
    klanten_in_pc := ROUND((gewicht::FLOAT / totaal_gewicht) * doel_klanten);

    -- Genereer klanten voor deze postcode
    FOR j IN 1..klanten_in_pc LOOP
      klant_id_str := 'K' || LPAD(klant_id_teller::TEXT, 6, '0');
      klant_id_teller := klant_id_teller + 1;

      -- Gender op basis van dames-dominantie (70/30 split)
      IF random() < 0.70 THEN gender_char := 'V'; ELSE gender_char := 'M'; END IF;
      leeftijd_val := 22 + FLOOR(random() * 47)::INT;

      -- Aantal transacties per klant (gem. ~2.8)
      rnd_float := random();
      IF rnd_float < 0.15 THEN
        n_transacties := 1;
      ELSIF rnd_float < 0.40 THEN
        n_transacties := 2;
      ELSIF rnd_float < 0.75 THEN
        n_transacties := 3;
      ELSE
        n_transacties := 4;
      END IF;

      FOR k IN 1..n_transacties LOOP
        tx_id_str := 'TX' || LPAD(tx_teller::TEXT, 7, '0');
        tx_teller := tx_teller + 1;

        -- Datum: willekeurig tussen 2025-01-01 en 2026-03-15
        datum_val := DATE '2025-01-01' + (random() * 439)::INT;

        -- Tijd: winkeluren
        tijd_val := TIME '09:00:00' + ((random() * 9 * 3600)::INT || ' seconds')::INTERVAL;

        -- Categorie (gender-bias)
        rnd_float := random();
        IF gender_char = 'V' THEN
          IF rnd_float < 0.62 THEN categorie_val := 'Dames';
          ELSIF rnd_float < 0.87 THEN categorie_val := 'Accessoires';
          ELSE categorie_val := 'Heren'; END IF;
        ELSE
          IF rnd_float < 0.60 THEN categorie_val := 'Heren';
          ELSIF rnd_float < 0.88 THEN categorie_val := 'Accessoires';
          ELSE categorie_val := 'Dames'; END IF;
        END IF;

        -- Bedrag (gem. €150, spread per categorie)
        bedrag_val := CASE categorie_val
          WHEN 'Dames'       THEN 120 + ROUND((random() * 90)::NUMERIC, 2)
          WHEN 'Heren'       THEN 110 + ROUND((random() * 85)::NUMERIC, 2)
          WHEN 'Accessoires' THEN  35 + ROUND((random() * 120)::NUMERIC, 2)
        END;

        -- Korting (15% kans)
        IF random() < 0.15 THEN
          korting_val := ROUND((bedrag_val * (0.05 + random() * 0.15))::NUMERIC, 2);
        ELSE
          korting_val := 0;
        END IF;

        -- Betaalmethode (70% Pin)
        rnd_float := random();
        betaalmethode_val := CASE
          WHEN rnd_float < 0.70 THEN 'Pin'
          WHEN rnd_float < 0.88 THEN 'Creditcard'
          ELSE 'Contant'
        END;

        -- Medewerker
        medewerker_val := 'MW' || LPAD((1 + FLOOR(random() * 4))::TEXT, 3, '0');

        INSERT INTO kassadata (
          transactie_id, datum, tijd, klant_id, postcode,
          gender, leeftijd, email, categorie,
          aantal_items, bedrag_excl, korting, bedrag_totaal,
          betaalmethode, medewerker_id
        ) VALUES (
          tx_id_str, datum_val, tijd_val, klant_id_str, pc,
          gender_char, leeftijd_val,
          LOWER(klant_id_str) || '@klant.nl',
          categorie_val,
          1 + FLOOR(random() * 4)::INT,
          bedrag_val + korting_val,
          korting_val,
          bedrag_val,
          betaalmethode_val,
          medewerker_val
        );
      END LOOP; -- transacties
    END LOOP;   -- klanten per postcode
  END LOOP;     -- postcodes

  RAISE NOTICE 'Klaar — % klanten, % transacties ingevoegd',
    klant_id_teller - 1, tx_teller - 1;
END;
$$;

-- Verificatie
SELECT
  COUNT(DISTINCT klant_id)::INT           AS unieke_klanten,
  COUNT(*)::INT                           AS transacties,
  COUNT(DISTINCT postcode)::INT           AS postcodes,
  ROUND(AVG(bedrag_totaal)::NUMERIC, 2)  AS gem_bon_euro,
  ROUND(SUM(bedrag_totaal)::NUMERIC, -3) AS geschatte_omzet
FROM kassadata
WHERE klant_id LIKE 'K%';
