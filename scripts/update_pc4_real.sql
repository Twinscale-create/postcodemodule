-- ══════════════════════════════════════════════════════════════
-- TwinScale: ECHTE CBS PC4 data — peildatum 1 jan 2024
-- Bron: CBS StatLine "Statistische gegevens per postcode 2024 v1"
-- Gepubliceerd: 14 mei 2025
-- Gegenereerd: 2026-03-19
--
-- ✓ inwoners      — echt (CBS 2024)
-- ✓ pct_vrouw     — echt (CBS 2024, berekend)
-- ✓ cbs_leeftijd  — echt (CBS 2024, gewogen gem. leeftijdsklassen)
-- ✓ pct_koop      — echt (CBS 2024)
-- ✗ cbs_inkomen   — BLIJFT geschat (CBS publiceert PC4-inkomen
--                    pas in "vol" versie, verwacht ~2026)
-- ✗ pct_hbo       — NIET beschikbaar op PC4 niveau (CBS publiceert
--                    onderwijsniveau alleen op wijk/buurt niveau)
--
-- Stap 1: Draai eerst scripts/alter_pc4_add_inwoners.sql
-- Stap 2: Plak dit bestand in Supabase SQL Editor → Run
-- ══════════════════════════════════════════════════════════════

-- Voortgang check achteraf:
-- SELECT COUNT(*) AS bijgewerkt FROM pc4_cbs WHERE bron_jaar = 2024 AND inwoners > 0;

UPDATE pc4_cbs SET
  inwoners     = 10010,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1011';

UPDATE pc4_cbs SET
  inwoners     = 9120,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 38.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1012';

UPDATE pc4_cbs SET
  inwoners     = 23020,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 41.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1013';

UPDATE pc4_cbs SET
  inwoners     = 4950,
  pct_vrouw    = 50,
  cbs_leeftijd = 34.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1014';

UPDATE pc4_cbs SET
  inwoners     = 14965,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1015';

UPDATE pc4_cbs SET
  inwoners     = 11355,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1016';

UPDATE pc4_cbs SET
  inwoners     = 13550,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 40.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1017';

UPDATE pc4_cbs SET
  inwoners     = 23430,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1018';

UPDATE pc4_cbs SET
  inwoners     = 20630,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1019';

UPDATE pc4_cbs SET
  inwoners     = 7040,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 39.9,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1021';

UPDATE pc4_cbs SET
  inwoners     = 5160,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 33.3,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1022';

UPDATE pc4_cbs SET
  inwoners     = 4610,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 43.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1023';

UPDATE pc4_cbs SET
  inwoners     = 14175,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 36.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1024';

UPDATE pc4_cbs SET
  inwoners     = 16485,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 41.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1025';

UPDATE pc4_cbs SET
  inwoners     = 550,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1026';

UPDATE pc4_cbs SET
  inwoners     = 540,
  pct_vrouw    = 45.4,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1027';

UPDATE pc4_cbs SET
  inwoners     = 605,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1028';

UPDATE pc4_cbs SET
  inwoners     = 9620,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 38.2,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1031';

UPDATE pc4_cbs SET
  inwoners     = 6425,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 39.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1032';

UPDATE pc4_cbs SET
  inwoners     = 14680,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 40.3,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1033';

UPDATE pc4_cbs SET
  inwoners     = 14935,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 39.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1034';

UPDATE pc4_cbs SET
  inwoners     = 11025,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 39.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1035';

UPDATE pc4_cbs SET
  inwoners     = 2755,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 30.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1036';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 44.8,
  cbs_leeftijd = 51,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1037';

UPDATE pc4_cbs SET
  inwoners     = 5,
  cbs_leeftijd = 35,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1042';

UPDATE pc4_cbs SET
  inwoners     = 1185,
  pct_vrouw    = 46,
  cbs_leeftijd = 31.8,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1043';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 24,
  cbs_leeftijd = 31,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1046';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.7,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1047';

UPDATE pc4_cbs SET
  inwoners     = 13170,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 41.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1051';

UPDATE pc4_cbs SET
  inwoners     = 11980,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1052';

UPDATE pc4_cbs SET
  inwoners     = 16495,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 40.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1053';

UPDATE pc4_cbs SET
  inwoners     = 17300,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 40.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1054';

UPDATE pc4_cbs SET
  inwoners     = 20940,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 37.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1055';

UPDATE pc4_cbs SET
  inwoners     = 20270,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 38.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1056';

UPDATE pc4_cbs SET
  inwoners     = 17290,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 38.2,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1057';

UPDATE pc4_cbs SET
  inwoners     = 15750,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 38.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1058';

UPDATE pc4_cbs SET
  inwoners     = 7110,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 37,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1059';

UPDATE pc4_cbs SET
  inwoners     = 9925,
  pct_vrouw    = 51,
  cbs_leeftijd = 39.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1060';

UPDATE pc4_cbs SET
  inwoners     = 16995,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 34.3,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1061';

UPDATE pc4_cbs SET
  inwoners     = 15585,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 34.2,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1062';

UPDATE pc4_cbs SET
  inwoners     = 12455,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 37.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1063';

UPDATE pc4_cbs SET
  inwoners     = 16815,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 38.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1064';

UPDATE pc4_cbs SET
  inwoners     = 12135,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 38.1,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1065';

UPDATE pc4_cbs SET
  inwoners     = 19130,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 40.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1066';

UPDATE pc4_cbs SET
  inwoners     = 20425,
  pct_vrouw    = 49,
  cbs_leeftijd = 36.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1067';

UPDATE pc4_cbs SET
  inwoners     = 18330,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 39.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1068';

UPDATE pc4_cbs SET
  inwoners     = 26255,
  pct_vrouw    = 50,
  cbs_leeftijd = 37.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1069';

UPDATE pc4_cbs SET
  inwoners     = 12735,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1071';

UPDATE pc4_cbs SET
  inwoners     = 13835,
  pct_vrouw    = 51,
  cbs_leeftijd = 40,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1072';

UPDATE pc4_cbs SET
  inwoners     = 13395,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 40.6,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1073';

UPDATE pc4_cbs SET
  inwoners     = 8370,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 40.9,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1074';

UPDATE pc4_cbs SET
  inwoners     = 10470,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 40.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1075';

UPDATE pc4_cbs SET
  inwoners     = 11390,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 40.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1076';

UPDATE pc4_cbs SET
  inwoners     = 10120,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 41,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1077';

UPDATE pc4_cbs SET
  inwoners     = 14690,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 39.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1078';

UPDATE pc4_cbs SET
  inwoners     = 14700,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 40.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1079';

UPDATE pc4_cbs SET
  inwoners     = 5800,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 44.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1081';

UPDATE pc4_cbs SET
  inwoners     = 12790,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 39.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1082';

UPDATE pc4_cbs SET
  inwoners     = 8735,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 40.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1083';

UPDATE pc4_cbs SET
  inwoners     = 4920,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 35.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1086';

UPDATE pc4_cbs SET
  inwoners     = 21045,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 34.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1087';

UPDATE pc4_cbs SET
  inwoners     = 16850,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 39.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1091';

UPDATE pc4_cbs SET
  inwoners     = 8560,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 39.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1092';

UPDATE pc4_cbs SET
  inwoners     = 10130,
  pct_vrouw    = 51,
  cbs_leeftijd = 41.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1093';

UPDATE pc4_cbs SET
  inwoners     = 12145,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 39,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1094';

UPDATE pc4_cbs SET
  inwoners     = 15645,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 37.8,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1095';

UPDATE pc4_cbs SET
  inwoners     = 5935,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 34.8,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1096';

UPDATE pc4_cbs SET
  inwoners     = 16360,
  pct_vrouw    = 50,
  cbs_leeftijd = 40.1,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1097';

UPDATE pc4_cbs SET
  inwoners     = 15515,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 37.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1098';

UPDATE pc4_cbs SET
  inwoners     = 1060,
  pct_vrouw    = 35.4,
  cbs_leeftijd = 32.1,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1101';

UPDATE pc4_cbs SET
  inwoners     = 25765,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 36.9,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1102';

UPDATE pc4_cbs SET
  inwoners     = 14305,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 40.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1103';

UPDATE pc4_cbs SET
  inwoners     = 15840,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 38.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1104';

UPDATE pc4_cbs SET
  inwoners     = 2810,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 29.9,
  pct_koop     = 0,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1105';

UPDATE pc4_cbs SET
  inwoners     = 17905,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 41.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1106';

UPDATE pc4_cbs SET
  inwoners     = 11570,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 42.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1107';

UPDATE pc4_cbs SET
  inwoners     = 3135,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 42.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1108';

UPDATE pc4_cbs SET
  inwoners     = 1675,
  pct_vrouw    = 51,
  cbs_leeftijd = 40.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1109';

UPDATE pc4_cbs SET
  inwoners     = 15220,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 39.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1111';

UPDATE pc4_cbs SET
  inwoners     = 14305,
  pct_vrouw    = 50,
  cbs_leeftijd = 37.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1112';

UPDATE pc4_cbs SET
  inwoners     = 3450,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 43.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1113';

UPDATE pc4_cbs SET
  inwoners     = 300,
  pct_vrouw    = 55,
  cbs_leeftijd = 38,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1114';

UPDATE pc4_cbs SET
  inwoners     = 5270,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 41.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1115';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 66.7,
  cbs_leeftijd = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1117';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 31.8,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1118';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 50,
  cbs_leeftijd = 36.2,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1119';

UPDATE pc4_cbs SET
  inwoners     = 10405,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 43.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1121';

UPDATE pc4_cbs SET
  inwoners     = 850,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1127';

UPDATE pc4_cbs SET
  inwoners     = 8920,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1131';

UPDATE pc4_cbs SET
  inwoners     = 13820,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 40.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1132';

UPDATE pc4_cbs SET
  inwoners     = 7340,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1135';

UPDATE pc4_cbs SET
  inwoners     = 9755,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1141';

UPDATE pc4_cbs SET
  inwoners     = 330,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1145';

UPDATE pc4_cbs SET
  inwoners     = 2770,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1151';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 45.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1153';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 52,
  cbs_leeftijd = 50.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1154';

UPDATE pc4_cbs SET
  inwoners     = 1730,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 47.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1156';

UPDATE pc4_cbs SET
  inwoners     = 8140,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 42.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1161';

UPDATE pc4_cbs SET
  inwoners     = 2615,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1165';

UPDATE pc4_cbs SET
  inwoners     = 14625,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 41.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1171';

UPDATE pc4_cbs SET
  inwoners     = 915,
  pct_vrouw    = 47,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1175';

UPDATE pc4_cbs SET
  inwoners     = 21615,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 39.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1181';

UPDATE pc4_cbs SET
  inwoners     = 3890,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 43,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1182';

UPDATE pc4_cbs SET
  inwoners     = 15295,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 37.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1183';

UPDATE pc4_cbs SET
  inwoners     = 625,
  pct_vrouw    = 48,
  cbs_leeftijd = 42.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1184';

UPDATE pc4_cbs SET
  inwoners     = 12760,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 42.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1185';

UPDATE pc4_cbs SET
  inwoners     = 14500,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 44.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1186';

UPDATE pc4_cbs SET
  inwoners     = 18500,
  pct_vrouw    = 51,
  cbs_leeftijd = 40,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1187';

UPDATE pc4_cbs SET
  inwoners     = 7315,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 44,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1188';

UPDATE pc4_cbs SET
  inwoners     = 515,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 46.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1189';

UPDATE pc4_cbs SET
  inwoners     = 8880,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1191';

UPDATE pc4_cbs SET
  inwoners     = 10230,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 39.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1211';

UPDATE pc4_cbs SET
  inwoners     = 3710,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 41.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1212';

UPDATE pc4_cbs SET
  inwoners     = 7890,
  pct_vrouw    = 51,
  cbs_leeftijd = 43.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1213';

UPDATE pc4_cbs SET
  inwoners     = 7640,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 41.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1214';

UPDATE pc4_cbs SET
  inwoners     = 10240,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1215';

UPDATE pc4_cbs SET
  inwoners     = 9050,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 45,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1216';

UPDATE pc4_cbs SET
  inwoners     = 7800,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 46.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1217';

UPDATE pc4_cbs SET
  inwoners     = 4165,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 46.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1218';

UPDATE pc4_cbs SET
  inwoners     = 9500,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 38.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1221';

UPDATE pc4_cbs SET
  inwoners     = 11400,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 40.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1222';

UPDATE pc4_cbs SET
  inwoners     = 12805,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 38.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1223';

UPDATE pc4_cbs SET
  inwoners     = 9350,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1231';

UPDATE pc4_cbs SET
  inwoners     = 6595,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 46.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1241';

UPDATE pc4_cbs SET
  inwoners     = 1410,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 47.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1243';

UPDATE pc4_cbs SET
  inwoners     = 1490,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1244';

UPDATE pc4_cbs SET
  inwoners     = 11080,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 48.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1251';

UPDATE pc4_cbs SET
  inwoners     = 355,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 40.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1252';

UPDATE pc4_cbs SET
  inwoners     = 11125,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1261';

UPDATE pc4_cbs SET
  inwoners     = 1600,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 32.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1262';

UPDATE pc4_cbs SET
  inwoners     = 8360,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 44.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1271';

UPDATE pc4_cbs SET
  inwoners     = 6270,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1272';

UPDATE pc4_cbs SET
  inwoners     = 8690,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 46.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1273';

UPDATE pc4_cbs SET
  inwoners     = 6345,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1274';

UPDATE pc4_cbs SET
  inwoners     = 2005,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 46.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1275';

UPDATE pc4_cbs SET
  inwoners     = 7510,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 44.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1276';

UPDATE pc4_cbs SET
  inwoners     = 2010,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1277';

UPDATE pc4_cbs SET
  inwoners     = 35,
  pct_vrouw    = 57.1,
  cbs_leeftijd = 60.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1309';

UPDATE pc4_cbs SET
  inwoners     = 4860,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 41.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1311';

UPDATE pc4_cbs SET
  inwoners     = 6935,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 40.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1312';

UPDATE pc4_cbs SET
  inwoners     = 4210,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1313';

UPDATE pc4_cbs SET
  inwoners     = 6825,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 38.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1314';

UPDATE pc4_cbs SET
  inwoners     = 4880,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 38.8,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1315';

UPDATE pc4_cbs SET
  inwoners     = 4070,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1316';

UPDATE pc4_cbs SET
  inwoners     = 4070,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1317';

UPDATE pc4_cbs SET
  inwoners     = 9490,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 39.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1318';

UPDATE pc4_cbs SET
  inwoners     = 7335,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 33.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1319';

UPDATE pc4_cbs SET
  inwoners     = 9695,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 38.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1321';

UPDATE pc4_cbs SET
  inwoners     = 140,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 33.2,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1322';

UPDATE pc4_cbs SET
  inwoners     = 6260,
  pct_vrouw    = 51,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1323';

UPDATE pc4_cbs SET
  inwoners     = 10455,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1324';

UPDATE pc4_cbs SET
  inwoners     = 10675,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 40.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1325';

UPDATE pc4_cbs SET
  inwoners     = 11100,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 39.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1326';

UPDATE pc4_cbs SET
  inwoners     = 5,
  cbs_leeftijd = 35,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1327';

UPDATE pc4_cbs SET
  inwoners     = 9910,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 38.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1328';

UPDATE pc4_cbs SET
  inwoners     = 195,
  pct_vrouw    = 43.6,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1331';

UPDATE pc4_cbs SET
  inwoners     = 10,
  pct_vrouw    = 50,
  cbs_leeftijd = 65,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1332';

UPDATE pc4_cbs SET
  inwoners     = 12450,
  pct_vrouw    = 51,
  cbs_leeftijd = 40.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1333';

UPDATE pc4_cbs SET
  inwoners     = 2465,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 42.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1334';

UPDATE pc4_cbs SET
  inwoners     = 12470,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 37.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1335';

UPDATE pc4_cbs SET
  inwoners     = 9805,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 35.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1336';

UPDATE pc4_cbs SET
  inwoners     = 9670,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 40.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1338';

UPDATE pc4_cbs SET
  inwoners     = 11305,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 37.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1339';

UPDATE pc4_cbs SET
  inwoners     = 4070,
  pct_vrouw    = 51,
  cbs_leeftijd = 29.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1341';

UPDATE pc4_cbs SET
  inwoners     = 1605,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 46.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1343';

UPDATE pc4_cbs SET
  inwoners     = 5245,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 37.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1349';

UPDATE pc4_cbs SET
  inwoners     = 2010,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1351';

UPDATE pc4_cbs SET
  inwoners     = 1695,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1352';

UPDATE pc4_cbs SET
  inwoners     = 4975,
  pct_vrouw    = 53.7,
  cbs_leeftijd = 42.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1353';

UPDATE pc4_cbs SET
  inwoners     = 3160,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 39,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1354';

UPDATE pc4_cbs SET
  inwoners     = 3070,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 41.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1355';

UPDATE pc4_cbs SET
  inwoners     = 2750,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 43.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1356';

UPDATE pc4_cbs SET
  inwoners     = 3440,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 45.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1357';

UPDATE pc4_cbs SET
  inwoners     = 700,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1358';

UPDATE pc4_cbs SET
  inwoners     = 2660,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 38.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1359';

UPDATE pc4_cbs SET
  inwoners     = 4665,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 34.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1361';

UPDATE pc4_cbs SET
  inwoners     = 990,
  pct_vrouw    = 53.5,
  cbs_leeftijd = 26.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1362';

UPDATE pc4_cbs SET
  inwoners     = 16150,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 32.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1363';

UPDATE pc4_cbs SET
  inwoners     = 5330,
  pct_vrouw    = 53,
  cbs_leeftijd = 45.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1381';

UPDATE pc4_cbs SET
  inwoners     = 10315,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 41.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1382';

UPDATE pc4_cbs SET
  inwoners     = 3565,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1383';

UPDATE pc4_cbs SET
  inwoners     = 4385,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 27,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1384';

UPDATE pc4_cbs SET
  inwoners     = 8260,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 42.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1391';

UPDATE pc4_cbs SET
  inwoners     = 1580,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1393';

UPDATE pc4_cbs SET
  inwoners     = 5570,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1394';

UPDATE pc4_cbs SET
  inwoners     = 1460,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 42.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1396';

UPDATE pc4_cbs SET
  inwoners     = 5530,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 39.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1398';

UPDATE pc4_cbs SET
  inwoners     = 3030,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1399';

UPDATE pc4_cbs SET
  inwoners     = 4760,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1401';

UPDATE pc4_cbs SET
  inwoners     = 9545,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 40.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1402';

UPDATE pc4_cbs SET
  inwoners     = 9410,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 43.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1403';

UPDATE pc4_cbs SET
  inwoners     = 3585,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1404';

UPDATE pc4_cbs SET
  inwoners     = 2845,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1405';

UPDATE pc4_cbs SET
  inwoners     = 3430,
  pct_vrouw    = 53.5,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1406';

UPDATE pc4_cbs SET
  inwoners     = 10495,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1411';

UPDATE pc4_cbs SET
  inwoners     = 7735,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 40.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1412';

UPDATE pc4_cbs SET
  inwoners     = 6085,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 41.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1421';

UPDATE pc4_cbs SET
  inwoners     = 15310,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 40.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1422';

UPDATE pc4_cbs SET
  inwoners     = 5530,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1423';

UPDATE pc4_cbs SET
  inwoners     = 4760,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1424';

UPDATE pc4_cbs SET
  inwoners     = 895,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 46.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1426';

UPDATE pc4_cbs SET
  inwoners     = 980,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1427';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 45.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1428';

UPDATE pc4_cbs SET
  inwoners     = 13480,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 44.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1431';

UPDATE pc4_cbs SET
  inwoners     = 10545,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 40.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1432';

UPDATE pc4_cbs SET
  inwoners     = 9255,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 41.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1433';

UPDATE pc4_cbs SET
  inwoners     = 4415,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1435';

UPDATE pc4_cbs SET
  inwoners     = 510,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1436';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 66.7,
  cbs_leeftijd = 44.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1437';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 48.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1438';

UPDATE pc4_cbs SET
  inwoners     = 15140,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1441';

UPDATE pc4_cbs SET
  inwoners     = 7245,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 42.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1442';

UPDATE pc4_cbs SET
  inwoners     = 8115,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 42.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1443';

UPDATE pc4_cbs SET
  inwoners     = 6785,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 48.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1444';

UPDATE pc4_cbs SET
  inwoners     = 9605,
  pct_vrouw    = 51,
  cbs_leeftijd = 42.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1445';

UPDATE pc4_cbs SET
  inwoners     = 5040,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1446';

UPDATE pc4_cbs SET
  inwoners     = 12350,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1447';

UPDATE pc4_cbs SET
  inwoners     = 19265,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 41.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1448';

UPDATE pc4_cbs SET
  inwoners     = 405,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1451';

UPDATE pc4_cbs SET
  inwoners     = 1815,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1452';

UPDATE pc4_cbs SET
  inwoners     = 550,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1454';

UPDATE pc4_cbs SET
  inwoners     = 1950,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1456';

UPDATE pc4_cbs SET
  inwoners     = 180,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 46.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1458';

UPDATE pc4_cbs SET
  inwoners     = 4485,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1461';

UPDATE pc4_cbs SET
  inwoners     = 5745,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1462';

UPDATE pc4_cbs SET
  inwoners     = 625,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1463';

UPDATE pc4_cbs SET
  inwoners     = 775,
  pct_vrouw    = 49,
  cbs_leeftijd = 43.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1464';

UPDATE pc4_cbs SET
  inwoners     = 800,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1471';

UPDATE pc4_cbs SET
  inwoners     = 700,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1472';

UPDATE pc4_cbs SET
  inwoners     = 780,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 47.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1473';

UPDATE pc4_cbs SET
  inwoners     = 3630,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1474';

UPDATE pc4_cbs SET
  inwoners     = 525,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 46.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1475';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 48.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1476';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 50,
  cbs_leeftijd = 50.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1477';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1481';

UPDATE pc4_cbs SET
  inwoners     = 140,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 46.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1482';

UPDATE pc4_cbs SET
  inwoners     = 4270,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1483';

UPDATE pc4_cbs SET
  inwoners     = 885,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 47.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1484';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 41.2,
  cbs_leeftijd = 45.5,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1485';

UPDATE pc4_cbs SET
  inwoners     = 755,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 50.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1486';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 47.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1487';

UPDATE pc4_cbs SET
  inwoners     = 220,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 43.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1488';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1489';

UPDATE pc4_cbs SET
  inwoners     = 6515,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 40.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1501';

UPDATE pc4_cbs SET
  inwoners     = 8890,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1502';

UPDATE pc4_cbs SET
  inwoners     = 11390,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 40.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1503';

UPDATE pc4_cbs SET
  inwoners     = 8415,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 37.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1504';

UPDATE pc4_cbs SET
  inwoners     = 7080,
  pct_vrouw    = 48,
  cbs_leeftijd = 37.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1505';

UPDATE pc4_cbs SET
  inwoners     = 14125,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1506';

UPDATE pc4_cbs SET
  inwoners     = 13400,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1507';

UPDATE pc4_cbs SET
  inwoners     = 5130,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 38.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1508';

UPDATE pc4_cbs SET
  inwoners     = 6495,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1509';

UPDATE pc4_cbs SET
  inwoners     = 9695,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1511';

UPDATE pc4_cbs SET
  inwoners     = 12300,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1521';

UPDATE pc4_cbs SET
  inwoners     = 570,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1525';

UPDATE pc4_cbs SET
  inwoners     = 13255,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1531';

UPDATE pc4_cbs SET
  inwoners     = 485,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 48.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1534';

UPDATE pc4_cbs SET
  inwoners     = 320,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1536';

UPDATE pc4_cbs SET
  inwoners     = 11255,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1541';

UPDATE pc4_cbs SET
  inwoners     = 8515,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1544';

UPDATE pc4_cbs SET
  inwoners     = 685,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 47.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1546';

UPDATE pc4_cbs SET
  inwoners     = 5090,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1551';

UPDATE pc4_cbs SET
  inwoners     = 8330,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1561';

UPDATE pc4_cbs SET
  inwoners     = 9000,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1562';

UPDATE pc4_cbs SET
  inwoners     = 13250,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1566';

UPDATE pc4_cbs SET
  inwoners     = 11620,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 33.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1567';

UPDATE pc4_cbs SET
  inwoners     = 7610,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 48.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1601';

UPDATE pc4_cbs SET
  inwoners     = 11285,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 40.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1602';

UPDATE pc4_cbs SET
  inwoners     = 4300,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1606';

UPDATE pc4_cbs SET
  inwoners     = 1645,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 43.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1607';

UPDATE pc4_cbs SET
  inwoners     = 1535,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1608';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 54.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1609';

UPDATE pc4_cbs SET
  inwoners     = 10160,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1611';

UPDATE pc4_cbs SET
  inwoners     = 9790,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1613';

UPDATE pc4_cbs SET
  inwoners     = 2265,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1614';

UPDATE pc4_cbs SET
  inwoners     = 8695,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 43.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1616';

UPDATE pc4_cbs SET
  inwoners     = 1830,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1617';

UPDATE pc4_cbs SET
  inwoners     = 7225,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1619';

UPDATE pc4_cbs SET
  inwoners     = 5825,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 47.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1621';

UPDATE pc4_cbs SET
  inwoners     = 7855,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 41.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1622';

UPDATE pc4_cbs SET
  inwoners     = 2595,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1623';

UPDATE pc4_cbs SET
  inwoners     = 5990,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 43.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1624';

UPDATE pc4_cbs SET
  inwoners     = 9940,
  pct_vrouw    = 52,
  cbs_leeftijd = 46.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1625';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 33.3,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1627';

UPDATE pc4_cbs SET
  inwoners     = 20400,
  pct_vrouw    = 50,
  cbs_leeftijd = 41,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1628';

UPDATE pc4_cbs SET
  inwoners     = 435,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 48.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1631';

UPDATE pc4_cbs SET
  inwoners     = 3455,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1633';

UPDATE pc4_cbs SET
  inwoners     = 525,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1634';

UPDATE pc4_cbs SET
  inwoners     = 1260,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1636';

UPDATE pc4_cbs SET
  inwoners     = 1060,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1641';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 46.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1642';

UPDATE pc4_cbs SET
  inwoners     = 475,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 46,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1643';

UPDATE pc4_cbs SET
  inwoners     = 2975,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1645';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 43.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1646';

UPDATE pc4_cbs SET
  inwoners     = 2675,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1647';

UPDATE pc4_cbs SET
  inwoners     = 3825,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 39.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1648';

UPDATE pc4_cbs SET
  inwoners     = 550,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1652';

UPDATE pc4_cbs SET
  inwoners     = 750,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1654';

UPDATE pc4_cbs SET
  inwoners     = 930,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1655';

UPDATE pc4_cbs SET
  inwoners     = 2050,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1657';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1658';

UPDATE pc4_cbs SET
  inwoners     = 425,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 45.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1661';

UPDATE pc4_cbs SET
  inwoners     = 300,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1662';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 41.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1663';

UPDATE pc4_cbs SET
  inwoners     = 8655,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1671';

UPDATE pc4_cbs SET
  inwoners     = 1985,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1674';

UPDATE pc4_cbs SET
  inwoners     = 1070,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 47.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1676';

UPDATE pc4_cbs SET
  inwoners     = 865,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 46.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1678';

UPDATE pc4_cbs SET
  inwoners     = 2545,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1679';

UPDATE pc4_cbs SET
  inwoners     = 280,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 43.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1681';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 41,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1682';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 41.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1683';

UPDATE pc4_cbs SET
  inwoners     = 590,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 39.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1684';

UPDATE pc4_cbs SET
  inwoners     = 480,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1685';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 42.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1686';

UPDATE pc4_cbs SET
  inwoners     = 6345,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 43.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1687';

UPDATE pc4_cbs SET
  inwoners     = 2600,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1688';

UPDATE pc4_cbs SET
  inwoners     = 17600,
  pct_vrouw    = 50,
  cbs_leeftijd = 38.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1689';

UPDATE pc4_cbs SET
  inwoners     = 710,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1691';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 50,
  cbs_leeftijd = 61.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1692';

UPDATE pc4_cbs SET
  inwoners     = 8170,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1693';

UPDATE pc4_cbs SET
  inwoners     = 5420,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1695';

UPDATE pc4_cbs SET
  inwoners     = 1545,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 42.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1696';

UPDATE pc4_cbs SET
  inwoners     = 840,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 48.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1697';

UPDATE pc4_cbs SET
  inwoners     = 9175,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1701';

UPDATE pc4_cbs SET
  inwoners     = 8505,
  pct_vrouw    = 51,
  cbs_leeftijd = 45.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1702';

UPDATE pc4_cbs SET
  inwoners     = 12735,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1703';

UPDATE pc4_cbs SET
  inwoners     = 10070,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 39.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1704';

UPDATE pc4_cbs SET
  inwoners     = 17010,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 37.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1705';

UPDATE pc4_cbs SET
  inwoners     = 3715,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 33.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1706';

UPDATE pc4_cbs SET
  inwoners     = 1590,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1711';

UPDATE pc4_cbs SET
  inwoners     = 5975,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1713';

UPDATE pc4_cbs SET
  inwoners     = 4815,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 41.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1715';

UPDATE pc4_cbs SET
  inwoners     = 2135,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1716';

UPDATE pc4_cbs SET
  inwoners     = 3940,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1718';

UPDATE pc4_cbs SET
  inwoners     = 465,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 47.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1719';

UPDATE pc4_cbs SET
  inwoners     = 6045,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1721';

UPDATE pc4_cbs SET
  inwoners     = 6865,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1722';

UPDATE pc4_cbs SET
  inwoners     = 5985,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1723';

UPDATE pc4_cbs SET
  inwoners     = 3840,
  pct_vrouw    = 49,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1724';

UPDATE pc4_cbs SET
  inwoners     = 3505,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1731';

UPDATE pc4_cbs SET
  inwoners     = 780,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1732';

UPDATE pc4_cbs SET
  inwoners     = 3320,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1733';

UPDATE pc4_cbs SET
  inwoners     = 395,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 47.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1734';

UPDATE pc4_cbs SET
  inwoners     = 2275,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1735';

UPDATE pc4_cbs SET
  inwoners     = 395,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1736';

UPDATE pc4_cbs SET
  inwoners     = 2760,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1738';

UPDATE pc4_cbs SET
  inwoners     = 13140,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 45.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1741';

UPDATE pc4_cbs SET
  inwoners     = 6565,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1742';

UPDATE pc4_cbs SET
  inwoners     = 1845,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 47.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1744';

UPDATE pc4_cbs SET
  inwoners     = 1685,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 46.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1746';

UPDATE pc4_cbs SET
  inwoners     = 3855,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1747';

UPDATE pc4_cbs SET
  inwoners     = 6090,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1749';

UPDATE pc4_cbs SET
  inwoners     = 2115,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1751';

UPDATE pc4_cbs SET
  inwoners     = 735,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1752';

UPDATE pc4_cbs SET
  inwoners     = 665,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1753';

UPDATE pc4_cbs SET
  inwoners     = 885,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1754';

UPDATE pc4_cbs SET
  inwoners     = 1650,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1755';

UPDATE pc4_cbs SET
  inwoners     = 2625,
  pct_vrouw    = 51,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1756';

UPDATE pc4_cbs SET
  inwoners     = 705,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 47.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1757';

UPDATE pc4_cbs SET
  inwoners     = 2405,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 50.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1759';

UPDATE pc4_cbs SET
  inwoners     = 8735,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1761';

UPDATE pc4_cbs SET
  inwoners     = 3810,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1764';

UPDATE pc4_cbs SET
  inwoners     = 2380,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1766';

UPDATE pc4_cbs SET
  inwoners     = 1070,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1767';

UPDATE pc4_cbs SET
  inwoners     = 910,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1768';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 50.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1769';

UPDATE pc4_cbs SET
  inwoners     = 6080,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1771';

UPDATE pc4_cbs SET
  inwoners     = 575,
  pct_vrouw    = 46.1,
  cbs_leeftijd = 37.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1773';

UPDATE pc4_cbs SET
  inwoners     = 2195,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 40.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1774';

UPDATE pc4_cbs SET
  inwoners     = 4330,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 42.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1775';

UPDATE pc4_cbs SET
  inwoners     = 5240,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1777';

UPDATE pc4_cbs SET
  inwoners     = 915,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 47.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1778';

UPDATE pc4_cbs SET
  inwoners     = 2430,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1779';

UPDATE pc4_cbs SET
  inwoners     = 9175,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1781';

UPDATE pc4_cbs SET
  inwoners     = 10330,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1782';

UPDATE pc4_cbs SET
  inwoners     = 2615,
  pct_vrouw    = 53.9,
  cbs_leeftijd = 45.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1783';

UPDATE pc4_cbs SET
  inwoners     = 9295,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1784';

UPDATE pc4_cbs SET
  inwoners     = 9090,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 49.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1785';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 52.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1786';

UPDATE pc4_cbs SET
  inwoners     = 3480,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1787';

UPDATE pc4_cbs SET
  inwoners     = 11715,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1788';

UPDATE pc4_cbs SET
  inwoners     = 580,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 50.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1789';

UPDATE pc4_cbs SET
  inwoners     = 7205,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 47.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1791';

UPDATE pc4_cbs SET
  inwoners     = 1465,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1792';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 50.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1793';

UPDATE pc4_cbs SET
  inwoners     = 1315,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1794';

UPDATE pc4_cbs SET
  inwoners     = 1160,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1795';

UPDATE pc4_cbs SET
  inwoners     = 1360,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 46.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1796';

UPDATE pc4_cbs SET
  inwoners     = 970,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 49.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1797';

UPDATE pc4_cbs SET
  inwoners     = 5460,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 42.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1811';

UPDATE pc4_cbs SET
  inwoners     = 220,
  pct_vrouw    = 43.2,
  cbs_leeftijd = 49.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1812';

UPDATE pc4_cbs SET
  inwoners     = 9025,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 40.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1813';

UPDATE pc4_cbs SET
  inwoners     = 9635,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 44.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1814';

UPDATE pc4_cbs SET
  inwoners     = 7200,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1815';

UPDATE pc4_cbs SET
  inwoners     = 8540,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1816';

UPDATE pc4_cbs SET
  inwoners     = 4290,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 42.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1817';

UPDATE pc4_cbs SET
  inwoners     = 1660,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 43.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1821';

UPDATE pc4_cbs SET
  inwoners     = 6455,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 36.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1822';

UPDATE pc4_cbs SET
  inwoners     = 7420,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 43.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1823';

UPDATE pc4_cbs SET
  inwoners     = 7720,
  pct_vrouw    = 51,
  cbs_leeftijd = 42.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1824';

UPDATE pc4_cbs SET
  inwoners     = 9095,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1825';

UPDATE pc4_cbs SET
  inwoners     = 6495,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1826';

UPDATE pc4_cbs SET
  inwoners     = 10325,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1827';

UPDATE pc4_cbs SET
  inwoners     = 4050,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 46.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1829';

UPDATE pc4_cbs SET
  inwoners     = 2395,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 45.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1831';

UPDATE pc4_cbs SET
  inwoners     = 265,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1832';

UPDATE pc4_cbs SET
  inwoners     = 5860,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1834';

UPDATE pc4_cbs SET
  inwoners     = 2105,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1841';

UPDATE pc4_cbs SET
  inwoners     = 605,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 47.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1842';

UPDATE pc4_cbs SET
  inwoners     = 710,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1843';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 50,
  cbs_leeftijd = 49,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1844';

UPDATE pc4_cbs SET
  inwoners     = 395,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1846';

UPDATE pc4_cbs SET
  inwoners     = 260,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 41.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1847';

UPDATE pc4_cbs SET
  inwoners     = 12695,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1851';

UPDATE pc4_cbs SET
  inwoners     = 10415,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 48.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1852';

UPDATE pc4_cbs SET
  inwoners     = 1200,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 35.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1853';

UPDATE pc4_cbs SET
  inwoners     = 6455,
  pct_vrouw    = 53.2,
  cbs_leeftijd = 52,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1861';

UPDATE pc4_cbs SET
  inwoners     = 6205,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 49.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1862';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 55.2,
  cbs_leeftijd = 53,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1865';

UPDATE pc4_cbs SET
  inwoners     = 4765,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 51.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1871';

UPDATE pc4_cbs SET
  inwoners     = 1460,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 48.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1873';

UPDATE pc4_cbs SET
  inwoners     = 14765,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 45.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1901';

UPDATE pc4_cbs SET
  inwoners     = 8595,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 46.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1902';

UPDATE pc4_cbs SET
  inwoners     = 7775,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1906';

UPDATE pc4_cbs SET
  inwoners     = 13400,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1911';

UPDATE pc4_cbs SET
  inwoners     = 5085,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1921';

UPDATE pc4_cbs SET
  inwoners     = 4590,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 51.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1931';

UPDATE pc4_cbs SET
  inwoners     = 3560,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1934';

UPDATE pc4_cbs SET
  inwoners     = 2570,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 46.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1935';

UPDATE pc4_cbs SET
  inwoners     = 3730,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 45.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1941';

UPDATE pc4_cbs SET
  inwoners     = 2490,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1942';

UPDATE pc4_cbs SET
  inwoners     = 5365,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1943';

UPDATE pc4_cbs SET
  inwoners     = 7205,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 42.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1944';

UPDATE pc4_cbs SET
  inwoners     = 7235,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1945';

UPDATE pc4_cbs SET
  inwoners     = 4665,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 39.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1946';

UPDATE pc4_cbs SET
  inwoners     = 3865,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 41.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1947';

UPDATE pc4_cbs SET
  inwoners     = 6165,
  pct_vrouw    = 49,
  cbs_leeftijd = 34.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1948';

UPDATE pc4_cbs SET
  inwoners     = 2150,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 47,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1949';

UPDATE pc4_cbs SET
  inwoners     = 5710,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 38.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1951';

UPDATE pc4_cbs SET
  inwoners     = 1280,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 54,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1961';

UPDATE pc4_cbs SET
  inwoners     = 7800,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 42.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1962';

UPDATE pc4_cbs SET
  inwoners     = 5570,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1963';

UPDATE pc4_cbs SET
  inwoners     = 7010,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 46.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1964';

UPDATE pc4_cbs SET
  inwoners     = 5925,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1965';

UPDATE pc4_cbs SET
  inwoners     = 5085,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1966';

UPDATE pc4_cbs SET
  inwoners     = 5210,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 39,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1967';

UPDATE pc4_cbs SET
  inwoners     = 310,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 52,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1968';

UPDATE pc4_cbs SET
  inwoners     = 1260,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1969';

UPDATE pc4_cbs SET
  inwoners     = 8960,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 41.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1971';

UPDATE pc4_cbs SET
  inwoners     = 8230,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 43.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1972';

UPDATE pc4_cbs SET
  inwoners     = 5900,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 42.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1973';

UPDATE pc4_cbs SET
  inwoners     = 6215,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 45.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1974';

UPDATE pc4_cbs SET
  inwoners     = 2870,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 41.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1975';

UPDATE pc4_cbs SET
  inwoners     = 315,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 52.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1976';

UPDATE pc4_cbs SET
  inwoners     = 2135,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 49.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1981';

UPDATE pc4_cbs SET
  inwoners     = 3155,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 49.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1985';

UPDATE pc4_cbs SET
  inwoners     = 13095,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1991';

UPDATE pc4_cbs SET
  inwoners     = 1985,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '1992';

UPDATE pc4_cbs SET
  inwoners     = 14600,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2011';

UPDATE pc4_cbs SET
  inwoners     = 13090,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2012';

UPDATE pc4_cbs SET
  inwoners     = 8295,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 40.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2013';

UPDATE pc4_cbs SET
  inwoners     = 8875,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 39.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2014';

UPDATE pc4_cbs SET
  inwoners     = 5700,
  pct_vrouw    = 51,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2015';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2019';

UPDATE pc4_cbs SET
  inwoners     = 9150,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 37.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2021';

UPDATE pc4_cbs SET
  inwoners     = 9170,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 38.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2022';

UPDATE pc4_cbs SET
  inwoners     = 13395,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 39.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2023';

UPDATE pc4_cbs SET
  inwoners     = 9275,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2024';

UPDATE pc4_cbs SET
  inwoners     = 9790,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2025';

UPDATE pc4_cbs SET
  inwoners     = 5670,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 40.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2026';

UPDATE pc4_cbs SET
  inwoners     = 2030,
  pct_vrouw    = 48,
  cbs_leeftijd = 41.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2031';

UPDATE pc4_cbs SET
  inwoners     = 8215,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 40.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2032';

UPDATE pc4_cbs SET
  inwoners     = 13130,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 42.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2033';

UPDATE pc4_cbs SET
  inwoners     = 10250,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 42.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2034';

UPDATE pc4_cbs SET
  inwoners     = 9255,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 37.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2035';

UPDATE pc4_cbs SET
  inwoners     = 7625,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2036';

UPDATE pc4_cbs SET
  inwoners     = 9380,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 41.5,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2037';

UPDATE pc4_cbs SET
  inwoners     = 7870,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 44.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2041';

UPDATE pc4_cbs SET
  inwoners     = 8570,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 48.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2042';

UPDATE pc4_cbs SET
  inwoners     = 4570,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2051';

UPDATE pc4_cbs SET
  inwoners     = 6745,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 47.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2061';

UPDATE pc4_cbs SET
  inwoners     = 600,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 46.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2063';

UPDATE pc4_cbs SET
  inwoners     = 3545,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 40.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2064';

UPDATE pc4_cbs SET
  inwoners     = 315,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 47.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2065';

UPDATE pc4_cbs SET
  inwoners     = 7240,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2071';

UPDATE pc4_cbs SET
  inwoners     = 3360,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2082';

UPDATE pc4_cbs SET
  inwoners     = 7610,
  pct_vrouw    = 54.3,
  cbs_leeftijd = 47,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2101';

UPDATE pc4_cbs SET
  inwoners     = 5505,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2102';

UPDATE pc4_cbs SET
  inwoners     = 3790,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 41.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2103';

UPDATE pc4_cbs SET
  inwoners     = 3730,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 46.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2104';

UPDATE pc4_cbs SET
  inwoners     = 3900,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 48.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2105';

UPDATE pc4_cbs SET
  inwoners     = 3055,
  pct_vrouw    = 52,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2106';

UPDATE pc4_cbs SET
  inwoners     = 4850,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2111';

UPDATE pc4_cbs SET
  inwoners     = 2195,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 48.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2114';

UPDATE pc4_cbs SET
  inwoners     = 1025,
  pct_vrouw    = 53.7,
  cbs_leeftijd = 52.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2116';

UPDATE pc4_cbs SET
  inwoners     = 5420,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 46.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2121';

UPDATE pc4_cbs SET
  inwoners     = 10995,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2131';

UPDATE pc4_cbs SET
  inwoners     = 14035,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 40.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2132';

UPDATE pc4_cbs SET
  inwoners     = 7815,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2133';

UPDATE pc4_cbs SET
  inwoners     = 28080,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 40,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2134';

UPDATE pc4_cbs SET
  inwoners     = 18970,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 40,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2135';

UPDATE pc4_cbs SET
  inwoners     = 2185,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2136';

UPDATE pc4_cbs SET
  inwoners     = 4915,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2141';

UPDATE pc4_cbs SET
  inwoners     = 1830,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 39.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2142';

UPDATE pc4_cbs SET
  inwoners     = 140,
  pct_vrouw    = 39.3,
  cbs_leeftijd = 45.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2143';

UPDATE pc4_cbs SET
  inwoners     = 1000,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2144';

UPDATE pc4_cbs SET
  inwoners     = 15840,
  pct_vrouw    = 51,
  cbs_leeftijd = 41.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2151';

UPDATE pc4_cbs SET
  inwoners     = 12555,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 38.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2152';

UPDATE pc4_cbs SET
  inwoners     = 3360,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 44,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2153';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2154';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 42.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2155';

UPDATE pc4_cbs SET
  inwoners     = 375,
  pct_vrouw    = 48,
  cbs_leeftijd = 46.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2156';

UPDATE pc4_cbs SET
  inwoners     = 1265,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2157';

UPDATE pc4_cbs SET
  inwoners     = 480,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2158';

UPDATE pc4_cbs SET
  inwoners     = 410,
  pct_vrouw    = 50,
  cbs_leeftijd = 49.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2159';

UPDATE pc4_cbs SET
  inwoners     = 13150,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2161';

UPDATE pc4_cbs SET
  inwoners     = 7480,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2162';

UPDATE pc4_cbs SET
  inwoners     = 2815,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2163';

UPDATE pc4_cbs SET
  inwoners     = 3335,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2165';

UPDATE pc4_cbs SET
  inwoners     = 10450,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 44.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2171';

UPDATE pc4_cbs SET
  inwoners     = 5635,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 41.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2172';

UPDATE pc4_cbs SET
  inwoners     = 9915,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 42.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2181';

UPDATE pc4_cbs SET
  inwoners     = 12905,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2182';

UPDATE pc4_cbs SET
  inwoners     = 2395,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2191';

UPDATE pc4_cbs SET
  inwoners     = 13570,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2201';

UPDATE pc4_cbs SET
  inwoners     = 8050,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 46.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2202';

UPDATE pc4_cbs SET
  inwoners     = 4950,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2203';

UPDATE pc4_cbs SET
  inwoners     = 1035,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2204';

UPDATE pc4_cbs SET
  inwoners     = 14735,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2211';

UPDATE pc4_cbs SET
  inwoners     = 995,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 34.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2212';

UPDATE pc4_cbs SET
  inwoners     = 16475,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2215';

UPDATE pc4_cbs SET
  inwoners     = 800,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 38.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2216';

UPDATE pc4_cbs SET
  inwoners     = 13470,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 41.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2221';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 25,
  cbs_leeftijd = 36.7,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2222';

UPDATE pc4_cbs SET
  inwoners     = 6245,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2223';

UPDATE pc4_cbs SET
  inwoners     = 9675,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 40.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2224';

UPDATE pc4_cbs SET
  inwoners     = 14055,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 41.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2225';

UPDATE pc4_cbs SET
  inwoners     = 16405,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2231';

UPDATE pc4_cbs SET
  inwoners     = 825,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 36.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2232';

UPDATE pc4_cbs SET
  inwoners     = 6270,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 37.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2235';

UPDATE pc4_cbs SET
  inwoners     = 10370,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 44.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2241';

UPDATE pc4_cbs SET
  inwoners     = 9525,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 44.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2242';

UPDATE pc4_cbs SET
  inwoners     = 2945,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 50.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2243';

UPDATE pc4_cbs SET
  inwoners     = 2075,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 40.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2244';

UPDATE pc4_cbs SET
  inwoners     = 2185,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 46.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2245';

UPDATE pc4_cbs SET
  inwoners     = 11215,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2251';

UPDATE pc4_cbs SET
  inwoners     = 5360,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2252';

UPDATE pc4_cbs SET
  inwoners     = 8205,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2253';

UPDATE pc4_cbs SET
  inwoners     = 840,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 40.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2254';

UPDATE pc4_cbs SET
  inwoners     = 4970,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 49,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2261';

UPDATE pc4_cbs SET
  inwoners     = 3305,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 42.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2262';

UPDATE pc4_cbs SET
  inwoners     = 6035,
  pct_vrouw    = 53.4,
  cbs_leeftijd = 42.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2263';

UPDATE pc4_cbs SET
  inwoners     = 8655,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 45.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2264';

UPDATE pc4_cbs SET
  inwoners     = 4935,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 46.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2265';

UPDATE pc4_cbs SET
  inwoners     = 6625,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2266';

UPDATE pc4_cbs SET
  inwoners     = 410,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 45.4,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2267';

UPDATE pc4_cbs SET
  inwoners     = 7260,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2271';

UPDATE pc4_cbs SET
  inwoners     = 8520,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 45.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2272';

UPDATE pc4_cbs SET
  inwoners     = 11025,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 44,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2273';

UPDATE pc4_cbs SET
  inwoners     = 11665,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 39.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2274';

UPDATE pc4_cbs SET
  inwoners     = 4820,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2275';

UPDATE pc4_cbs SET
  inwoners     = 4720,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2281';

UPDATE pc4_cbs SET
  inwoners     = 10490,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 42.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2282';

UPDATE pc4_cbs SET
  inwoners     = 6480,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 42.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2283';

UPDATE pc4_cbs SET
  inwoners     = 5165,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 44.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2284';

UPDATE pc4_cbs SET
  inwoners     = 8680,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 46.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2285';

UPDATE pc4_cbs SET
  inwoners     = 13430,
  pct_vrouw    = 52,
  cbs_leeftijd = 39,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2286';

UPDATE pc4_cbs SET
  inwoners     = 4475,
  pct_vrouw    = 54,
  cbs_leeftijd = 40.5,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2287';

UPDATE pc4_cbs SET
  inwoners     = 4365,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 35.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2288';

UPDATE pc4_cbs SET
  inwoners     = 1835,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2289';

UPDATE pc4_cbs SET
  inwoners     = 13985,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 41.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2291';

UPDATE pc4_cbs SET
  inwoners     = 2825,
  pct_vrouw    = 51,
  cbs_leeftijd = 39.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2292';

UPDATE pc4_cbs SET
  inwoners     = 3920,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 42.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2295';

UPDATE pc4_cbs SET
  inwoners     = 11355,
  pct_vrouw    = 53.2,
  cbs_leeftijd = 36,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2311';

UPDATE pc4_cbs SET
  inwoners     = 15260,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 36.6,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2312';

UPDATE pc4_cbs SET
  inwoners     = 12375,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 41,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2313';

UPDATE pc4_cbs SET
  inwoners     = 6200,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2314';

UPDATE pc4_cbs SET
  inwoners     = 8715,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 38.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2315';

UPDATE pc4_cbs SET
  inwoners     = 10725,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 37.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2316';

UPDATE pc4_cbs SET
  inwoners     = 10720,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2317';

UPDATE pc4_cbs SET
  inwoners     = 3245,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 42.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2318';

UPDATE pc4_cbs SET
  inwoners     = 12795,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 38,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2321';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 32.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2322';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 48.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2323';

UPDATE pc4_cbs SET
  inwoners     = 9965,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 43.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2324';

UPDATE pc4_cbs SET
  inwoners     = 10705,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2331';

UPDATE pc4_cbs SET
  inwoners     = 10545,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 42.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2332';

UPDATE pc4_cbs SET
  inwoners     = 4300,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 32.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2333';

UPDATE pc4_cbs SET
  inwoners     = 2805,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 39.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2334';

UPDATE pc4_cbs SET
  inwoners     = 10105,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2341';

UPDATE pc4_cbs SET
  inwoners     = 4570,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 33.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2342';

UPDATE pc4_cbs SET
  inwoners     = 11270,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2343';

UPDATE pc4_cbs SET
  inwoners     = 5335,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2351';

UPDATE pc4_cbs SET
  inwoners     = 8935,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 43.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2352';

UPDATE pc4_cbs SET
  inwoners     = 13465,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2353';

UPDATE pc4_cbs SET
  inwoners     = 1715,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2355';

UPDATE pc4_cbs SET
  inwoners     = 4950,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 46.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2361';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 52.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2362';

UPDATE pc4_cbs SET
  inwoners     = 10395,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2371';

UPDATE pc4_cbs SET
  inwoners     = 750,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2374';

UPDATE pc4_cbs SET
  inwoners     = 1645,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 42.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2375';

UPDATE pc4_cbs SET
  inwoners     = 715,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2376';

UPDATE pc4_cbs SET
  inwoners     = 3740,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2377';

UPDATE pc4_cbs SET
  inwoners     = 5845,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2381';

UPDATE pc4_cbs SET
  inwoners     = 3815,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 39.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2382';

UPDATE pc4_cbs SET
  inwoners     = 6330,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2391';

UPDATE pc4_cbs SET
  inwoners     = 5860,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2394';

UPDATE pc4_cbs SET
  inwoners     = 4130,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2396';

UPDATE pc4_cbs SET
  inwoners     = 9370,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2401';

UPDATE pc4_cbs SET
  inwoners     = 13500,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 43.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2402';

UPDATE pc4_cbs SET
  inwoners     = 10110,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2403';

UPDATE pc4_cbs SET
  inwoners     = 5355,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2404';

UPDATE pc4_cbs SET
  inwoners     = 8235,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2405';

UPDATE pc4_cbs SET
  inwoners     = 9710,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2406';

UPDATE pc4_cbs SET
  inwoners     = 885,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2407';

UPDATE pc4_cbs SET
  inwoners     = 17955,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 40.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2408';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 48.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2409';

UPDATE pc4_cbs SET
  inwoners     = 17715,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2411';

UPDATE pc4_cbs SET
  inwoners     = 2030,
  pct_vrouw    = 49,
  cbs_leeftijd = 29.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2412';

UPDATE pc4_cbs SET
  inwoners     = 1940,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2415';

UPDATE pc4_cbs SET
  inwoners     = 9385,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2421';

UPDATE pc4_cbs SET
  inwoners     = 1820,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2431';

UPDATE pc4_cbs SET
  inwoners     = 195,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 47.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2432';

UPDATE pc4_cbs SET
  inwoners     = 3060,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2435';

UPDATE pc4_cbs SET
  inwoners     = 4390,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2441';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2445';

UPDATE pc4_cbs SET
  inwoners     = 4825,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2451';

UPDATE pc4_cbs SET
  inwoners     = 9725,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2461';

UPDATE pc4_cbs SET
  inwoners     = 1270,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2465';

UPDATE pc4_cbs SET
  inwoners     = 1855,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2471';

UPDATE pc4_cbs SET
  inwoners     = 3700,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2481';

UPDATE pc4_cbs SET
  inwoners     = 245,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 46.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2491';

UPDATE pc4_cbs SET
  inwoners     = 12275,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 41.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2492';

UPDATE pc4_cbs SET
  inwoners     = 8085,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 34.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2493';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2495';

UPDATE pc4_cbs SET
  inwoners     = 11520,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 36.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2496';

UPDATE pc4_cbs SET
  inwoners     = 10200,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 39,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2497';

UPDATE pc4_cbs SET
  inwoners     = 5715,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 37,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2498';

UPDATE pc4_cbs SET
  inwoners     = 5580,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 38.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2511';

UPDATE pc4_cbs SET
  inwoners     = 14850,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 38.9,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2512';

UPDATE pc4_cbs SET
  inwoners     = 8245,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 40.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2513';

UPDATE pc4_cbs SET
  inwoners     = 3890,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2514';

UPDATE pc4_cbs SET
  inwoners     = 13180,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 37.8,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2515';

UPDATE pc4_cbs SET
  inwoners     = 10540,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 35.4,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2516';

UPDATE pc4_cbs SET
  inwoners     = 11620,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2517';

UPDATE pc4_cbs SET
  inwoners     = 11915,
  pct_vrouw    = 51,
  cbs_leeftijd = 39.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2518';

UPDATE pc4_cbs SET
  inwoners     = 12730,
  pct_vrouw    = 50,
  cbs_leeftijd = 34.4,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2521';

UPDATE pc4_cbs SET
  inwoners     = 12930,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 36.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2522';

UPDATE pc4_cbs SET
  inwoners     = 5680,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 36.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2523';

UPDATE pc4_cbs SET
  inwoners     = 6725,
  pct_vrouw    = 48,
  cbs_leeftijd = 36.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2524';

UPDATE pc4_cbs SET
  inwoners     = 17340,
  pct_vrouw    = 45.3,
  cbs_leeftijd = 37.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2525';

UPDATE pc4_cbs SET
  inwoners     = 12870,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 38,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2526';

UPDATE pc4_cbs SET
  inwoners     = 9390,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 37.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2531';

UPDATE pc4_cbs SET
  inwoners     = 6035,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 36.6,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2532';

UPDATE pc4_cbs SET
  inwoners     = 7410,
  pct_vrouw    = 49,
  cbs_leeftijd = 38.9,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2533';

UPDATE pc4_cbs SET
  inwoners     = 8090,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 37.6,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2541';

UPDATE pc4_cbs SET
  inwoners     = 10615,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 37.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2542';

UPDATE pc4_cbs SET
  inwoners     = 6390,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 38.1,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2543';

UPDATE pc4_cbs SET
  inwoners     = 12770,
  pct_vrouw    = 50,
  cbs_leeftijd = 39,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2544';

UPDATE pc4_cbs SET
  inwoners     = 13235,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 38.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2545';

UPDATE pc4_cbs SET
  inwoners     = 6305,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 38.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2546';

UPDATE pc4_cbs SET
  inwoners     = 8445,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 43,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2547';

UPDATE pc4_cbs SET
  inwoners     = 23860,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 38.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2548';

UPDATE pc4_cbs SET
  inwoners     = 11385,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 45.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2551';

UPDATE pc4_cbs SET
  inwoners     = 16160,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 44.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2552';

UPDATE pc4_cbs SET
  inwoners     = 12675,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2553';

UPDATE pc4_cbs SET
  inwoners     = 2565,
  pct_vrouw    = 53.2,
  cbs_leeftijd = 49,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2554';

UPDATE pc4_cbs SET
  inwoners     = 9280,
  pct_vrouw    = 55,
  cbs_leeftijd = 52,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2555';

UPDATE pc4_cbs SET
  inwoners     = 5535,
  pct_vrouw    = 50,
  cbs_leeftijd = 38.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2561';

UPDATE pc4_cbs SET
  inwoners     = 11120,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 38.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2562';

UPDATE pc4_cbs SET
  inwoners     = 10450,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 38.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2563';

UPDATE pc4_cbs SET
  inwoners     = 11595,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 41.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2564';

UPDATE pc4_cbs SET
  inwoners     = 12385,
  pct_vrouw    = 54,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2565';

UPDATE pc4_cbs SET
  inwoners     = 6685,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2566';

UPDATE pc4_cbs SET
  inwoners     = 11190,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 37.8,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2571';

UPDATE pc4_cbs SET
  inwoners     = 9700,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 36.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2572';

UPDATE pc4_cbs SET
  inwoners     = 10630,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 35.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2573';

UPDATE pc4_cbs SET
  inwoners     = 7330,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 38.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2574';

UPDATE pc4_cbs SET
  inwoners     = 3165,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 40.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2581';

UPDATE pc4_cbs SET
  inwoners     = 9250,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 41.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2582';

UPDATE pc4_cbs SET
  inwoners     = 12190,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2583';

UPDATE pc4_cbs SET
  inwoners     = 7150,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 43.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2584';

UPDATE pc4_cbs SET
  inwoners     = 6935,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 45.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2585';

UPDATE pc4_cbs SET
  inwoners     = 8075,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 43.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2586';

UPDATE pc4_cbs SET
  inwoners     = 8430,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 42.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2587';

UPDATE pc4_cbs SET
  inwoners     = 7560,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 41,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2591';

UPDATE pc4_cbs SET
  inwoners     = 7095,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 43.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2592';

UPDATE pc4_cbs SET
  inwoners     = 8955,
  pct_vrouw    = 52,
  cbs_leeftijd = 39.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2593';

UPDATE pc4_cbs SET
  inwoners     = 2030,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2594';

UPDATE pc4_cbs SET
  inwoners     = 10650,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 37.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2595';

UPDATE pc4_cbs SET
  inwoners     = 8035,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 42.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2596';

UPDATE pc4_cbs SET
  inwoners     = 9130,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 48.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2597';

UPDATE pc4_cbs SET
  inwoners     = 13935,
  pct_vrouw    = 44.6,
  cbs_leeftijd = 38.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2611';

UPDATE pc4_cbs SET
  inwoners     = 9825,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 40.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2612';

UPDATE pc4_cbs SET
  inwoners     = 13680,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 37.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2613';

UPDATE pc4_cbs SET
  inwoners     = 12775,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 38.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2614';

UPDATE pc4_cbs SET
  inwoners     = 90,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2616';

UPDATE pc4_cbs SET
  inwoners     = 7985,
  pct_vrouw    = 48,
  cbs_leeftijd = 43.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2622';

UPDATE pc4_cbs SET
  inwoners     = 6065,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2623';

UPDATE pc4_cbs SET
  inwoners     = 14760,
  pct_vrouw    = 45.8,
  cbs_leeftijd = 37.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2624';

UPDATE pc4_cbs SET
  inwoners     = 14525,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 40.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2625';

UPDATE pc4_cbs SET
  inwoners     = 60,
  pct_vrouw    = 41.7,
  cbs_leeftijd = 34.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2626';

UPDATE pc4_cbs SET
  inwoners     = 1535,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2627';

UPDATE pc4_cbs SET
  inwoners     = 13970,
  pct_vrouw    = 44.3,
  cbs_leeftijd = 35.5,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2628';

UPDATE pc4_cbs SET
  inwoners     = 370,
  pct_vrouw    = 37.8,
  cbs_leeftijd = 38.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2629';

UPDATE pc4_cbs SET
  inwoners     = 15295,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2631';

UPDATE pc4_cbs SET
  inwoners     = 3670,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 37.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2632';

UPDATE pc4_cbs SET
  inwoners     = 8430,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 41.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2635';

UPDATE pc4_cbs SET
  inwoners     = 4315,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2636';

UPDATE pc4_cbs SET
  inwoners     = 15030,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2641';

UPDATE pc4_cbs SET
  inwoners     = 8880,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 38.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2642';

UPDATE pc4_cbs SET
  inwoners     = 6080,
  pct_vrouw    = 51,
  cbs_leeftijd = 34.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2643';

UPDATE pc4_cbs SET
  inwoners     = 8975,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 40.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2645';

UPDATE pc4_cbs SET
  inwoners     = 19035,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 41.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2651';

UPDATE pc4_cbs SET
  inwoners     = 14920,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 35.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2652';

UPDATE pc4_cbs SET
  inwoners     = 13260,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2661';

UPDATE pc4_cbs SET
  inwoners     = 6485,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 34.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2662';

UPDATE pc4_cbs SET
  inwoners     = 11895,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2665';

UPDATE pc4_cbs SET
  inwoners     = 13735,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2671';

UPDATE pc4_cbs SET
  inwoners     = 5960,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2672';

UPDATE pc4_cbs SET
  inwoners     = 3250,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 39,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2673';

UPDATE pc4_cbs SET
  inwoners     = 7825,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2675';

UPDATE pc4_cbs SET
  inwoners     = 4535,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2676';

UPDATE pc4_cbs SET
  inwoners     = 13130,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2678';

UPDATE pc4_cbs SET
  inwoners     = 14425,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2681';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 54.7,
  cbs_leeftijd = 43.5,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2684';

UPDATE pc4_cbs SET
  inwoners     = 7870,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 40.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2685';

UPDATE pc4_cbs SET
  inwoners     = 14480,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2691';

UPDATE pc4_cbs SET
  inwoners     = 4245,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2692';

UPDATE pc4_cbs SET
  inwoners     = 1725,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 38.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2693';

UPDATE pc4_cbs SET
  inwoners     = 3285,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 38.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2694';

UPDATE pc4_cbs SET
  inwoners     = 4740,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 47.6,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2711';

UPDATE pc4_cbs SET
  inwoners     = 6140,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2712';

UPDATE pc4_cbs SET
  inwoners     = 6445,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 44.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2713';

UPDATE pc4_cbs SET
  inwoners     = 6015,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 40.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2715';

UPDATE pc4_cbs SET
  inwoners     = 10165,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 42.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2716';

UPDATE pc4_cbs SET
  inwoners     = 7850,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 39.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2717';

UPDATE pc4_cbs SET
  inwoners     = 8970,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2718';

UPDATE pc4_cbs SET
  inwoners     = 11875,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 46.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2719';

UPDATE pc4_cbs SET
  inwoners     = 11385,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 38.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2721';

UPDATE pc4_cbs SET
  inwoners     = 5545,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 40.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2722';

UPDATE pc4_cbs SET
  inwoners     = 3965,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 40.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2723';

UPDATE pc4_cbs SET
  inwoners     = 7165,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2724';

UPDATE pc4_cbs SET
  inwoners     = 5830,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 47.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2725';

UPDATE pc4_cbs SET
  inwoners     = 6255,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 43.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2726';

UPDATE pc4_cbs SET
  inwoners     = 5330,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 39.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2727';

UPDATE pc4_cbs SET
  inwoners     = 8465,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2728';

UPDATE pc4_cbs SET
  inwoners     = 12285,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 37.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2729';

UPDATE pc4_cbs SET
  inwoners     = 3595,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2731';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 40.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2735';

UPDATE pc4_cbs SET
  inwoners     = 12215,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 40.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2741';

UPDATE pc4_cbs SET
  inwoners     = 14860,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 37.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2742';

UPDATE pc4_cbs SET
  inwoners     = 6925,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2743';

UPDATE pc4_cbs SET
  inwoners     = 4870,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 38.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2751';

UPDATE pc4_cbs SET
  inwoners     = 380,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 40.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2752';

UPDATE pc4_cbs SET
  inwoners     = 10270,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 39.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2761';

UPDATE pc4_cbs SET
  inwoners     = 16815,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 42.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2771';

UPDATE pc4_cbs SET
  inwoners     = 8555,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2801';

UPDATE pc4_cbs SET
  inwoners     = 9680,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 40.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2802';

UPDATE pc4_cbs SET
  inwoners     = 9925,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2803';

UPDATE pc4_cbs SET
  inwoners     = 12095,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 46.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2804';

UPDATE pc4_cbs SET
  inwoners     = 11005,
  pct_vrouw    = 51,
  cbs_leeftijd = 41.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2805';

UPDATE pc4_cbs SET
  inwoners     = 10010,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 41.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2806';

UPDATE pc4_cbs SET
  inwoners     = 10660,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 41.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2807';

UPDATE pc4_cbs SET
  inwoners     = 435,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2808';

UPDATE pc4_cbs SET
  inwoners     = 3385,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 31.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2809';

UPDATE pc4_cbs SET
  inwoners     = 11130,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2811';

UPDATE pc4_cbs SET
  inwoners     = 5440,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2821';

UPDATE pc4_cbs SET
  inwoners     = 1735,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 40.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2825';

UPDATE pc4_cbs SET
  inwoners     = 2615,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2831';

UPDATE pc4_cbs SET
  inwoners     = 9050,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2841';

UPDATE pc4_cbs SET
  inwoners     = 4340,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2851';

UPDATE pc4_cbs SET
  inwoners     = 650,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 40.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2855';

UPDATE pc4_cbs SET
  inwoners     = 7100,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2861';

UPDATE pc4_cbs SET
  inwoners     = 1695,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2865';

UPDATE pc4_cbs SET
  inwoners     = 12065,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2871';

UPDATE pc4_cbs SET
  inwoners     = 1630,
  pct_vrouw    = 50,
  cbs_leeftijd = 31,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2872';

UPDATE pc4_cbs SET
  inwoners     = 9290,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2901';

UPDATE pc4_cbs SET
  inwoners     = 8510,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2902';

UPDATE pc4_cbs SET
  inwoners     = 8540,
  pct_vrouw    = 53.9,
  cbs_leeftijd = 43.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2903';

UPDATE pc4_cbs SET
  inwoners     = 8215,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2904';

UPDATE pc4_cbs SET
  inwoners     = 6735,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 42.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2905';

UPDATE pc4_cbs SET
  inwoners     = 5570,
  pct_vrouw    = 53.6,
  cbs_leeftijd = 43.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2906';

UPDATE pc4_cbs SET
  inwoners     = 14015,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2907';

UPDATE pc4_cbs SET
  inwoners     = 3360,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 44.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2908';

UPDATE pc4_cbs SET
  inwoners     = 3690,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 36.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2909';

UPDATE pc4_cbs SET
  inwoners     = 8205,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 39.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2911';

UPDATE pc4_cbs SET
  inwoners     = 6740,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2912';

UPDATE pc4_cbs SET
  inwoners     = 510,
  pct_vrouw    = 48,
  cbs_leeftijd = 43.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2913';

UPDATE pc4_cbs SET
  inwoners     = 7820,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2914';

UPDATE pc4_cbs SET
  inwoners     = 2315,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 40.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2921';

UPDATE pc4_cbs SET
  inwoners     = 7125,
  pct_vrouw    = 53.2,
  cbs_leeftijd = 44.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2922';

UPDATE pc4_cbs SET
  inwoners     = 6300,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 41.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2923';

UPDATE pc4_cbs SET
  inwoners     = 4270,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2924';

UPDATE pc4_cbs SET
  inwoners     = 7035,
  pct_vrouw    = 52,
  cbs_leeftijd = 42.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2925';

UPDATE pc4_cbs SET
  inwoners     = 2585,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2926';

UPDATE pc4_cbs SET
  inwoners     = 6765,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2931';

UPDATE pc4_cbs SET
  inwoners     = 5905,
  pct_vrouw    = 50,
  cbs_leeftijd = 40.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2935';

UPDATE pc4_cbs SET
  inwoners     = 7840,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2941';

UPDATE pc4_cbs SET
  inwoners     = 10535,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2951';

UPDATE pc4_cbs SET
  inwoners     = 1295,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 36.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2952';

UPDATE pc4_cbs SET
  inwoners     = 5905,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 38.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2953';

UPDATE pc4_cbs SET
  inwoners     = 2580,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2954';

UPDATE pc4_cbs SET
  inwoners     = 8640,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 39.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2957';

UPDATE pc4_cbs SET
  inwoners     = 2495,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2959';

UPDATE pc4_cbs SET
  inwoners     = 790,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 40.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2961';

UPDATE pc4_cbs SET
  inwoners     = 4455,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 40.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2964';

UPDATE pc4_cbs SET
  inwoners     = 1410,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 47.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2965';

UPDATE pc4_cbs SET
  inwoners     = 1815,
  pct_vrouw    = 49,
  cbs_leeftijd = 40.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2967';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 50,
  cbs_leeftijd = 38.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2968';

UPDATE pc4_cbs SET
  inwoners     = 2330,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 38.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2969';

UPDATE pc4_cbs SET
  inwoners     = 2940,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 40,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2971';

UPDATE pc4_cbs SET
  inwoners     = 1275,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 39.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2973';

UPDATE pc4_cbs SET
  inwoners     = 1375,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 38.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2974';

UPDATE pc4_cbs SET
  inwoners     = 995,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 41.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2975';

UPDATE pc4_cbs SET
  inwoners     = 955,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 40.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2977';

UPDATE pc4_cbs SET
  inwoners     = 3155,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 41.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2981';

UPDATE pc4_cbs SET
  inwoners     = 6675,
  pct_vrouw    = 53,
  cbs_leeftijd = 44.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2982';

UPDATE pc4_cbs SET
  inwoners     = 9555,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2983';

UPDATE pc4_cbs SET
  inwoners     = 3725,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2984';

UPDATE pc4_cbs SET
  inwoners     = 4675,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2985';

UPDATE pc4_cbs SET
  inwoners     = 8245,
  pct_vrouw    = 53.4,
  cbs_leeftijd = 45.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2986';

UPDATE pc4_cbs SET
  inwoners     = 7875,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2987';

UPDATE pc4_cbs SET
  inwoners     = 2995,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2988';

UPDATE pc4_cbs SET
  inwoners     = 820,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2989';

UPDATE pc4_cbs SET
  inwoners     = 13425,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2991';

UPDATE pc4_cbs SET
  inwoners     = 14370,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2992';

UPDATE pc4_cbs SET
  inwoners     = 14060,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2993';

UPDATE pc4_cbs SET
  inwoners     = 6840,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 36.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2994';

UPDATE pc4_cbs SET
  inwoners     = 3820,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '2995';

UPDATE pc4_cbs SET
  inwoners     = 20440,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 37.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3011';

UPDATE pc4_cbs SET
  inwoners     = 6980,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 38.2,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3012';

UPDATE pc4_cbs SET
  inwoners     = 1095,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 38.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3013';

UPDATE pc4_cbs SET
  inwoners     = 7780,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 40.9,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3014';

UPDATE pc4_cbs SET
  inwoners     = 3115,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 39.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3015';

UPDATE pc4_cbs SET
  inwoners     = 3150,
  pct_vrouw    = 49,
  cbs_leeftijd = 39.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3016';

UPDATE pc4_cbs SET
  inwoners     = 11820,
  pct_vrouw    = 50,
  cbs_leeftijd = 38.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3021';

UPDATE pc4_cbs SET
  inwoners     = 10095,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 37.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3022';

UPDATE pc4_cbs SET
  inwoners     = 9775,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 37.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3023';

UPDATE pc4_cbs SET
  inwoners     = 9765,
  pct_vrouw    = 49,
  cbs_leeftijd = 37.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3024';

UPDATE pc4_cbs SET
  inwoners     = 7410,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 38,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3025';

UPDATE pc4_cbs SET
  inwoners     = 7380,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 38.2,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3026';

UPDATE pc4_cbs SET
  inwoners     = 9970,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 36.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3027';

UPDATE pc4_cbs SET
  inwoners     = 7670,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 39,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3028';

UPDATE pc4_cbs SET
  inwoners     = 5770,
  pct_vrouw    = 45.6,
  cbs_leeftijd = 34.8,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3029';

UPDATE pc4_cbs SET
  inwoners     = 8540,
  pct_vrouw    = 53.4,
  cbs_leeftijd = 38.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3031';

UPDATE pc4_cbs SET
  inwoners     = 6485,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 39,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3032';

UPDATE pc4_cbs SET
  inwoners     = 4760,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 38.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3033';

UPDATE pc4_cbs SET
  inwoners     = 12080,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 37.6,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3034';

UPDATE pc4_cbs SET
  inwoners     = 6940,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 38.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3035';

UPDATE pc4_cbs SET
  inwoners     = 8015,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 37.6,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3036';

UPDATE pc4_cbs SET
  inwoners     = 7845,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 38.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3037';

UPDATE pc4_cbs SET
  inwoners     = 8130,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 36.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3038';

UPDATE pc4_cbs SET
  inwoners     = 10385,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 39.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3039';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 26.7,
  cbs_leeftijd = 38.3,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3041';

UPDATE pc4_cbs SET
  inwoners     = 8255,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 39.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3042';

UPDATE pc4_cbs SET
  inwoners     = 7045,
  pct_vrouw    = 49,
  cbs_leeftijd = 41.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3043';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 40,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3044';

UPDATE pc4_cbs SET
  inwoners     = 4835,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 32.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3045';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 47.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3046';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 50,
  cbs_leeftijd = 49.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3047';

UPDATE pc4_cbs SET
  inwoners     = 8080,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 37.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3051';

UPDATE pc4_cbs SET
  inwoners     = 6455,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 37.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3052';

UPDATE pc4_cbs SET
  inwoners     = 10590,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 40.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3053';

UPDATE pc4_cbs SET
  inwoners     = 7790,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 46.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3054';

UPDATE pc4_cbs SET
  inwoners     = 8210,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3055';

UPDATE pc4_cbs SET
  inwoners     = 3380,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 40.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3056';

UPDATE pc4_cbs SET
  inwoners     = 13135,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 37.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3059';

UPDATE pc4_cbs SET
  inwoners     = 16045,
  pct_vrouw    = 52,
  cbs_leeftijd = 37.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3061';

UPDATE pc4_cbs SET
  inwoners     = 8780,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 37.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3062';

UPDATE pc4_cbs SET
  inwoners     = 10565,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 38.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3063';

UPDATE pc4_cbs SET
  inwoners     = 1655,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 40.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3064';

UPDATE pc4_cbs SET
  inwoners     = 8270,
  pct_vrouw    = 51,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3065';

UPDATE pc4_cbs SET
  inwoners     = 10920,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 46.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3066';

UPDATE pc4_cbs SET
  inwoners     = 21430,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 43.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3067';

UPDATE pc4_cbs SET
  inwoners     = 23010,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 43.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3068';

UPDATE pc4_cbs SET
  inwoners     = 19015,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 45.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3069';

UPDATE pc4_cbs SET
  inwoners     = 20615,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 39.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3071';

UPDATE pc4_cbs SET
  inwoners     = 17120,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 39,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3072';

UPDATE pc4_cbs SET
  inwoners     = 13925,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 37,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3073';

UPDATE pc4_cbs SET
  inwoners     = 12310,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 36,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3074';

UPDATE pc4_cbs SET
  inwoners     = 14105,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 41.4,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3075';

UPDATE pc4_cbs SET
  inwoners     = 15035,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 38.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3076';

UPDATE pc4_cbs SET
  inwoners     = 17975,
  pct_vrouw    = 50,
  cbs_leeftijd = 39.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3077';

UPDATE pc4_cbs SET
  inwoners     = 12835,
  pct_vrouw    = 53.5,
  cbs_leeftijd = 43.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3078';

UPDATE pc4_cbs SET
  inwoners     = 16830,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 39.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3079';

UPDATE pc4_cbs SET
  inwoners     = 12325,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 35.9,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3081';

UPDATE pc4_cbs SET
  inwoners     = 12330,
  pct_vrouw    = 48,
  cbs_leeftijd = 37.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3082';

UPDATE pc4_cbs SET
  inwoners     = 14310,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 37.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3083';

UPDATE pc4_cbs SET
  inwoners     = 2675,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 44.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3084';

UPDATE pc4_cbs SET
  inwoners     = 13850,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 39.9,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3085';

UPDATE pc4_cbs SET
  inwoners     = 12700,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 37.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3086';

UPDATE pc4_cbs SET
  inwoners     = 1800,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 42.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3087';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 50,
  cbs_leeftijd = 35,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3088';

UPDATE pc4_cbs SET
  inwoners     = 1910,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 38.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3089';

UPDATE pc4_cbs SET
  inwoners     = 5350,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 41.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3111';

UPDATE pc4_cbs SET
  inwoners     = 11435,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 38,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3112';

UPDATE pc4_cbs SET
  inwoners     = 15,
  cbs_leeftijd = 35,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3113';

UPDATE pc4_cbs SET
  inwoners     = 6325,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3114';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 66.7,
  cbs_leeftijd = 55,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3115';

UPDATE pc4_cbs SET
  inwoners     = 3505,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3116';

UPDATE pc4_cbs SET
  inwoners     = 9605,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 40.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3117';

UPDATE pc4_cbs SET
  inwoners     = 6475,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 36.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3118';

UPDATE pc4_cbs SET
  inwoners     = 10280,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 40.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3119';

UPDATE pc4_cbs SET
  inwoners     = 3520,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3121';

UPDATE pc4_cbs SET
  inwoners     = 9595,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 41.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3122';

UPDATE pc4_cbs SET
  inwoners     = 7355,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3123';

UPDATE pc4_cbs SET
  inwoners     = 8080,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3124';

UPDATE pc4_cbs SET
  inwoners     = 295,
  pct_vrouw    = 44.1,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3125';

UPDATE pc4_cbs SET
  inwoners     = 15655,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3131';

UPDATE pc4_cbs SET
  inwoners     = 12815,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3132';

UPDATE pc4_cbs SET
  inwoners     = 2645,
  pct_vrouw    = 54.4,
  cbs_leeftijd = 40.6,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3133';

UPDATE pc4_cbs SET
  inwoners     = 7565,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 40.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3134';

UPDATE pc4_cbs SET
  inwoners     = 12740,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 40.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3135';

UPDATE pc4_cbs SET
  inwoners     = 11600,
  pct_vrouw    = 54,
  cbs_leeftijd = 45.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3136';

UPDATE pc4_cbs SET
  inwoners     = 13375,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 45.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3137';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 33.3,
  cbs_leeftijd = 35,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3138';

UPDATE pc4_cbs SET
  inwoners     = 6185,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 40.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3141';

UPDATE pc4_cbs SET
  inwoners     = 5760,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 42.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3142';

UPDATE pc4_cbs SET
  inwoners     = 3005,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 41.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3143';

UPDATE pc4_cbs SET
  inwoners     = 7500,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 45.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3144';

UPDATE pc4_cbs SET
  inwoners     = 6830,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3145';

UPDATE pc4_cbs SET
  inwoners     = 4820,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3146';

UPDATE pc4_cbs SET
  inwoners     = 1730,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 33.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3147';

UPDATE pc4_cbs SET
  inwoners     = 10565,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 45.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3151';

UPDATE pc4_cbs SET
  inwoners     = 6630,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3155';

UPDATE pc4_cbs SET
  inwoners     = 9385,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 43.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3161';

UPDATE pc4_cbs SET
  inwoners     = 7450,
  pct_vrouw    = 50,
  cbs_leeftijd = 38.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3162';

UPDATE pc4_cbs SET
  inwoners     = 5920,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 44.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3171';

UPDATE pc4_cbs SET
  inwoners     = 1100,
  pct_vrouw    = 34.1,
  cbs_leeftijd = 44.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3172';

UPDATE pc4_cbs SET
  inwoners     = 2575,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3176';

UPDATE pc4_cbs SET
  inwoners     = 12610,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 43.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3181';

UPDATE pc4_cbs SET
  inwoners     = 9950,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3191';

UPDATE pc4_cbs SET
  inwoners     = 13500,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 43,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3192';

UPDATE pc4_cbs SET
  inwoners     = 6415,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 41.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3193';

UPDATE pc4_cbs SET
  inwoners     = 6315,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 39.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3194';

UPDATE pc4_cbs SET
  inwoners     = 4970,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3195';

UPDATE pc4_cbs SET
  inwoners     = 10,
  cbs_leeftijd = 35,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3199';

UPDATE pc4_cbs SET
  inwoners     = 15855,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 42.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3201';

UPDATE pc4_cbs SET
  inwoners     = 7150,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3202';

UPDATE pc4_cbs SET
  inwoners     = 3735,
  pct_vrouw    = 53.5,
  cbs_leeftijd = 46.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3203';

UPDATE pc4_cbs SET
  inwoners     = 7025,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 41.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3204';

UPDATE pc4_cbs SET
  inwoners     = 8485,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 39.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3205';

UPDATE pc4_cbs SET
  inwoners     = 10085,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 40.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3206';

UPDATE pc4_cbs SET
  inwoners     = 15185,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3207';

UPDATE pc4_cbs SET
  inwoners     = 5930,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 45.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3208';

UPDATE pc4_cbs SET
  inwoners     = 1885,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3209';

UPDATE pc4_cbs SET
  inwoners     = 1620,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3211';

UPDATE pc4_cbs SET
  inwoners     = 615,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 51.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3212';

UPDATE pc4_cbs SET
  inwoners     = 6305,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3214';

UPDATE pc4_cbs SET
  inwoners     = 1275,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3216';

UPDATE pc4_cbs SET
  inwoners     = 2485,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3218';

UPDATE pc4_cbs SET
  inwoners     = 5715,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 47.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3221';

UPDATE pc4_cbs SET
  inwoners     = 4150,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 42.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3222';

UPDATE pc4_cbs SET
  inwoners     = 13565,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3223';

UPDATE pc4_cbs SET
  inwoners     = 8415,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3224';

UPDATE pc4_cbs SET
  inwoners     = 8055,
  pct_vrouw    = 50,
  cbs_leeftijd = 39.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3225';

UPDATE pc4_cbs SET
  inwoners     = 1440,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3227';

UPDATE pc4_cbs SET
  inwoners     = 4200,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 46.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3231';

UPDATE pc4_cbs SET
  inwoners     = 9915,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3232';

UPDATE pc4_cbs SET
  inwoners     = 7830,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 47.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3233';

UPDATE pc4_cbs SET
  inwoners     = 565,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3234';

UPDATE pc4_cbs SET
  inwoners     = 6605,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 47.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3235';

UPDATE pc4_cbs SET
  inwoners     = 1875,
  pct_vrouw    = 48,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3237';

UPDATE pc4_cbs SET
  inwoners     = 1915,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3238';

UPDATE pc4_cbs SET
  inwoners     = 7815,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 43.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3241';

UPDATE pc4_cbs SET
  inwoners     = 1540,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3243';

UPDATE pc4_cbs SET
  inwoners     = 2395,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 43.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3244';

UPDATE pc4_cbs SET
  inwoners     = 7475,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 44.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3245';

UPDATE pc4_cbs SET
  inwoners     = 6030,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 41.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3247';

UPDATE pc4_cbs SET
  inwoners     = 2205,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3248';

UPDATE pc4_cbs SET
  inwoners     = 1305,
  pct_vrouw    = 49,
  cbs_leeftijd = 45.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3249';

UPDATE pc4_cbs SET
  inwoners     = 3660,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3251';

UPDATE pc4_cbs SET
  inwoners     = 2285,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3252';

UPDATE pc4_cbs SET
  inwoners     = 6340,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3253';

UPDATE pc4_cbs SET
  inwoners     = 5290,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3255';

UPDATE pc4_cbs SET
  inwoners     = 1100,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 46.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3256';

UPDATE pc4_cbs SET
  inwoners     = 2685,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3257';

UPDATE pc4_cbs SET
  inwoners     = 1740,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3258';

UPDATE pc4_cbs SET
  inwoners     = 10435,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3261';

UPDATE pc4_cbs SET
  inwoners     = 9815,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 42.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3262';

UPDATE pc4_cbs SET
  inwoners     = 4585,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3263';

UPDATE pc4_cbs SET
  inwoners     = 4480,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 40,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3264';

UPDATE pc4_cbs SET
  inwoners     = 1900,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3265';

UPDATE pc4_cbs SET
  inwoners     = 2035,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3267';

UPDATE pc4_cbs SET
  inwoners     = 4785,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3271';

UPDATE pc4_cbs SET
  inwoners     = 2115,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3273';

UPDATE pc4_cbs SET
  inwoners     = 3615,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3274';

UPDATE pc4_cbs SET
  inwoners     = 9725,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3281';

UPDATE pc4_cbs SET
  inwoners     = 3640,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 46.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3284';

UPDATE pc4_cbs SET
  inwoners     = 4165,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3286';

UPDATE pc4_cbs SET
  inwoners     = 8150,
  pct_vrouw    = 51,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3291';

UPDATE pc4_cbs SET
  inwoners     = 485,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 46.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3292';

UPDATE pc4_cbs SET
  inwoners     = 475,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3293';

UPDATE pc4_cbs SET
  inwoners     = 9195,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3295';

UPDATE pc4_cbs SET
  inwoners     = 7420,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3297';

UPDATE pc4_cbs SET
  inwoners     = 3215,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 46.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3299';

UPDATE pc4_cbs SET
  inwoners     = 17980,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3311';

UPDATE pc4_cbs SET
  inwoners     = 11610,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 39.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3312';

UPDATE pc4_cbs SET
  inwoners     = 5860,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3313';

UPDATE pc4_cbs SET
  inwoners     = 16045,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 39,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3314';

UPDATE pc4_cbs SET
  inwoners     = 18335,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 42.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3315';

UPDATE pc4_cbs SET
  inwoners     = 790,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 44.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3316';

UPDATE pc4_cbs SET
  inwoners     = 15115,
  pct_vrouw    = 50,
  cbs_leeftijd = 41,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3317';

UPDATE pc4_cbs SET
  inwoners     = 5975,
  pct_vrouw    = 53.5,
  cbs_leeftijd = 46.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3318';

UPDATE pc4_cbs SET
  inwoners     = 10515,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3319';

UPDATE pc4_cbs SET
  inwoners     = 17605,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 42.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3328';

UPDATE pc4_cbs SET
  inwoners     = 2235,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3329';

UPDATE pc4_cbs SET
  inwoners     = 11370,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3331';

UPDATE pc4_cbs SET
  inwoners     = 10035,
  pct_vrouw    = 54,
  cbs_leeftijd = 47.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3332';

UPDATE pc4_cbs SET
  inwoners     = 7100,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3333';

UPDATE pc4_cbs SET
  inwoners     = 6230,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 43.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3334';

UPDATE pc4_cbs SET
  inwoners     = 6245,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3335';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 47.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3336';

UPDATE pc4_cbs SET
  inwoners     = 9670,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 38.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3341';

UPDATE pc4_cbs SET
  inwoners     = 6315,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 40.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3342';

UPDATE pc4_cbs SET
  inwoners     = 6640,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3343';

UPDATE pc4_cbs SET
  inwoners     = 10065,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 38.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3344';

UPDATE pc4_cbs SET
  inwoners     = 9185,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3351';

UPDATE pc4_cbs SET
  inwoners     = 3365,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3352';

UPDATE pc4_cbs SET
  inwoners     = 5925,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 44.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3353';

UPDATE pc4_cbs SET
  inwoners     = 2395,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3354';

UPDATE pc4_cbs SET
  inwoners     = 5730,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3355';

UPDATE pc4_cbs SET
  inwoners     = 5580,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3356';

UPDATE pc4_cbs SET
  inwoners     = 6650,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3361';

UPDATE pc4_cbs SET
  inwoners     = 11245,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 42.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3362';

UPDATE pc4_cbs SET
  inwoners     = 7955,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 40.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3363';

UPDATE pc4_cbs SET
  inwoners     = 405,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 37.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3364';

UPDATE pc4_cbs SET
  inwoners     = 735,
  pct_vrouw    = 49,
  cbs_leeftijd = 40.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3366';

UPDATE pc4_cbs SET
  inwoners     = 12920,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 40.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3371';

UPDATE pc4_cbs SET
  inwoners     = 4765,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 40.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3372';

UPDATE pc4_cbs SET
  inwoners     = 1075,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 37.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3373';

UPDATE pc4_cbs SET
  inwoners     = 4930,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3381';

UPDATE pc4_cbs SET
  inwoners     = 12205,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 44.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3401';

UPDATE pc4_cbs SET
  inwoners     = 9490,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3402';

UPDATE pc4_cbs SET
  inwoners     = 1930,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3403';

UPDATE pc4_cbs SET
  inwoners     = 9795,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 39.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3404';

UPDATE pc4_cbs SET
  inwoners     = 3625,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3405';

UPDATE pc4_cbs SET
  inwoners     = 8280,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3411';

UPDATE pc4_cbs SET
  inwoners     = 1215,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3412';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 40.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3413';

UPDATE pc4_cbs SET
  inwoners     = 1320,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 39.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3415';

UPDATE pc4_cbs SET
  inwoners     = 9975,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3417';

UPDATE pc4_cbs SET
  inwoners     = 8370,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3421';

UPDATE pc4_cbs SET
  inwoners     = 755,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 45.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3425';

UPDATE pc4_cbs SET
  inwoners     = 8255,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 42.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3431';

UPDATE pc4_cbs SET
  inwoners     = 6585,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 39.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3432';

UPDATE pc4_cbs SET
  inwoners     = 3655,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3433';

UPDATE pc4_cbs SET
  inwoners     = 8740,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 43.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3434';

UPDATE pc4_cbs SET
  inwoners     = 6035,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3435';

UPDATE pc4_cbs SET
  inwoners     = 6460,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 40.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3436';

UPDATE pc4_cbs SET
  inwoners     = 13415,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3437';

UPDATE pc4_cbs SET
  inwoners     = 10225,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3438';

UPDATE pc4_cbs SET
  inwoners     = 2595,
  pct_vrouw    = 43.5,
  cbs_leeftijd = 36.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3439';

UPDATE pc4_cbs SET
  inwoners     = 2855,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 43.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3441';

UPDATE pc4_cbs SET
  inwoners     = 4340,
  pct_vrouw    = 51,
  cbs_leeftijd = 41.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3442';

UPDATE pc4_cbs SET
  inwoners     = 7450,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3443';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3444';

UPDATE pc4_cbs SET
  inwoners     = 5025,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3445';

UPDATE pc4_cbs SET
  inwoners     = 8940,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 39.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3446';

UPDATE pc4_cbs SET
  inwoners     = 715,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 36.5,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3447';

UPDATE pc4_cbs SET
  inwoners     = 9070,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 40.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3448';

UPDATE pc4_cbs SET
  inwoners     = 645,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3449';

UPDATE pc4_cbs SET
  inwoners     = 13130,
  pct_vrouw    = 51,
  cbs_leeftijd = 38.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3451';

UPDATE pc4_cbs SET
  inwoners     = 15045,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 34,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3452';

UPDATE pc4_cbs SET
  inwoners     = 9120,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 38.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3453';

UPDATE pc4_cbs SET
  inwoners     = 13165,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 40.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3454';

UPDATE pc4_cbs SET
  inwoners     = 510,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3455';

UPDATE pc4_cbs SET
  inwoners     = 3890,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3461';

UPDATE pc4_cbs SET
  inwoners     = 380,
  pct_vrouw    = 44.7,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3464';

UPDATE pc4_cbs SET
  inwoners     = 2095,
  pct_vrouw    = 48,
  cbs_leeftijd = 37.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3465';

UPDATE pc4_cbs SET
  inwoners     = 1665,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 41.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3466';

UPDATE pc4_cbs SET
  inwoners     = 720,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3467';

UPDATE pc4_cbs SET
  inwoners     = 3905,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3471';

UPDATE pc4_cbs SET
  inwoners     = 2435,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3474';

UPDATE pc4_cbs SET
  inwoners     = 8065,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3481';

UPDATE pc4_cbs SET
  inwoners     = 9580,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 40.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3511';

UPDATE pc4_cbs SET
  inwoners     = 8955,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 38.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3512';

UPDATE pc4_cbs SET
  inwoners     = 6935,
  pct_vrouw    = 51,
  cbs_leeftijd = 36.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3513';

UPDATE pc4_cbs SET
  inwoners     = 7585,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 37,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3514';

UPDATE pc4_cbs SET
  inwoners     = 6340,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 37.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3515';

UPDATE pc4_cbs SET
  inwoners     = 7620,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 36.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3521';

UPDATE pc4_cbs SET
  inwoners     = 9000,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 38.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3522';

UPDATE pc4_cbs SET
  inwoners     = 10615,
  pct_vrouw    = 53,
  cbs_leeftijd = 36.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3523';

UPDATE pc4_cbs SET
  inwoners     = 11370,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 39.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3524';

UPDATE pc4_cbs SET
  inwoners     = 6410,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 35.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3525';

UPDATE pc4_cbs SET
  inwoners     = 12410,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 35.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3526';

UPDATE pc4_cbs SET
  inwoners     = 13455,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 35.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3527';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 33.3,
  cbs_leeftijd = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3528';

UPDATE pc4_cbs SET
  inwoners     = 11430,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 36.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3531';

UPDATE pc4_cbs SET
  inwoners     = 7055,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 35.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3532';

UPDATE pc4_cbs SET
  inwoners     = 9245,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 37.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3533';

UPDATE pc4_cbs SET
  inwoners     = 1830,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 33.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3534';

UPDATE pc4_cbs SET
  inwoners     = 11700,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 30.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3541';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 40,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3542';

UPDATE pc4_cbs SET
  inwoners     = 11700,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 35.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3543';

UPDATE pc4_cbs SET
  inwoners     = 23525,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 35.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3544';

UPDATE pc4_cbs SET
  inwoners     = 2375,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 28.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3545';

UPDATE pc4_cbs SET
  inwoners     = 215,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3546';

UPDATE pc4_cbs SET
  inwoners     = 7245,
  pct_vrouw    = 53.2,
  cbs_leeftijd = 36.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3551';

UPDATE pc4_cbs SET
  inwoners     = 7780,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 37.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3552';

UPDATE pc4_cbs SET
  inwoners     = 7085,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 35.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3553';

UPDATE pc4_cbs SET
  inwoners     = 7740,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 37.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3554';

UPDATE pc4_cbs SET
  inwoners     = 8520,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 38.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3555';

UPDATE pc4_cbs SET
  inwoners     = 9160,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 36.5,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3561';

UPDATE pc4_cbs SET
  inwoners     = 8335,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 38.2,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3562';

UPDATE pc4_cbs SET
  inwoners     = 7790,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 39,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3563';

UPDATE pc4_cbs SET
  inwoners     = 9520,
  pct_vrouw    = 50,
  cbs_leeftijd = 37.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3564';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 36.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3565';

UPDATE pc4_cbs SET
  inwoners     = 355,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 42.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3566';

UPDATE pc4_cbs SET
  inwoners     = 10320,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 37.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3571';

UPDATE pc4_cbs SET
  inwoners     = 11670,
  pct_vrouw    = 53.6,
  cbs_leeftijd = 38.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3572';

UPDATE pc4_cbs SET
  inwoners     = 5055,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 39.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3573';

UPDATE pc4_cbs SET
  inwoners     = 9940,
  pct_vrouw    = 53.6,
  cbs_leeftijd = 38.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3581';

UPDATE pc4_cbs SET
  inwoners     = 9525,
  pct_vrouw    = 53.5,
  cbs_leeftijd = 35.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3582';

UPDATE pc4_cbs SET
  inwoners     = 6050,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 38.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3583';

UPDATE pc4_cbs SET
  inwoners     = 7400,
  pct_vrouw    = 57.2,
  cbs_leeftijd = 30,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3584';

UPDATE pc4_cbs SET
  inwoners     = 185,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 41.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3585';

UPDATE pc4_cbs SET
  inwoners     = 7290,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 46.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3601';

UPDATE pc4_cbs SET
  inwoners     = 3450,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3602';

UPDATE pc4_cbs SET
  inwoners     = 2665,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3603';

UPDATE pc4_cbs SET
  inwoners     = 2520,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3604';

UPDATE pc4_cbs SET
  inwoners     = 5820,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 42.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3605';

UPDATE pc4_cbs SET
  inwoners     = 865,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 32.7,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3606';

UPDATE pc4_cbs SET
  inwoners     = 13595,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 41.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3607';

UPDATE pc4_cbs SET
  inwoners     = 3355,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3608';

UPDATE pc4_cbs SET
  inwoners     = 615,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3611';

UPDATE pc4_cbs SET
  inwoners     = 1790,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3612';

UPDATE pc4_cbs SET
  inwoners     = 1185,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 41.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3615';

UPDATE pc4_cbs SET
  inwoners     = 10680,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3621';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 44.7,
  cbs_leeftijd = 50.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3625';

UPDATE pc4_cbs SET
  inwoners     = 725,
  pct_vrouw    = 49,
  cbs_leeftijd = 39,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3626';

UPDATE pc4_cbs SET
  inwoners     = 3465,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3628';

UPDATE pc4_cbs SET
  inwoners     = 490,
  pct_vrouw    = 52,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3631';

UPDATE pc4_cbs SET
  inwoners     = 4480,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 44,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3632';

UPDATE pc4_cbs SET
  inwoners     = 1985,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3633';

UPDATE pc4_cbs SET
  inwoners     = 505,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3634';

UPDATE pc4_cbs SET
  inwoners     = 11720,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 45.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3641';

UPDATE pc4_cbs SET
  inwoners     = 3085,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3642';

UPDATE pc4_cbs SET
  inwoners     = 1470,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3643';

UPDATE pc4_cbs SET
  inwoners     = 9600,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3645';

UPDATE pc4_cbs SET
  inwoners     = 795,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3646';

UPDATE pc4_cbs SET
  inwoners     = 7550,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3648';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3651';

UPDATE pc4_cbs SET
  inwoners     = 620,
  pct_vrouw    = 45.2,
  cbs_leeftijd = 45.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3652';

UPDATE pc4_cbs SET
  inwoners     = 40,
  pct_vrouw    = 50,
  cbs_leeftijd = 38.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3653';

UPDATE pc4_cbs SET
  inwoners     = 6465,
  pct_vrouw    = 52,
  cbs_leeftijd = 46.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3701';

UPDATE pc4_cbs SET
  inwoners     = 3945,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 41.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3702';

UPDATE pc4_cbs SET
  inwoners     = 6145,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 42.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3703';

UPDATE pc4_cbs SET
  inwoners     = 10140,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 40.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3704';

UPDATE pc4_cbs SET
  inwoners     = 10125,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 38.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3705';

UPDATE pc4_cbs SET
  inwoners     = 5270,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 38.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3706';

UPDATE pc4_cbs SET
  inwoners     = 5990,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3707';

UPDATE pc4_cbs SET
  inwoners     = 6800,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 44.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3708';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 53.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3709';

UPDATE pc4_cbs SET
  inwoners     = 1880,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3711';

UPDATE pc4_cbs SET
  inwoners     = 3305,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3712';

UPDATE pc4_cbs SET
  inwoners     = 8445,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 41,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3721';

UPDATE pc4_cbs SET
  inwoners     = 4635,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 47.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3722';

UPDATE pc4_cbs SET
  inwoners     = 10145,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 46.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3723';

UPDATE pc4_cbs SET
  inwoners     = 6060,
  pct_vrouw    = 52,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3731';

UPDATE pc4_cbs SET
  inwoners     = 4820,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 41.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3732';

UPDATE pc4_cbs SET
  inwoners     = 4495,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3734';

UPDATE pc4_cbs SET
  inwoners     = 1750,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 50.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3735';

UPDATE pc4_cbs SET
  inwoners     = 1960,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 41.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3737';

UPDATE pc4_cbs SET
  inwoners     = 4905,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 43.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3738';

UPDATE pc4_cbs SET
  inwoners     = 1570,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 46.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3739';

UPDATE pc4_cbs SET
  inwoners     = 9475,
  pct_vrouw    = 51,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3741';

UPDATE pc4_cbs SET
  inwoners     = 9410,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3742';

UPDATE pc4_cbs SET
  inwoners     = 4840,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 48.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3743';

UPDATE pc4_cbs SET
  inwoners     = 1055,
  pct_vrouw    = 42.7,
  cbs_leeftijd = 51.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3744';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 56.1,
  cbs_leeftijd = 52.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3749';

UPDATE pc4_cbs SET
  inwoners     = 9090,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 37.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3751';

UPDATE pc4_cbs SET
  inwoners     = 12715,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 41.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3752';

UPDATE pc4_cbs SET
  inwoners     = 815,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 41.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3754';

UPDATE pc4_cbs SET
  inwoners     = 9755,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3755';

UPDATE pc4_cbs SET
  inwoners     = 4970,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 48.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3761';

UPDATE pc4_cbs SET
  inwoners     = 8430,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3762';

UPDATE pc4_cbs SET
  inwoners     = 2335,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 41.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3763';

UPDATE pc4_cbs SET
  inwoners     = 5440,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3764';

UPDATE pc4_cbs SET
  inwoners     = 5305,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 41.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3765';

UPDATE pc4_cbs SET
  inwoners     = 7215,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 45.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3766';

UPDATE pc4_cbs SET
  inwoners     = 6215,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3768';

UPDATE pc4_cbs SET
  inwoners     = 7770,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3769';

UPDATE pc4_cbs SET
  inwoners     = 12005,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3771';

UPDATE pc4_cbs SET
  inwoners     = 20770,
  pct_vrouw    = 50,
  cbs_leeftijd = 36,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3772';

UPDATE pc4_cbs SET
  inwoners     = 3455,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 40.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3773';

UPDATE pc4_cbs SET
  inwoners     = 5975,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 34,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3774';

UPDATE pc4_cbs SET
  inwoners     = 295,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 50.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3775';

UPDATE pc4_cbs SET
  inwoners     = 1705,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 38.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3776';

UPDATE pc4_cbs SET
  inwoners     = 12150,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3781';

UPDATE pc4_cbs SET
  inwoners     = 1525,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3784';

UPDATE pc4_cbs SET
  inwoners     = 1590,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 40.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3785';

UPDATE pc4_cbs SET
  inwoners     = 2720,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3791';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3792';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 50,
  cbs_leeftijd = 35.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3794';

UPDATE pc4_cbs SET
  inwoners     = 7465,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 42.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3811';

UPDATE pc4_cbs SET
  inwoners     = 12720,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 39.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3812';

UPDATE pc4_cbs SET
  inwoners     = 15045,
  pct_vrouw    = 52,
  cbs_leeftijd = 44.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3813';

UPDATE pc4_cbs SET
  inwoners     = 6005,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 39.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3814';

UPDATE pc4_cbs SET
  inwoners     = 11610,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 40,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3815';

UPDATE pc4_cbs SET
  inwoners     = 12060,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 41.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3816';

UPDATE pc4_cbs SET
  inwoners     = 12065,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 41.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3817';

UPDATE pc4_cbs SET
  inwoners     = 10775,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3818';

UPDATE pc4_cbs SET
  inwoners     = 645,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 43.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3819';

UPDATE pc4_cbs SET
  inwoners     = 660,
  pct_vrouw    = 34.8,
  cbs_leeftijd = 33.9,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3821';

UPDATE pc4_cbs SET
  inwoners     = 7665,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3822';

UPDATE pc4_cbs SET
  inwoners     = 10950,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3823';

UPDATE pc4_cbs SET
  inwoners     = 14585,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 39.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3824';

UPDATE pc4_cbs SET
  inwoners     = 14430,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 34.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3825';

UPDATE pc4_cbs SET
  inwoners     = 10075,
  pct_vrouw    = 50,
  cbs_leeftijd = 33.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3826';

UPDATE pc4_cbs SET
  inwoners     = 10100,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3828';

UPDATE pc4_cbs SET
  inwoners     = 4865,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 37,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3829';

UPDATE pc4_cbs SET
  inwoners     = 13430,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3831';

UPDATE pc4_cbs SET
  inwoners     = 5390,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 40.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3832';

UPDATE pc4_cbs SET
  inwoners     = 7695,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3833';

UPDATE pc4_cbs SET
  inwoners     = 2070,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 47.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3834';

UPDATE pc4_cbs SET
  inwoners     = 380,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3835';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3836';

UPDATE pc4_cbs SET
  inwoners     = 6120,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 45.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3841';

UPDATE pc4_cbs SET
  inwoners     = 7060,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 42.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3842';

UPDATE pc4_cbs SET
  inwoners     = 6570,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3843';

UPDATE pc4_cbs SET
  inwoners     = 8980,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 43.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3844';

UPDATE pc4_cbs SET
  inwoners     = 10425,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 38.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3845';

UPDATE pc4_cbs SET
  inwoners     = 1790,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 38.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3846';

UPDATE pc4_cbs SET
  inwoners     = 1005,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 52.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3847';

UPDATE pc4_cbs SET
  inwoners     = 3990,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3848';

UPDATE pc4_cbs SET
  inwoners     = 3440,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3849';

UPDATE pc4_cbs SET
  inwoners     = 11990,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3851';

UPDATE pc4_cbs SET
  inwoners     = 5490,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 46,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3852';

UPDATE pc4_cbs SET
  inwoners     = 10375,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 42.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3853';

UPDATE pc4_cbs SET
  inwoners     = 9990,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3861';

UPDATE pc4_cbs SET
  inwoners     = 13630,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3862';

UPDATE pc4_cbs SET
  inwoners     = 7680,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 39.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3863';

UPDATE pc4_cbs SET
  inwoners     = 4260,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3864';

UPDATE pc4_cbs SET
  inwoners     = 9800,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 42.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3871';

UPDATE pc4_cbs SET
  inwoners     = 11100,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3881';

UPDATE pc4_cbs SET
  inwoners     = 13870,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 39.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3882';

UPDATE pc4_cbs SET
  inwoners     = 2225,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3886';

UPDATE pc4_cbs SET
  inwoners     = 3400,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 38.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3888';

UPDATE pc4_cbs SET
  inwoners     = 4925,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 46.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3891';

UPDATE pc4_cbs SET
  inwoners     = 5205,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3892';

UPDATE pc4_cbs SET
  inwoners     = 6085,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 39.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3893';

UPDATE pc4_cbs SET
  inwoners     = 5560,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 35.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3894';

UPDATE pc4_cbs SET
  inwoners     = 390,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3896';

UPDATE pc4_cbs SET
  inwoners     = 1470,
  pct_vrouw    = 43.9,
  cbs_leeftijd = 35.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3897';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 40.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3898';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 40.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3899';

UPDATE pc4_cbs SET
  inwoners     = 10475,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3901';

UPDATE pc4_cbs SET
  inwoners     = 10430,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 40.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3902';

UPDATE pc4_cbs SET
  inwoners     = 7400,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 40.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3903';

UPDATE pc4_cbs SET
  inwoners     = 13320,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 41.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3904';

UPDATE pc4_cbs SET
  inwoners     = 14225,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 40,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3905';

UPDATE pc4_cbs SET
  inwoners     = 6900,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3906';

UPDATE pc4_cbs SET
  inwoners     = 6690,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 30.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3907';

UPDATE pc4_cbs SET
  inwoners     = 14955,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3911';

UPDATE pc4_cbs SET
  inwoners     = 580,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3912';

UPDATE pc4_cbs SET
  inwoners     = 4305,
  pct_vrouw    = 49,
  cbs_leeftijd = 41.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3921';

UPDATE pc4_cbs SET
  inwoners     = 395,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 45.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3922';

UPDATE pc4_cbs SET
  inwoners     = 10345,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3925';

UPDATE pc4_cbs SET
  inwoners     = 5755,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 38.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3927';

UPDATE pc4_cbs SET
  inwoners     = 14635,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 40.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3931';

UPDATE pc4_cbs SET
  inwoners     = 10680,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 46.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3941';

UPDATE pc4_cbs SET
  inwoners     = 3320,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3945';

UPDATE pc4_cbs SET
  inwoners     = 2530,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3947';

UPDATE pc4_cbs SET
  inwoners     = 4610,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 46.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3951';

UPDATE pc4_cbs SET
  inwoners     = 1500,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 40.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3953';

UPDATE pc4_cbs SET
  inwoners     = 7795,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3956';

UPDATE pc4_cbs SET
  inwoners     = 5470,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3958';

UPDATE pc4_cbs SET
  inwoners     = 1495,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 40.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3959';

UPDATE pc4_cbs SET
  inwoners     = 9460,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 45.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3961';

UPDATE pc4_cbs SET
  inwoners     = 8635,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3962';

UPDATE pc4_cbs SET
  inwoners     = 8050,
  pct_vrouw    = 52,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3971';

UPDATE pc4_cbs SET
  inwoners     = 10945,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3972';

UPDATE pc4_cbs SET
  inwoners     = 7365,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 42.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3981';

UPDATE pc4_cbs SET
  inwoners     = 6155,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3984';

UPDATE pc4_cbs SET
  inwoners     = 2605,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3985';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 33.3,
  cbs_leeftijd = 41,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3989';

UPDATE pc4_cbs SET
  inwoners     = 17980,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 41.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3991';

UPDATE pc4_cbs SET
  inwoners     = 5915,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3992';

UPDATE pc4_cbs SET
  inwoners     = 4975,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 42.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3993';

UPDATE pc4_cbs SET
  inwoners     = 14475,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 40.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3994';

UPDATE pc4_cbs SET
  inwoners     = 3955,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 37.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3995';

UPDATE pc4_cbs SET
  inwoners     = 685,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3997';

UPDATE pc4_cbs SET
  inwoners     = 2110,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3998';

UPDATE pc4_cbs SET
  inwoners     = 750,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '3999';

UPDATE pc4_cbs SET
  inwoners     = 10925,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4001';

UPDATE pc4_cbs SET
  inwoners     = 2330,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 46.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4002';

UPDATE pc4_cbs SET
  inwoners     = 7885,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4003';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 33.3,
  cbs_leeftijd = 51.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4004';

UPDATE pc4_cbs SET
  inwoners     = 5935,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4005';

UPDATE pc4_cbs SET
  inwoners     = 3625,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 42.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4006';

UPDATE pc4_cbs SET
  inwoners     = 9475,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 39.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4007';

UPDATE pc4_cbs SET
  inwoners     = 1780,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4011';

UPDATE pc4_cbs SET
  inwoners     = 1410,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4012';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4013';

UPDATE pc4_cbs SET
  inwoners     = 1135,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4014';

UPDATE pc4_cbs SET
  inwoners     = 185,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4016';

UPDATE pc4_cbs SET
  inwoners     = 120,
  pct_vrouw    = 45.8,
  cbs_leeftijd = 39.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4017';

UPDATE pc4_cbs SET
  inwoners     = 5115,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4021';

UPDATE pc4_cbs SET
  inwoners     = 660,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4023';

UPDATE pc4_cbs SET
  inwoners     = 1600,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 46.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4024';

UPDATE pc4_cbs SET
  inwoners     = 2160,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4031';

UPDATE pc4_cbs SET
  inwoners     = 800,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4032';

UPDATE pc4_cbs SET
  inwoners     = 5940,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4033';

UPDATE pc4_cbs SET
  inwoners     = 7350,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 36.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4041';

UPDATE pc4_cbs SET
  inwoners     = 6340,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 37.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4043';

UPDATE pc4_cbs SET
  inwoners     = 5210,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 40.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4051';

UPDATE pc4_cbs SET
  inwoners     = 1165,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 40.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4053';

UPDATE pc4_cbs SET
  inwoners     = 1040,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4054';

UPDATE pc4_cbs SET
  inwoners     = 1665,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4061';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 46.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4062';

UPDATE pc4_cbs SET
  inwoners     = 420,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 46.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4063';

UPDATE pc4_cbs SET
  inwoners     = 1080,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4064';

UPDATE pc4_cbs SET
  inwoners     = 7685,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4101';

UPDATE pc4_cbs SET
  inwoners     = 7955,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 43.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4102';

UPDATE pc4_cbs SET
  inwoners     = 1450,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4103';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 40.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4104';

UPDATE pc4_cbs SET
  inwoners     = 10725,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4105';

UPDATE pc4_cbs SET
  inwoners     = 1540,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 33.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4106';

UPDATE pc4_cbs SET
  inwoners     = 515,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 46.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4107';

UPDATE pc4_cbs SET
  inwoners     = 650,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 44,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4111';

UPDATE pc4_cbs SET
  inwoners     = 3350,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4112';

UPDATE pc4_cbs SET
  inwoners     = 380,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4115';

UPDATE pc4_cbs SET
  inwoners     = 2640,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4116';

UPDATE pc4_cbs SET
  inwoners     = 515,
  pct_vrouw    = 45.6,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4117';

UPDATE pc4_cbs SET
  inwoners     = 505,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4119';

UPDATE pc4_cbs SET
  inwoners     = 1190,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4121';

UPDATE pc4_cbs SET
  inwoners     = 865,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4122';

UPDATE pc4_cbs SET
  inwoners     = 1540,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4124';

UPDATE pc4_cbs SET
  inwoners     = 3795,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 30.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4125';

UPDATE pc4_cbs SET
  inwoners     = 1005,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 40.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4126';

UPDATE pc4_cbs SET
  inwoners     = 3005,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4128';

UPDATE pc4_cbs SET
  inwoners     = 4215,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4131';

UPDATE pc4_cbs SET
  inwoners     = 5150,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4132';

UPDATE pc4_cbs SET
  inwoners     = 7535,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4133';

UPDATE pc4_cbs SET
  inwoners     = 5565,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4141';

UPDATE pc4_cbs SET
  inwoners     = 8030,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 39.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4142';

UPDATE pc4_cbs SET
  inwoners     = 6495,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4143';

UPDATE pc4_cbs SET
  inwoners     = 1650,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 40.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4145';

UPDATE pc4_cbs SET
  inwoners     = 3240,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4147';

UPDATE pc4_cbs SET
  inwoners     = 580,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4151';

UPDATE pc4_cbs SET
  inwoners     = 900,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4152';

UPDATE pc4_cbs SET
  inwoners     = 3375,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4153';

UPDATE pc4_cbs SET
  inwoners     = 340,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 42.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4155';

UPDATE pc4_cbs SET
  inwoners     = 900,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4156';

UPDATE pc4_cbs SET
  inwoners     = 570,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4157';

UPDATE pc4_cbs SET
  inwoners     = 2070,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4158';

UPDATE pc4_cbs SET
  inwoners     = 2375,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4161';

UPDATE pc4_cbs SET
  inwoners     = 240,
  pct_vrouw    = 50,
  cbs_leeftijd = 38.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4163';

UPDATE pc4_cbs SET
  inwoners     = 2810,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4171';

UPDATE pc4_cbs SET
  inwoners     = 1050,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 39.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4174';

UPDATE pc4_cbs SET
  inwoners     = 2910,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4175';

UPDATE pc4_cbs SET
  inwoners     = 1080,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 36.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4176';

UPDATE pc4_cbs SET
  inwoners     = 2385,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 37.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4181';

UPDATE pc4_cbs SET
  inwoners     = 475,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 43.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4182';

UPDATE pc4_cbs SET
  inwoners     = 1185,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4184';

UPDATE pc4_cbs SET
  inwoners     = 570,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4185';

UPDATE pc4_cbs SET
  inwoners     = 11005,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4191';

UPDATE pc4_cbs SET
  inwoners     = 5660,
  pct_vrouw    = 49,
  cbs_leeftijd = 36.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4194';

UPDATE pc4_cbs SET
  inwoners     = 2105,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4196';

UPDATE pc4_cbs SET
  inwoners     = 1215,
  pct_vrouw    = 51,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4197';

UPDATE pc4_cbs SET
  inwoners     = 5870,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4201';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4202';

UPDATE pc4_cbs SET
  inwoners     = 270,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 41.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4203';

UPDATE pc4_cbs SET
  inwoners     = 5260,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.8,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4204';

UPDATE pc4_cbs SET
  inwoners     = 9775,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4205';

UPDATE pc4_cbs SET
  inwoners     = 3120,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 39.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4206';

UPDATE pc4_cbs SET
  inwoners     = 9850,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 41.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4207';

UPDATE pc4_cbs SET
  inwoners     = 3590,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 34,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4208';

UPDATE pc4_cbs SET
  inwoners     = 1350,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 41.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4209';

UPDATE pc4_cbs SET
  inwoners     = 775,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4211';

UPDATE pc4_cbs SET
  inwoners     = 135,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4212';

UPDATE pc4_cbs SET
  inwoners     = 855,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4213';

UPDATE pc4_cbs SET
  inwoners     = 2150,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4214';

UPDATE pc4_cbs SET
  inwoners     = 1440,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4221';

UPDATE pc4_cbs SET
  inwoners     = 1960,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4223';

UPDATE pc4_cbs SET
  inwoners     = 1810,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4225';

UPDATE pc4_cbs SET
  inwoners     = 3955,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4231';

UPDATE pc4_cbs SET
  inwoners     = 3160,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4233';

UPDATE pc4_cbs SET
  inwoners     = 805,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 39.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4235';

UPDATE pc4_cbs SET
  inwoners     = 3425,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 44.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4241';

UPDATE pc4_cbs SET
  inwoners     = 1040,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 38.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4243';

UPDATE pc4_cbs SET
  inwoners     = 1540,
  pct_vrouw    = 50,
  cbs_leeftijd = 39.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4245';

UPDATE pc4_cbs SET
  inwoners     = 875,
  pct_vrouw    = 48,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4247';

UPDATE pc4_cbs SET
  inwoners     = 11575,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 40.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4251';

UPDATE pc4_cbs SET
  inwoners     = 6120,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4254';

UPDATE pc4_cbs SET
  inwoners     = 3735,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 43.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4255';

UPDATE pc4_cbs SET
  inwoners     = 7000,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 40.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4261';

UPDATE pc4_cbs SET
  inwoners     = 3205,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 39.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4264';

UPDATE pc4_cbs SET
  inwoners     = 1715,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4265';

UPDATE pc4_cbs SET
  inwoners     = 895,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4266';

UPDATE pc4_cbs SET
  inwoners     = 430,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4267';

UPDATE pc4_cbs SET
  inwoners     = 770,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4268';

UPDATE pc4_cbs SET
  inwoners     = 465,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4269';

UPDATE pc4_cbs SET
  inwoners     = 2625,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4271';

UPDATE pc4_cbs SET
  inwoners     = 4280,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 46.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4273';

UPDATE pc4_cbs SET
  inwoners     = 2745,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4281';

UPDATE pc4_cbs SET
  inwoners     = 1645,
  pct_vrouw    = 48,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4283';

UPDATE pc4_cbs SET
  inwoners     = 2005,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4284';

UPDATE pc4_cbs SET
  inwoners     = 4620,
  pct_vrouw    = 51,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4285';

UPDATE pc4_cbs SET
  inwoners     = 3810,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4286';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 38.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4287';

UPDATE pc4_cbs SET
  inwoners     = 350,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4288';

UPDATE pc4_cbs SET
  inwoners     = 9530,
  pct_vrouw    = 52,
  cbs_leeftijd = 46.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4301';

UPDATE pc4_cbs SET
  inwoners     = 1245,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 49,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4302';

UPDATE pc4_cbs SET
  inwoners     = 1260,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 39.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4303';

UPDATE pc4_cbs SET
  inwoners     = 585,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 49.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4305';

UPDATE pc4_cbs SET
  inwoners     = 2760,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 40.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4306';

UPDATE pc4_cbs SET
  inwoners     = 2375,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4307';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4308';

UPDATE pc4_cbs SET
  inwoners     = 3795,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4311';

UPDATE pc4_cbs SET
  inwoners     = 965,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4315';

UPDATE pc4_cbs SET
  inwoners     = 770,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4316';

UPDATE pc4_cbs SET
  inwoners     = 790,
  pct_vrouw    = 50,
  cbs_leeftijd = 50.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4317';

UPDATE pc4_cbs SET
  inwoners     = 1290,
  pct_vrouw    = 50,
  cbs_leeftijd = 49.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4318';

UPDATE pc4_cbs SET
  inwoners     = 1015,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 41.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4321';

UPDATE pc4_cbs SET
  inwoners     = 1310,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 48.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4322';

UPDATE pc4_cbs SET
  inwoners     = 345,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 47.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4323';

UPDATE pc4_cbs SET
  inwoners     = 1490,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 52.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4325';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 51.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4326';

UPDATE pc4_cbs SET
  inwoners     = 260,
  pct_vrouw    = 50,
  cbs_leeftijd = 51.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4327';

UPDATE pc4_cbs SET
  inwoners     = 4215,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 54.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4328';

UPDATE pc4_cbs SET
  inwoners     = 6555,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 46.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4331';

UPDATE pc4_cbs SET
  inwoners     = 4015,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 47.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4332';

UPDATE pc4_cbs SET
  inwoners     = 5235,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 46.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4333';

UPDATE pc4_cbs SET
  inwoners     = 3100,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 47.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4334';

UPDATE pc4_cbs SET
  inwoners     = 7710,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 41.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4335';

UPDATE pc4_cbs SET
  inwoners     = 6990,
  pct_vrouw    = 52,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4336';

UPDATE pc4_cbs SET
  inwoners     = 9580,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 39.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4337';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 42.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4338';

UPDATE pc4_cbs SET
  inwoners     = 1380,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 41.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4339';

UPDATE pc4_cbs SET
  inwoners     = 5330,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4341';

UPDATE pc4_cbs SET
  inwoners     = 1670,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 49.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4351';

UPDATE pc4_cbs SET
  inwoners     = 510,
  pct_vrouw    = 49,
  cbs_leeftijd = 46.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4352';

UPDATE pc4_cbs SET
  inwoners     = 1865,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4353';

UPDATE pc4_cbs SET
  inwoners     = 1040,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 47.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4354';

UPDATE pc4_cbs SET
  inwoners     = 2440,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 49.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4356';

UPDATE pc4_cbs SET
  inwoners     = 1610,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 47.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4357';

UPDATE pc4_cbs SET
  inwoners     = 2610,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4361';

UPDATE pc4_cbs SET
  inwoners     = 1485,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 40,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4363';

UPDATE pc4_cbs SET
  inwoners     = 1390,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4364';

UPDATE pc4_cbs SET
  inwoners     = 1460,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 37.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4365';

UPDATE pc4_cbs SET
  inwoners     = 3475,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4371';

UPDATE pc4_cbs SET
  inwoners     = 875,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4373';

UPDATE pc4_cbs SET
  inwoners     = 1635,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 49.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4374';

UPDATE pc4_cbs SET
  inwoners     = 7910,
  pct_vrouw    = 48,
  cbs_leeftijd = 48,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4381';

UPDATE pc4_cbs SET
  inwoners     = 8325,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 45.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4382';

UPDATE pc4_cbs SET
  inwoners     = 3205,
  pct_vrouw    = 49,
  cbs_leeftijd = 40.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4383';

UPDATE pc4_cbs SET
  inwoners     = 5465,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 46.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4384';

UPDATE pc4_cbs SET
  inwoners     = 5205,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4385';

UPDATE pc4_cbs SET
  inwoners     = 3930,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4386';

UPDATE pc4_cbs SET
  inwoners     = 560,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 40,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4387';

UPDATE pc4_cbs SET
  inwoners     = 10235,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4388';

UPDATE pc4_cbs SET
  inwoners     = 550,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 46.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4389';

UPDATE pc4_cbs SET
  inwoners     = 7140,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 40.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4401';

UPDATE pc4_cbs SET
  inwoners     = 2990,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 42.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4411';

UPDATE pc4_cbs SET
  inwoners     = 4515,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 37.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4413';

UPDATE pc4_cbs SET
  inwoners     = 1435,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 35.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4414';

UPDATE pc4_cbs SET
  inwoners     = 610,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 32,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4415';

UPDATE pc4_cbs SET
  inwoners     = 4895,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 38.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4416';

UPDATE pc4_cbs SET
  inwoners     = 1740,
  pct_vrouw    = 48,
  cbs_leeftijd = 44.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4417';

UPDATE pc4_cbs SET
  inwoners     = 9385,
  pct_vrouw    = 51,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4421';

UPDATE pc4_cbs SET
  inwoners     = 510,
  pct_vrouw    = 46.1,
  cbs_leeftijd = 40.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4423';

UPDATE pc4_cbs SET
  inwoners     = 3090,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4424';

UPDATE pc4_cbs SET
  inwoners     = 4690,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 39.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4431';

UPDATE pc4_cbs SET
  inwoners     = 720,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4433';

UPDATE pc4_cbs SET
  inwoners     = 965,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4434';

UPDATE pc4_cbs SET
  inwoners     = 595,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4435';

UPDATE pc4_cbs SET
  inwoners     = 660,
  pct_vrouw    = 47,
  cbs_leeftijd = 46,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4436';

UPDATE pc4_cbs SET
  inwoners     = 370,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 50.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4437';

UPDATE pc4_cbs SET
  inwoners     = 570,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 45.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4438';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4441';

UPDATE pc4_cbs SET
  inwoners     = 630,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 47,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4443';

UPDATE pc4_cbs SET
  inwoners     = 510,
  pct_vrouw    = 48,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4444';

UPDATE pc4_cbs SET
  inwoners     = 5520,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4451';

UPDATE pc4_cbs SET
  inwoners     = 2045,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4453';

UPDATE pc4_cbs SET
  inwoners     = 1490,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 37.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4454';

UPDATE pc4_cbs SET
  inwoners     = 1325,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 40,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4455';

UPDATE pc4_cbs SET
  inwoners     = 1810,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4456';

UPDATE pc4_cbs SET
  inwoners     = 1710,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4458';

UPDATE pc4_cbs SET
  inwoners     = 11495,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 46.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4461';

UPDATE pc4_cbs SET
  inwoners     = 7130,
  pct_vrouw    = 52,
  cbs_leeftijd = 46.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4462';

UPDATE pc4_cbs SET
  inwoners     = 7595,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 41.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4463';

UPDATE pc4_cbs SET
  inwoners     = 2580,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 40.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4464';

UPDATE pc4_cbs SET
  inwoners     = 920,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 52.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4465';

UPDATE pc4_cbs SET
  inwoners     = 2295,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4471';

UPDATE pc4_cbs SET
  inwoners     = 1150,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4472';

UPDATE pc4_cbs SET
  inwoners     = 550,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 47.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4474';

UPDATE pc4_cbs SET
  inwoners     = 815,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4475';

UPDATE pc4_cbs SET
  inwoners     = 3440,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4481';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 40,
  cbs_leeftijd = 55,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4482';

UPDATE pc4_cbs SET
  inwoners     = 2090,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4484';

UPDATE pc4_cbs SET
  inwoners     = 480,
  pct_vrouw    = 49,
  cbs_leeftijd = 48.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4485';

UPDATE pc4_cbs SET
  inwoners     = 1575,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 49.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4486';

UPDATE pc4_cbs SET
  inwoners     = 1250,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4491';

UPDATE pc4_cbs SET
  inwoners     = 2195,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 48.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4493';

UPDATE pc4_cbs SET
  inwoners     = 350,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 53.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4494';

UPDATE pc4_cbs SET
  inwoners     = 4635,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 47.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4501';

UPDATE pc4_cbs SET
  inwoners     = 955,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 47.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4503';

UPDATE pc4_cbs SET
  inwoners     = 390,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4504';

UPDATE pc4_cbs SET
  inwoners     = 460,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 50,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4505';

UPDATE pc4_cbs SET
  inwoners     = 685,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 47.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4506';

UPDATE pc4_cbs SET
  inwoners     = 1455,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4507';

UPDATE pc4_cbs SET
  inwoners     = 530,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4508';

UPDATE pc4_cbs SET
  inwoners     = 4550,
  pct_vrouw    = 52,
  cbs_leeftijd = 49.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4511';

UPDATE pc4_cbs SET
  inwoners     = 715,
  pct_vrouw    = 51,
  cbs_leeftijd = 49.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4513';

UPDATE pc4_cbs SET
  inwoners     = 2345,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4515';

UPDATE pc4_cbs SET
  inwoners     = 1580,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4521';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 50,
  cbs_leeftijd = 49.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4522';

UPDATE pc4_cbs SET
  inwoners     = 2385,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 49,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4524';

UPDATE pc4_cbs SET
  inwoners     = 265,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 54.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4525';

UPDATE pc4_cbs SET
  inwoners     = 2315,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 47.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4527';

UPDATE pc4_cbs SET
  inwoners     = 315,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 46,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4528';

UPDATE pc4_cbs SET
  inwoners     = 960,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4529';

UPDATE pc4_cbs SET
  inwoners     = 2750,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 49.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4531';

UPDATE pc4_cbs SET
  inwoners     = 7050,
  pct_vrouw    = 52,
  cbs_leeftijd = 50.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4532';

UPDATE pc4_cbs SET
  inwoners     = 4440,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 38.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4533';

UPDATE pc4_cbs SET
  inwoners     = 4525,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4535';

UPDATE pc4_cbs SET
  inwoners     = 3100,
  pct_vrouw    = 53.2,
  cbs_leeftijd = 46.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4536';

UPDATE pc4_cbs SET
  inwoners     = 3895,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4537';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 43.1,
  cbs_leeftijd = 49.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4538';

UPDATE pc4_cbs SET
  inwoners     = 185,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 45.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4539';

UPDATE pc4_cbs SET
  inwoners     = 2260,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4541';

UPDATE pc4_cbs SET
  inwoners     = 2840,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4542';

UPDATE pc4_cbs SET
  inwoners     = 2720,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4543';

UPDATE pc4_cbs SET
  inwoners     = 3925,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 45.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4551';

UPDATE pc4_cbs SET
  inwoners     = 2025,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 46.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4553';

UPDATE pc4_cbs SET
  inwoners     = 1925,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4554';

UPDATE pc4_cbs SET
  inwoners     = 9825,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 48.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4561';

UPDATE pc4_cbs SET
  inwoners     = 1070,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 41.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4562';

UPDATE pc4_cbs SET
  inwoners     = 3160,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4564';

UPDATE pc4_cbs SET
  inwoners     = 350,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 47.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4565';

UPDATE pc4_cbs SET
  inwoners     = 1165,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4566';

UPDATE pc4_cbs SET
  inwoners     = 2315,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4567';

UPDATE pc4_cbs SET
  inwoners     = 960,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4568';

UPDATE pc4_cbs SET
  inwoners     = 940,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4569';

UPDATE pc4_cbs SET
  inwoners     = 7840,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4571';

UPDATE pc4_cbs SET
  inwoners     = 910,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4574';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 45.1,
  cbs_leeftijd = 44.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4575';

UPDATE pc4_cbs SET
  inwoners     = 2615,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 47.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4576';

UPDATE pc4_cbs SET
  inwoners     = 1805,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4581';

UPDATE pc4_cbs SET
  inwoners     = 460,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4583';

UPDATE pc4_cbs SET
  inwoners     = 250,
  pct_vrouw    = 48,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4584';

UPDATE pc4_cbs SET
  inwoners     = 670,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 48.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4585';

UPDATE pc4_cbs SET
  inwoners     = 555,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4586';

UPDATE pc4_cbs SET
  inwoners     = 3185,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 47,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4587';

UPDATE pc4_cbs SET
  inwoners     = 330,
  pct_vrouw    = 47,
  cbs_leeftijd = 48.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4588';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 52.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4589';

UPDATE pc4_cbs SET
  inwoners     = 9775,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4611';

UPDATE pc4_cbs SET
  inwoners     = 730,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 40.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4612';

UPDATE pc4_cbs SET
  inwoners     = 3725,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4613';

UPDATE pc4_cbs SET
  inwoners     = 7095,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4614';

UPDATE pc4_cbs SET
  inwoners     = 5645,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 45.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4615';

UPDATE pc4_cbs SET
  inwoners     = 1755,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 37.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4616';

UPDATE pc4_cbs SET
  inwoners     = 7240,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4617';

UPDATE pc4_cbs SET
  inwoners     = 4740,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 39.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4621';

UPDATE pc4_cbs SET
  inwoners     = 470,
  pct_vrouw    = 44.7,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4622';

UPDATE pc4_cbs SET
  inwoners     = 4055,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 40.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4623';

UPDATE pc4_cbs SET
  inwoners     = 6595,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 43.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4624';

UPDATE pc4_cbs SET
  inwoners     = 3405,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 41.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4625';

UPDATE pc4_cbs SET
  inwoners     = 9370,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4631';

UPDATE pc4_cbs SET
  inwoners     = 1475,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 46.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4634';

UPDATE pc4_cbs SET
  inwoners     = 2045,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 49,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4635';

UPDATE pc4_cbs SET
  inwoners     = 5450,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4641';

UPDATE pc4_cbs SET
  inwoners     = 3865,
  pct_vrouw    = 49,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4645';

UPDATE pc4_cbs SET
  inwoners     = 12535,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4651';

UPDATE pc4_cbs SET
  inwoners     = 745,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 40.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4652';

UPDATE pc4_cbs SET
  inwoners     = 725,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4655';

UPDATE pc4_cbs SET
  inwoners     = 12540,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4661';

UPDATE pc4_cbs SET
  inwoners     = 1915,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 46.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4664';

UPDATE pc4_cbs SET
  inwoners     = 5810,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4671';

UPDATE pc4_cbs SET
  inwoners     = 2700,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4675';

UPDATE pc4_cbs SET
  inwoners     = 2265,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4681';

UPDATE pc4_cbs SET
  inwoners     = 8420,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 41.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4691';

UPDATE pc4_cbs SET
  inwoners     = 1780,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 40.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4693';

UPDATE pc4_cbs SET
  inwoners     = 1855,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 37.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4694';

UPDATE pc4_cbs SET
  inwoners     = 3570,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4695';

UPDATE pc4_cbs SET
  inwoners     = 1700,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4696';

UPDATE pc4_cbs SET
  inwoners     = 4090,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4697';

UPDATE pc4_cbs SET
  inwoners     = 2740,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4698';

UPDATE pc4_cbs SET
  inwoners     = 7010,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4701';

UPDATE pc4_cbs SET
  inwoners     = 12950,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4702';

UPDATE pc4_cbs SET
  inwoners     = 7680,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4703';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 40,
  cbs_leeftijd = 42.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4704';

UPDATE pc4_cbs SET
  inwoners     = 315,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 45.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4705';

UPDATE pc4_cbs SET
  inwoners     = 11105,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4706';

UPDATE pc4_cbs SET
  inwoners     = 16065,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4707';

UPDATE pc4_cbs SET
  inwoners     = 12005,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4708';

UPDATE pc4_cbs SET
  inwoners     = 1810,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4709';

UPDATE pc4_cbs SET
  inwoners     = 9690,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4711';

UPDATE pc4_cbs SET
  inwoners     = 5275,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4714';

UPDATE pc4_cbs SET
  inwoners     = 5150,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4715';

UPDATE pc4_cbs SET
  inwoners     = 1325,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4721';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 42.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4722';

UPDATE pc4_cbs SET
  inwoners     = 4850,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4724';

UPDATE pc4_cbs SET
  inwoners     = 1205,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4725';

UPDATE pc4_cbs SET
  inwoners     = 1855,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 47.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4726';

UPDATE pc4_cbs SET
  inwoners     = 610,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 46.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4727';

UPDATE pc4_cbs SET
  inwoners     = 13130,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4731';

UPDATE pc4_cbs SET
  inwoners     = 2080,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4735';

UPDATE pc4_cbs SET
  inwoners     = 6815,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4741';

UPDATE pc4_cbs SET
  inwoners     = 2605,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4744';

UPDATE pc4_cbs SET
  inwoners     = 7440,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4751';

UPDATE pc4_cbs SET
  inwoners     = 1195,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4754';

UPDATE pc4_cbs SET
  inwoners     = 2340,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4756';

UPDATE pc4_cbs SET
  inwoners     = 2260,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4758';

UPDATE pc4_cbs SET
  inwoners     = 1045,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4759';

UPDATE pc4_cbs SET
  inwoners     = 13405,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4761';

UPDATE pc4_cbs SET
  inwoners     = 1835,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4762';

UPDATE pc4_cbs SET
  inwoners     = 1620,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4765';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 25,
  cbs_leeftijd = 48.3,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4766';

UPDATE pc4_cbs SET
  inwoners     = 640,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4771';

UPDATE pc4_cbs SET
  inwoners     = 250,
  pct_vrouw    = 46,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4772';

UPDATE pc4_cbs SET
  inwoners     = 560,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 43.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4781';

UPDATE pc4_cbs SET
  inwoners     = 520,
  pct_vrouw    = 49,
  cbs_leeftijd = 46.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4782';

UPDATE pc4_cbs SET
  inwoners     = 5970,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4791';

UPDATE pc4_cbs SET
  inwoners     = 5625,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4793';

UPDATE pc4_cbs SET
  inwoners     = 970,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4794';

UPDATE pc4_cbs SET
  inwoners     = 280,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4796';

UPDATE pc4_cbs SET
  inwoners     = 3110,
  pct_vrouw    = 51,
  cbs_leeftijd = 45.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4797';

UPDATE pc4_cbs SET
  inwoners     = 18555,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 39.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4811';

UPDATE pc4_cbs SET
  inwoners     = 10570,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 38.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4812';

UPDATE pc4_cbs SET
  inwoners     = 8690,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 42.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4813';

UPDATE pc4_cbs SET
  inwoners     = 11710,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 39.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4814';

UPDATE pc4_cbs SET
  inwoners     = 4340,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 37.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4815';

UPDATE pc4_cbs SET
  inwoners     = 4875,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 39.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4816';

UPDATE pc4_cbs SET
  inwoners     = 15975,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 40.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4817';

UPDATE pc4_cbs SET
  inwoners     = 8860,
  pct_vrouw    = 52,
  cbs_leeftijd = 41.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4818';

UPDATE pc4_cbs SET
  inwoners     = 3675,
  pct_vrouw    = 52,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4819';

UPDATE pc4_cbs SET
  inwoners     = 7755,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 41.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4822';

UPDATE pc4_cbs SET
  inwoners     = 8600,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4823';

UPDATE pc4_cbs SET
  inwoners     = 8825,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4824';

UPDATE pc4_cbs SET
  inwoners     = 95,
  pct_vrouw    = 42.1,
  cbs_leeftijd = 49.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4825';

UPDATE pc4_cbs SET
  inwoners     = 9185,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 40.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4826';

UPDATE pc4_cbs SET
  inwoners     = 7840,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 39.7,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4827';

UPDATE pc4_cbs SET
  inwoners     = 11980,
  pct_vrouw    = 53.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4834';

UPDATE pc4_cbs SET
  inwoners     = 6825,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4835';

UPDATE pc4_cbs SET
  inwoners     = 940,
  pct_vrouw    = 44.7,
  cbs_leeftijd = 45.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4836';

UPDATE pc4_cbs SET
  inwoners     = 2290,
  pct_vrouw    = 54.8,
  cbs_leeftijd = 50.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4837';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 46.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4838';

UPDATE pc4_cbs SET
  inwoners     = 410,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4839';

UPDATE pc4_cbs SET
  inwoners     = 12335,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4841';

UPDATE pc4_cbs SET
  inwoners     = 6355,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4844';

UPDATE pc4_cbs SET
  inwoners     = 2240,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4845';

UPDATE pc4_cbs SET
  inwoners     = 9140,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4847';

UPDATE pc4_cbs SET
  inwoners     = 3185,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 41.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4849';

UPDATE pc4_cbs SET
  inwoners     = 4955,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4851';

UPDATE pc4_cbs SET
  inwoners     = 8430,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4854';

UPDATE pc4_cbs SET
  inwoners     = 1080,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4855';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 48.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4856';

UPDATE pc4_cbs SET
  inwoners     = 320,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 49,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4858';

UPDATE pc4_cbs SET
  inwoners     = 50,
  pct_vrouw    = 40,
  cbs_leeftijd = 38.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4859';

UPDATE pc4_cbs SET
  inwoners     = 4255,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 46.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4861';

UPDATE pc4_cbs SET
  inwoners     = 17210,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4871';

UPDATE pc4_cbs SET
  inwoners     = 8875,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4872';

UPDATE pc4_cbs SET
  inwoners     = 6245,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4873';

UPDATE pc4_cbs SET
  inwoners     = 3150,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4874';

UPDATE pc4_cbs SET
  inwoners     = 1820,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 47.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4875';

UPDATE pc4_cbs SET
  inwoners     = 7720,
  pct_vrouw    = 51,
  cbs_leeftijd = 43.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4876';

UPDATE pc4_cbs SET
  inwoners     = 35,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 40.3,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4877';

UPDATE pc4_cbs SET
  inwoners     = 5,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4878';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4879';

UPDATE pc4_cbs SET
  inwoners     = 8545,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4881';

UPDATE pc4_cbs SET
  inwoners     = 2375,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 43.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4882';

UPDATE pc4_cbs SET
  inwoners     = 3015,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4884';

UPDATE pc4_cbs SET
  inwoners     = 1790,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4885';

UPDATE pc4_cbs SET
  inwoners     = 6820,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4891';

UPDATE pc4_cbs SET
  inwoners     = 10905,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 48.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4901';

UPDATE pc4_cbs SET
  inwoners     = 9585,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4902';

UPDATE pc4_cbs SET
  inwoners     = 435,
  pct_vrouw    = 46,
  cbs_leeftijd = 51.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4903';

UPDATE pc4_cbs SET
  inwoners     = 11985,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4904';

UPDATE pc4_cbs SET
  inwoners     = 1410,
  pct_vrouw    = 50,
  cbs_leeftijd = 39,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4905';

UPDATE pc4_cbs SET
  inwoners     = 4720,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 38.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4906';

UPDATE pc4_cbs SET
  inwoners     = 10100,
  pct_vrouw    = 51,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4907';

UPDATE pc4_cbs SET
  inwoners     = 3050,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4908';

UPDATE pc4_cbs SET
  inwoners     = 1250,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4909';

UPDATE pc4_cbs SET
  inwoners     = 1300,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4911';

UPDATE pc4_cbs SET
  inwoners     = 12965,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4921';

UPDATE pc4_cbs SET
  inwoners     = 555,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 47.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4924';

UPDATE pc4_cbs SET
  inwoners     = 4260,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4926';

UPDATE pc4_cbs SET
  inwoners     = 1795,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4927';

UPDATE pc4_cbs SET
  inwoners     = 7230,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4931';

UPDATE pc4_cbs SET
  inwoners     = 8965,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 44.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4941';

UPDATE pc4_cbs SET
  inwoners     = 3625,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 40.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4942';

UPDATE pc4_cbs SET
  inwoners     = 2240,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '4944';

UPDATE pc4_cbs SET
  inwoners     = 12045,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 42.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5011';

UPDATE pc4_cbs SET
  inwoners     = 4915,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5012';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 45.3,
  cbs_leeftijd = 39.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5013';

UPDATE pc4_cbs SET
  inwoners     = 12090,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 38.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5014';

UPDATE pc4_cbs SET
  inwoners     = 755,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5015';

UPDATE pc4_cbs SET
  inwoners     = 5985,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5017';

UPDATE pc4_cbs SET
  inwoners     = 4010,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 41.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5018';

UPDATE pc4_cbs SET
  inwoners     = 12620,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5021';

UPDATE pc4_cbs SET
  inwoners     = 8520,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 41.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5022';

UPDATE pc4_cbs SET
  inwoners     = 13095,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 38.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5025';

UPDATE pc4_cbs SET
  inwoners     = 1700,
  pct_vrouw    = 50,
  cbs_leeftijd = 29.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5026';

UPDATE pc4_cbs SET
  inwoners     = 6100,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5032';

UPDATE pc4_cbs SET
  inwoners     = 8005,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 36.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5035';

UPDATE pc4_cbs SET
  inwoners     = 9120,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 37.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5036';

UPDATE pc4_cbs SET
  inwoners     = 11090,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 40,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5037';

UPDATE pc4_cbs SET
  inwoners     = 16520,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 40.9,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5038';

UPDATE pc4_cbs SET
  inwoners     = 9890,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5041';

UPDATE pc4_cbs SET
  inwoners     = 12820,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 39.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5042';

UPDATE pc4_cbs SET
  inwoners     = 9125,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5043';

UPDATE pc4_cbs SET
  inwoners     = 8330,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 41.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5044';

UPDATE pc4_cbs SET
  inwoners     = 18110,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5045';

UPDATE pc4_cbs SET
  inwoners     = 12260,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 39.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5046';

UPDATE pc4_cbs SET
  inwoners     = 140,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 47.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5047';

UPDATE pc4_cbs SET
  inwoners     = 50,
  pct_vrouw    = 40,
  cbs_leeftijd = 50.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5048';

UPDATE pc4_cbs SET
  inwoners     = 7120,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 37.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5049';

UPDATE pc4_cbs SET
  inwoners     = 14795,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 46.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5051';

UPDATE pc4_cbs SET
  inwoners     = 4570,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5052';

UPDATE pc4_cbs SET
  inwoners     = 1960,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 40.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5053';

UPDATE pc4_cbs SET
  inwoners     = 12400,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5056';

UPDATE pc4_cbs SET
  inwoners     = 2395,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 40.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5057';

UPDATE pc4_cbs SET
  inwoners     = 360,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5059';

UPDATE pc4_cbs SET
  inwoners     = 12630,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 46.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5061';

UPDATE pc4_cbs SET
  inwoners     = 6265,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5062';

UPDATE pc4_cbs SET
  inwoners     = 1570,
  pct_vrouw    = 49,
  cbs_leeftijd = 39.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5063';

UPDATE pc4_cbs SET
  inwoners     = 6120,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5066';

UPDATE pc4_cbs SET
  inwoners     = 8420,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5071';

UPDATE pc4_cbs SET
  inwoners     = 1480,
  pct_vrouw    = 43.6,
  cbs_leeftijd = 44,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5074';

UPDATE pc4_cbs SET
  inwoners     = 6010,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5076';

UPDATE pc4_cbs SET
  inwoners     = 8780,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5081';

UPDATE pc4_cbs SET
  inwoners     = 1035,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 41.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5084';

UPDATE pc4_cbs SET
  inwoners     = 1290,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5085';

UPDATE pc4_cbs SET
  inwoners     = 3940,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5087';

UPDATE pc4_cbs SET
  inwoners     = 915,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5089';

UPDATE pc4_cbs SET
  inwoners     = 6135,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5091';

UPDATE pc4_cbs SET
  inwoners     = 1900,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5094';

UPDATE pc4_cbs SET
  inwoners     = 1965,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5095';

UPDATE pc4_cbs SET
  inwoners     = 865,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5096';

UPDATE pc4_cbs SET
  inwoners     = 3745,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5101';

UPDATE pc4_cbs SET
  inwoners     = 6840,
  pct_vrouw    = 51,
  cbs_leeftijd = 40.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5102';

UPDATE pc4_cbs SET
  inwoners     = 6420,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5103';

UPDATE pc4_cbs SET
  inwoners     = 6155,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5104';

UPDATE pc4_cbs SET
  inwoners     = 415,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5105';

UPDATE pc4_cbs SET
  inwoners     = 1245,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5106';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 36,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5107';

UPDATE pc4_cbs SET
  inwoners     = 2230,
  pct_vrouw    = 48,
  cbs_leeftijd = 46.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5109';

UPDATE pc4_cbs SET
  inwoners     = 5790,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 47.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5111';

UPDATE pc4_cbs SET
  inwoners     = 1160,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5113';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 52,
  cbs_leeftijd = 51,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5114';

UPDATE pc4_cbs SET
  inwoners     = 12310,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5121';

UPDATE pc4_cbs SET
  inwoners     = 4480,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5122';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 46.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5124';

UPDATE pc4_cbs SET
  inwoners     = 450,
  pct_vrouw    = 50,
  cbs_leeftijd = 40.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5125';

UPDATE pc4_cbs SET
  inwoners     = 8880,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 42.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5126';

UPDATE pc4_cbs SET
  inwoners     = 4415,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5131';

UPDATE pc4_cbs SET
  inwoners     = 3000,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 43.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5133';

UPDATE pc4_cbs SET
  inwoners     = 6595,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5141';

UPDATE pc4_cbs SET
  inwoners     = 9945,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5142';

UPDATE pc4_cbs SET
  inwoners     = 4425,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 46.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5143';

UPDATE pc4_cbs SET
  inwoners     = 9300,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 42.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5144';

UPDATE pc4_cbs SET
  inwoners     = 355,
  pct_vrouw    = 35.2,
  cbs_leeftijd = 36.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5145';

UPDATE pc4_cbs SET
  inwoners     = 4495,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 37.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5146';

UPDATE pc4_cbs SET
  inwoners     = 12945,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5151';

UPDATE pc4_cbs SET
  inwoners     = 5335,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5152';

UPDATE pc4_cbs SET
  inwoners     = 1850,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 42.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5154';

UPDATE pc4_cbs SET
  inwoners     = 2720,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 41.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5156';

UPDATE pc4_cbs SET
  inwoners     = 95,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 40.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5157';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 45.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5158';

UPDATE pc4_cbs SET
  inwoners     = 10015,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5161';

UPDATE pc4_cbs SET
  inwoners     = 5170,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5165';

UPDATE pc4_cbs SET
  inwoners     = 14130,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5171';

UPDATE pc4_cbs SET
  inwoners     = 2845,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 41.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5172';

UPDATE pc4_cbs SET
  inwoners     = 6195,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 46.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5175';

UPDATE pc4_cbs SET
  inwoners     = 680,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5176';

UPDATE pc4_cbs SET
  inwoners     = 13935,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5211';

UPDATE pc4_cbs SET
  inwoners     = 7135,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 40.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5212';

UPDATE pc4_cbs SET
  inwoners     = 8020,
  pct_vrouw    = 50,
  cbs_leeftijd = 41,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5213';

UPDATE pc4_cbs SET
  inwoners     = 5430,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 44.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5215';

UPDATE pc4_cbs SET
  inwoners     = 7210,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 45.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5216';

UPDATE pc4_cbs SET
  inwoners     = 5775,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5221';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 28,
  cbs_leeftijd = 47.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5222';

UPDATE pc4_cbs SET
  inwoners     = 13760,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 41.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5223';

UPDATE pc4_cbs SET
  inwoners     = 9025,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 42.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5224';

UPDATE pc4_cbs SET
  inwoners     = 10590,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 41.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5231';

UPDATE pc4_cbs SET
  inwoners     = 2125,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 35.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5232';

UPDATE pc4_cbs SET
  inwoners     = 8100,
  pct_vrouw    = 52,
  cbs_leeftijd = 44.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5233';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 34.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5234';

UPDATE pc4_cbs SET
  inwoners     = 6885,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 43.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5235';

UPDATE pc4_cbs SET
  inwoners     = 6620,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 39,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5236';

UPDATE pc4_cbs SET
  inwoners     = 9145,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5237';

UPDATE pc4_cbs SET
  inwoners     = 6730,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5241';

UPDATE pc4_cbs SET
  inwoners     = 5005,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 45.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5242';

UPDATE pc4_cbs SET
  inwoners     = 2765,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5243';

UPDATE pc4_cbs SET
  inwoners     = 3190,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 46.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5244';

UPDATE pc4_cbs SET
  inwoners     = 5675,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 30.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5245';

UPDATE pc4_cbs SET
  inwoners     = 6050,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5246';

UPDATE pc4_cbs SET
  inwoners     = 7950,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 37.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5247';

UPDATE pc4_cbs SET
  inwoners     = 1535,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 41.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5248';

UPDATE pc4_cbs SET
  inwoners     = 340,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5249';

UPDATE pc4_cbs SET
  inwoners     = 13710,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 42.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5251';

UPDATE pc4_cbs SET
  inwoners     = 2075,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5252';

UPDATE pc4_cbs SET
  inwoners     = 2165,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5253';

UPDATE pc4_cbs SET
  inwoners     = 2590,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 41.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5254';

UPDATE pc4_cbs SET
  inwoners     = 780,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 43.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5255';

UPDATE pc4_cbs SET
  inwoners     = 1315,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 50,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5256';

UPDATE pc4_cbs SET
  inwoners     = 265,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 48.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5257';

UPDATE pc4_cbs SET
  inwoners     = 10455,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5258';

UPDATE pc4_cbs SET
  inwoners     = 7250,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 47.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5261';

UPDATE pc4_cbs SET
  inwoners     = 13440,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 43.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5262';

UPDATE pc4_cbs SET
  inwoners     = 5705,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 39.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5263';

UPDATE pc4_cbs SET
  inwoners     = 140,
  pct_vrouw    = 53.6,
  cbs_leeftijd = 69.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5264';

UPDATE pc4_cbs SET
  inwoners     = 905,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5266';

UPDATE pc4_cbs SET
  inwoners     = 4915,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5268';

UPDATE pc4_cbs SET
  inwoners     = 10950,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5271';

UPDATE pc4_cbs SET
  inwoners     = 1610,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5272';

UPDATE pc4_cbs SET
  inwoners     = 4890,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5275';

UPDATE pc4_cbs SET
  inwoners     = 7290,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 46.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5281';

UPDATE pc4_cbs SET
  inwoners     = 6990,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5282';

UPDATE pc4_cbs SET
  inwoners     = 12700,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5283';

UPDATE pc4_cbs SET
  inwoners     = 1250,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5291';

UPDATE pc4_cbs SET
  inwoners     = 240,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 46.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5292';

UPDATE pc4_cbs SET
  inwoners     = 520,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5293';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 49.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5294';

UPDATE pc4_cbs SET
  inwoners     = 2210,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5296';

UPDATE pc4_cbs SET
  inwoners     = 4790,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5298';

UPDATE pc4_cbs SET
  inwoners     = 10725,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5301';

UPDATE pc4_cbs SET
  inwoners     = 2835,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 37.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5302';

UPDATE pc4_cbs SET
  inwoners     = 1960,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 39.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5305';

UPDATE pc4_cbs SET
  inwoners     = 3210,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 39.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5306';

UPDATE pc4_cbs SET
  inwoners     = 1175,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 35.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5307';

UPDATE pc4_cbs SET
  inwoners     = 2205,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 40.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5308';

UPDATE pc4_cbs SET
  inwoners     = 2665,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5311';

UPDATE pc4_cbs SET
  inwoners     = 915,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 36.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5313';

UPDATE pc4_cbs SET
  inwoners     = 1750,
  pct_vrouw    = 48,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5314';

UPDATE pc4_cbs SET
  inwoners     = 685,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 42.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5315';

UPDATE pc4_cbs SET
  inwoners     = 430,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 41.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5316';

UPDATE pc4_cbs SET
  inwoners     = 1805,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 36,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5317';

UPDATE pc4_cbs SET
  inwoners     = 35,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 47,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5318';

UPDATE pc4_cbs SET
  inwoners     = 5270,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5321';

UPDATE pc4_cbs SET
  inwoners     = 3650,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5324';

UPDATE pc4_cbs SET
  inwoners     = 1190,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 39.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5325';

UPDATE pc4_cbs SET
  inwoners     = 850,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5327';

UPDATE pc4_cbs SET
  inwoners     = 2810,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5328';

UPDATE pc4_cbs SET
  inwoners     = 8235,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5331';

UPDATE pc4_cbs SET
  inwoners     = 300,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 44.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5333';

UPDATE pc4_cbs SET
  inwoners     = 1905,
  pct_vrouw    = 44.9,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5334';

UPDATE pc4_cbs SET
  inwoners     = 630,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5335';

UPDATE pc4_cbs SET
  inwoners     = 7275,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5341';

UPDATE pc4_cbs SET
  inwoners     = 6960,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5342';

UPDATE pc4_cbs SET
  inwoners     = 5505,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 42.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5343';

UPDATE pc4_cbs SET
  inwoners     = 8225,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 44,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5344';

UPDATE pc4_cbs SET
  inwoners     = 13475,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5345';

UPDATE pc4_cbs SET
  inwoners     = 7655,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 40.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5346';

UPDATE pc4_cbs SET
  inwoners     = 1280,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 35.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5347';

UPDATE pc4_cbs SET
  inwoners     = 9350,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 42.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5348';

UPDATE pc4_cbs SET
  inwoners     = 275,
  pct_vrouw    = 43.6,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5349';

UPDATE pc4_cbs SET
  inwoners     = 11055,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 40.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5351';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 50,
  cbs_leeftijd = 40.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5352';

UPDATE pc4_cbs SET
  inwoners     = 215,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 49.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5353';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 46.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5354';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 46.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5355';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 47,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5356';

UPDATE pc4_cbs SET
  inwoners     = 450,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5357';

UPDATE pc4_cbs SET
  inwoners     = 340,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.5,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5358';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 46.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5359';

UPDATE pc4_cbs SET
  inwoners     = 8585,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5361';

UPDATE pc4_cbs SET
  inwoners     = 1380,
  pct_vrouw    = 44.2,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5363';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5364';

UPDATE pc4_cbs SET
  inwoners     = 1755,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5366';

UPDATE pc4_cbs SET
  inwoners     = 745,
  pct_vrouw    = 49,
  cbs_leeftijd = 46.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5367';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5368';

UPDATE pc4_cbs SET
  inwoners     = 3155,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5371';

UPDATE pc4_cbs SET
  inwoners     = 2930,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5373';

UPDATE pc4_cbs SET
  inwoners     = 7395,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5374';

UPDATE pc4_cbs SET
  inwoners     = 1785,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5375';

UPDATE pc4_cbs SET
  inwoners     = 745,
  pct_vrouw    = 47,
  cbs_leeftijd = 40.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5381';

UPDATE pc4_cbs SET
  inwoners     = 1580,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 48,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5382';

UPDATE pc4_cbs SET
  inwoners     = 505,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5383';

UPDATE pc4_cbs SET
  inwoners     = 13985,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5384';

UPDATE pc4_cbs SET
  inwoners     = 5095,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5386';

UPDATE pc4_cbs SET
  inwoners     = 6605,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5388';

UPDATE pc4_cbs SET
  inwoners     = 3870,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5391';

UPDATE pc4_cbs SET
  inwoners     = 905,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5392';

UPDATE pc4_cbs SET
  inwoners     = 1270,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5394';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.5,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5395';

UPDATE pc4_cbs SET
  inwoners     = 850,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5396';

UPDATE pc4_cbs SET
  inwoners     = 3205,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5397';

UPDATE pc4_cbs SET
  inwoners     = 1395,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5398';

UPDATE pc4_cbs SET
  inwoners     = 8450,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 48.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5401';

UPDATE pc4_cbs SET
  inwoners     = 8030,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5402';

UPDATE pc4_cbs SET
  inwoners     = 9010,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5403';

UPDATE pc4_cbs SET
  inwoners     = 3840,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5404';

UPDATE pc4_cbs SET
  inwoners     = 755,
  pct_vrouw    = 53.6,
  cbs_leeftijd = 46.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5405';

UPDATE pc4_cbs SET
  inwoners     = 7420,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 37.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5406';

UPDATE pc4_cbs SET
  inwoners     = 3585,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5408';

UPDATE pc4_cbs SET
  inwoners     = 2070,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5409';

UPDATE pc4_cbs SET
  inwoners     = 6880,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5411';

UPDATE pc4_cbs SET
  inwoners     = 13495,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5421';

UPDATE pc4_cbs SET
  inwoners     = 3700,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 38.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5422';

UPDATE pc4_cbs SET
  inwoners     = 1870,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5423';

UPDATE pc4_cbs SET
  inwoners     = 1110,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 42.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5424';

UPDATE pc4_cbs SET
  inwoners     = 1710,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 41.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5425';

UPDATE pc4_cbs SET
  inwoners     = 9505,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5427';

UPDATE pc4_cbs SET
  inwoners     = 1790,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5428';

UPDATE pc4_cbs SET
  inwoners     = 11580,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5431';

UPDATE pc4_cbs SET
  inwoners     = 7155,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 39.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5432';

UPDATE pc4_cbs SET
  inwoners     = 505,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5433';

UPDATE pc4_cbs SET
  inwoners     = 1265,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5434';

UPDATE pc4_cbs SET
  inwoners     = 490,
  pct_vrouw    = 48,
  cbs_leeftijd = 47.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5435';

UPDATE pc4_cbs SET
  inwoners     = 1765,
  pct_vrouw    = 49,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5437';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5438';

UPDATE pc4_cbs SET
  inwoners     = 280,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 46.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5439';

UPDATE pc4_cbs SET
  inwoners     = 2375,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5441';

UPDATE pc4_cbs SET
  inwoners     = 2895,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5443';

UPDATE pc4_cbs SET
  inwoners     = 725,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5445';

UPDATE pc4_cbs SET
  inwoners     = 2920,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5446';

UPDATE pc4_cbs SET
  inwoners     = 1685,
  pct_vrouw    = 49,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5447';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 38.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5449';

UPDATE pc4_cbs SET
  inwoners     = 6375,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5451';

UPDATE pc4_cbs SET
  inwoners     = 2325,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5453';

UPDATE pc4_cbs SET
  inwoners     = 1400,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 46.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5454';

UPDATE pc4_cbs SET
  inwoners     = 1125,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5455';

UPDATE pc4_cbs SET
  inwoners     = 4930,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 48.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5461';

UPDATE pc4_cbs SET
  inwoners     = 3585,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 39.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5462';

UPDATE pc4_cbs SET
  inwoners     = 8955,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 41.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5463';

UPDATE pc4_cbs SET
  inwoners     = 6225,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 40.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5464';

UPDATE pc4_cbs SET
  inwoners     = 1850,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5465';

UPDATE pc4_cbs SET
  inwoners     = 1505,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5466';

UPDATE pc4_cbs SET
  inwoners     = 7405,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5467';

UPDATE pc4_cbs SET
  inwoners     = 7310,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 42.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5469';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5471';

UPDATE pc4_cbs SET
  inwoners     = 1215,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 42.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5472';

UPDATE pc4_cbs SET
  inwoners     = 8675,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5473';

UPDATE pc4_cbs SET
  inwoners     = 1870,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5476';

UPDATE pc4_cbs SET
  inwoners     = 9945,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5481';

UPDATE pc4_cbs SET
  inwoners     = 14090,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5482';

UPDATE pc4_cbs SET
  inwoners     = 11240,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5491';

UPDATE pc4_cbs SET
  inwoners     = 7260,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5492';

UPDATE pc4_cbs SET
  inwoners     = 4245,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 46.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5501';

UPDATE pc4_cbs SET
  inwoners     = 5080,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 46.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5502';

UPDATE pc4_cbs SET
  inwoners     = 5980,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5503';

UPDATE pc4_cbs SET
  inwoners     = 6555,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5504';

UPDATE pc4_cbs SET
  inwoners     = 4885,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 40.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5505';

UPDATE pc4_cbs SET
  inwoners     = 2790,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5506';

UPDATE pc4_cbs SET
  inwoners     = 3335,
  pct_vrouw    = 49,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5507';

UPDATE pc4_cbs SET
  inwoners     = 10645,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5508';

UPDATE pc4_cbs SET
  inwoners     = 3315,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5509';

UPDATE pc4_cbs SET
  inwoners     = 1440,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 44.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5511';

UPDATE pc4_cbs SET
  inwoners     = 2210,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5512';

UPDATE pc4_cbs SET
  inwoners     = 2145,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5513';

UPDATE pc4_cbs SET
  inwoners     = 10860,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5521';

UPDATE pc4_cbs SET
  inwoners     = 1525,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5524';

UPDATE pc4_cbs SET
  inwoners     = 2015,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5525';

UPDATE pc4_cbs SET
  inwoners     = 5755,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5527';

UPDATE pc4_cbs SET
  inwoners     = 2325,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5528';

UPDATE pc4_cbs SET
  inwoners     = 1140,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5529';

UPDATE pc4_cbs SET
  inwoners     = 10690,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5531';

UPDATE pc4_cbs SET
  inwoners     = 1075,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 40.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5534';

UPDATE pc4_cbs SET
  inwoners     = 8845,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5541';

UPDATE pc4_cbs SET
  inwoners     = 9595,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5551';

UPDATE pc4_cbs SET
  inwoners     = 6110,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5552';

UPDATE pc4_cbs SET
  inwoners     = 1895,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 43.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5553';

UPDATE pc4_cbs SET
  inwoners     = 9555,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 48.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5554';

UPDATE pc4_cbs SET
  inwoners     = 3250,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 47.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5555';

UPDATE pc4_cbs SET
  inwoners     = 1305,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5556';

UPDATE pc4_cbs SET
  inwoners     = 2405,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5561';

UPDATE pc4_cbs SET
  inwoners     = 2125,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5563';

UPDATE pc4_cbs SET
  inwoners     = 11400,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5571';

UPDATE pc4_cbs SET
  inwoners     = 3265,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5575';

UPDATE pc4_cbs SET
  inwoners     = 7210,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5581';

UPDATE pc4_cbs SET
  inwoners     = 5230,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5582';

UPDATE pc4_cbs SET
  inwoners     = 5550,
  pct_vrouw    = 51,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5583';

UPDATE pc4_cbs SET
  inwoners     = 10245,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5591';

UPDATE pc4_cbs SET
  inwoners     = 4600,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5595';

UPDATE pc4_cbs SET
  inwoners     = 14500,
  pct_vrouw    = 43.3,
  cbs_leeftijd = 37.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5611';

UPDATE pc4_cbs SET
  inwoners     = 13320,
  pct_vrouw    = 42.2,
  cbs_leeftijd = 36.2,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5612';

UPDATE pc4_cbs SET
  inwoners     = 6635,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 39.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5613';

UPDATE pc4_cbs SET
  inwoners     = 3815,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5614';

UPDATE pc4_cbs SET
  inwoners     = 7985,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 40.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5615';

UPDATE pc4_cbs SET
  inwoners     = 13510,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 40.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5616';

UPDATE pc4_cbs SET
  inwoners     = 3125,
  pct_vrouw    = 42.7,
  cbs_leeftijd = 34.7,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5617';

UPDATE pc4_cbs SET
  inwoners     = 5850,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 33,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5621';

UPDATE pc4_cbs SET
  inwoners     = 8620,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 39.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5622';

UPDATE pc4_cbs SET
  inwoners     = 10780,
  pct_vrouw    = 49,
  cbs_leeftijd = 43.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5623';

UPDATE pc4_cbs SET
  inwoners     = 5650,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 45,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5624';

UPDATE pc4_cbs SET
  inwoners     = 10160,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 41.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5625';

UPDATE pc4_cbs SET
  inwoners     = 4150,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5626';

UPDATE pc4_cbs SET
  inwoners     = 12150,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5627';

UPDATE pc4_cbs SET
  inwoners     = 10460,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 41.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5628';

UPDATE pc4_cbs SET
  inwoners     = 10040,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 40.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5629';

UPDATE pc4_cbs SET
  inwoners     = 5930,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 45.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5631';

UPDATE pc4_cbs SET
  inwoners     = 13335,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 41.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5632';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 44.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5633';

UPDATE pc4_cbs SET
  inwoners     = 7945,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 41.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5641';

UPDATE pc4_cbs SET
  inwoners     = 8565,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 38.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5642';

UPDATE pc4_cbs SET
  inwoners     = 8445,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 37.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5643';

UPDATE pc4_cbs SET
  inwoners     = 8950,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 41.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5644';

UPDATE pc4_cbs SET
  inwoners     = 3905,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5645';

UPDATE pc4_cbs SET
  inwoners     = 2460,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5646';

UPDATE pc4_cbs SET
  inwoners     = 40,
  pct_vrouw    = 62.5,
  cbs_leeftijd = 53.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5647';

UPDATE pc4_cbs SET
  inwoners     = 4175,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 36.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5651';

UPDATE pc4_cbs SET
  inwoners     = 6925,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 39.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5652';

UPDATE pc4_cbs SET
  inwoners     = 6900,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 42.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5653';

UPDATE pc4_cbs SET
  inwoners     = 10480,
  pct_vrouw    = 48,
  cbs_leeftijd = 41.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5654';

UPDATE pc4_cbs SET
  inwoners     = 4250,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 44.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5655';

UPDATE pc4_cbs SET
  inwoners     = 245,
  pct_vrouw    = 40.8,
  cbs_leeftijd = 41.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5657';

UPDATE pc4_cbs SET
  inwoners     = 12970,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 36.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5658';

UPDATE pc4_cbs SET
  inwoners     = 1195,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5661';

UPDATE pc4_cbs SET
  inwoners     = 3175,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 41.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5662';

UPDATE pc4_cbs SET
  inwoners     = 6270,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5663';

UPDATE pc4_cbs SET
  inwoners     = 5045,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5664';

UPDATE pc4_cbs SET
  inwoners     = 5325,
  pct_vrouw    = 52,
  cbs_leeftijd = 44.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5665';

UPDATE pc4_cbs SET
  inwoners     = 3930,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5666';

UPDATE pc4_cbs SET
  inwoners     = 4535,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5667';

UPDATE pc4_cbs SET
  inwoners     = 5705,
  pct_vrouw    = 52,
  cbs_leeftijd = 48.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5671';

UPDATE pc4_cbs SET
  inwoners     = 6975,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5672';

UPDATE pc4_cbs SET
  inwoners     = 6150,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5673';

UPDATE pc4_cbs SET
  inwoners     = 5400,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5674';

UPDATE pc4_cbs SET
  inwoners     = 850,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5681';

UPDATE pc4_cbs SET
  inwoners     = 4275,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 42.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5682';

UPDATE pc4_cbs SET
  inwoners     = 6530,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5683';

UPDATE pc4_cbs SET
  inwoners     = 12665,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5684';

UPDATE pc4_cbs SET
  inwoners     = 6900,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5685';

UPDATE pc4_cbs SET
  inwoners     = 12555,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5688';

UPDATE pc4_cbs SET
  inwoners     = 590,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 33.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5689';

UPDATE pc4_cbs SET
  inwoners     = 10955,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5691';

UPDATE pc4_cbs SET
  inwoners     = 2180,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 31,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5692';

UPDATE pc4_cbs SET
  inwoners     = 4825,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5694';

UPDATE pc4_cbs SET
  inwoners     = 16235,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 41.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5701';

UPDATE pc4_cbs SET
  inwoners     = 12180,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 42.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5702';

UPDATE pc4_cbs SET
  inwoners     = 5620,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 41.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5703';

UPDATE pc4_cbs SET
  inwoners     = 9005,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5704';

UPDATE pc4_cbs SET
  inwoners     = 2355,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 42.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5705';

UPDATE pc4_cbs SET
  inwoners     = 15290,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 40.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5706';

UPDATE pc4_cbs SET
  inwoners     = 10835,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5707';

UPDATE pc4_cbs SET
  inwoners     = 11300,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5708';

UPDATE pc4_cbs SET
  inwoners     = 13055,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5709';

UPDATE pc4_cbs SET
  inwoners     = 8650,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5711';

UPDATE pc4_cbs SET
  inwoners     = 9220,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5712';

UPDATE pc4_cbs SET
  inwoners     = 2315,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5715';

UPDATE pc4_cbs SET
  inwoners     = 13390,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5721';

UPDATE pc4_cbs SET
  inwoners     = 295,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 35.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5722';

UPDATE pc4_cbs SET
  inwoners     = 1035,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 42.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5724';

UPDATE pc4_cbs SET
  inwoners     = 2575,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5725';

UPDATE pc4_cbs SET
  inwoners     = 11255,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5731';

UPDATE pc4_cbs SET
  inwoners     = 5900,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 46.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5735';

UPDATE pc4_cbs SET
  inwoners     = 4335,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5737';

UPDATE pc4_cbs SET
  inwoners     = 2065,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5738';

UPDATE pc4_cbs SET
  inwoners     = 10920,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5741';

UPDATE pc4_cbs SET
  inwoners     = 13130,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5751';

UPDATE pc4_cbs SET
  inwoners     = 1885,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 42.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5752';

UPDATE pc4_cbs SET
  inwoners     = 4295,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5753';

UPDATE pc4_cbs SET
  inwoners     = 6235,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5754';

UPDATE pc4_cbs SET
  inwoners     = 1495,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5756';

UPDATE pc4_cbs SET
  inwoners     = 3355,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5757';

UPDATE pc4_cbs SET
  inwoners     = 1870,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5758';

UPDATE pc4_cbs SET
  inwoners     = 915,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5759';

UPDATE pc4_cbs SET
  inwoners     = 6155,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5761';

UPDATE pc4_cbs SET
  inwoners     = 2225,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5763';

UPDATE pc4_cbs SET
  inwoners     = 1170,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 42.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5764';

UPDATE pc4_cbs SET
  inwoners     = 525,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5766';

UPDATE pc4_cbs SET
  inwoners     = 6440,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5768';

UPDATE pc4_cbs SET
  inwoners     = 10440,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 49.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5801';

UPDATE pc4_cbs SET
  inwoners     = 7335,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 42.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5802';

UPDATE pc4_cbs SET
  inwoners     = 8020,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5803';

UPDATE pc4_cbs SET
  inwoners     = 3550,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5804';

UPDATE pc4_cbs SET
  inwoners     = 2515,
  pct_vrouw    = 43.9,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5807';

UPDATE pc4_cbs SET
  inwoners     = 1230,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5808';

UPDATE pc4_cbs SET
  inwoners     = 2215,
  pct_vrouw    = 49,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5809';

UPDATE pc4_cbs SET
  inwoners     = 860,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5811';

UPDATE pc4_cbs SET
  inwoners     = 515,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5812';

UPDATE pc4_cbs SET
  inwoners     = 2375,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5813';

UPDATE pc4_cbs SET
  inwoners     = 550,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5814';

UPDATE pc4_cbs SET
  inwoners     = 1095,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5815';

UPDATE pc4_cbs SET
  inwoners     = 250,
  pct_vrouw    = 50,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5816';

UPDATE pc4_cbs SET
  inwoners     = 210,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5817';

UPDATE pc4_cbs SET
  inwoners     = 2600,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5821';

UPDATE pc4_cbs SET
  inwoners     = 930,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5823';

UPDATE pc4_cbs SET
  inwoners     = 560,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5824';

UPDATE pc4_cbs SET
  inwoners     = 4305,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5825';

UPDATE pc4_cbs SET
  inwoners     = 515,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 39.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5826';

UPDATE pc4_cbs SET
  inwoners     = 795,
  pct_vrouw    = 45.3,
  cbs_leeftijd = 42,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5827';

UPDATE pc4_cbs SET
  inwoners     = 12500,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 46.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5831';

UPDATE pc4_cbs SET
  inwoners     = 1955,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5835';

UPDATE pc4_cbs SET
  inwoners     = 1840,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5836';

UPDATE pc4_cbs SET
  inwoners     = 1890,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5841';

UPDATE pc4_cbs SET
  inwoners     = 715,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 40.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5843';

UPDATE pc4_cbs SET
  inwoners     = 790,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 43.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5844';

UPDATE pc4_cbs SET
  inwoners     = 4235,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 46.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5845';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 42.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5846';

UPDATE pc4_cbs SET
  inwoners     = 2110,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 47.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5851';

UPDATE pc4_cbs SET
  inwoners     = 2120,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5853';

UPDATE pc4_cbs SET
  inwoners     = 5295,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 47.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5854';

UPDATE pc4_cbs SET
  inwoners     = 2415,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 46.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5855';

UPDATE pc4_cbs SET
  inwoners     = 1210,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5856';

UPDATE pc4_cbs SET
  inwoners     = 1880,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 45.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5861';

UPDATE pc4_cbs SET
  inwoners     = 410,
  pct_vrouw    = 50,
  cbs_leeftijd = 50,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5862';

UPDATE pc4_cbs SET
  inwoners     = 1215,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5863';

UPDATE pc4_cbs SET
  inwoners     = 1915,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5864';

UPDATE pc4_cbs SET
  inwoners     = 1355,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 41.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5865';

UPDATE pc4_cbs SET
  inwoners     = 1280,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5866';

UPDATE pc4_cbs SET
  inwoners     = 1115,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 46.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5871';

UPDATE pc4_cbs SET
  inwoners     = 815,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5872';

UPDATE pc4_cbs SET
  inwoners     = 5245,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 42.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5911';

UPDATE pc4_cbs SET
  inwoners     = 10410,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5912';

UPDATE pc4_cbs SET
  inwoners     = 9890,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5913';

UPDATE pc4_cbs SET
  inwoners     = 7785,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5914';

UPDATE pc4_cbs SET
  inwoners     = 6005,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5915';

UPDATE pc4_cbs SET
  inwoners     = 2490,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 46.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5916';

UPDATE pc4_cbs SET
  inwoners     = 6755,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 46,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5921';

UPDATE pc4_cbs SET
  inwoners     = 6000,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 38.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5922';

UPDATE pc4_cbs SET
  inwoners     = 3060,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 48.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5923';

UPDATE pc4_cbs SET
  inwoners     = 3705,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5924';

UPDATE pc4_cbs SET
  inwoners     = 3845,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 41.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5925';

UPDATE pc4_cbs SET
  inwoners     = 2890,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 46.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5926';

UPDATE pc4_cbs SET
  inwoners     = 890,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5927';

UPDATE pc4_cbs SET
  inwoners     = 845,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 42.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5928';

UPDATE pc4_cbs SET
  inwoners     = 9720,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 46.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5931';

UPDATE pc4_cbs SET
  inwoners     = 5455,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 43.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5932';

UPDATE pc4_cbs SET
  inwoners     = 3655,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5935';

UPDATE pc4_cbs SET
  inwoners     = 5535,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5941';

UPDATE pc4_cbs SET
  inwoners     = 1055,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5943';

UPDATE pc4_cbs SET
  inwoners     = 2985,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 48.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5944';

UPDATE pc4_cbs SET
  inwoners     = 5575,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5951';

UPDATE pc4_cbs SET
  inwoners     = 10985,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5953';

UPDATE pc4_cbs SET
  inwoners     = 2410,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 47.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5954';

UPDATE pc4_cbs SET
  inwoners     = 13370,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5961';

UPDATE pc4_cbs SET
  inwoners     = 2195,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 43.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5962';

UPDATE pc4_cbs SET
  inwoners     = 2045,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5963';

UPDATE pc4_cbs SET
  inwoners     = 1685,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5964';

UPDATE pc4_cbs SET
  inwoners     = 2320,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5966';

UPDATE pc4_cbs SET
  inwoners     = 4885,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5971';

UPDATE pc4_cbs SET
  inwoners     = 1995,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5973';

UPDATE pc4_cbs SET
  inwoners     = 7045,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5975';

UPDATE pc4_cbs SET
  inwoners     = 1125,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 45.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5976';

UPDATE pc4_cbs SET
  inwoners     = 240,
  pct_vrouw    = 56.3,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5977';

UPDATE pc4_cbs SET
  inwoners     = 7820,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 47.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5981';

UPDATE pc4_cbs SET
  inwoners     = 1245,
  pct_vrouw    = 45.8,
  cbs_leeftijd = 45.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5984';

UPDATE pc4_cbs SET
  inwoners     = 1690,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5985';

UPDATE pc4_cbs SET
  inwoners     = 2190,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5986';

UPDATE pc4_cbs SET
  inwoners     = 1530,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5987';

UPDATE pc4_cbs SET
  inwoners     = 6460,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5988';

UPDATE pc4_cbs SET
  inwoners     = 6440,
  pct_vrouw    = 49,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5991';

UPDATE pc4_cbs SET
  inwoners     = 7545,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5993';

UPDATE pc4_cbs SET
  inwoners     = 4170,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '5995';

UPDATE pc4_cbs SET
  inwoners     = 8095,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 50.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6001';

UPDATE pc4_cbs SET
  inwoners     = 6460,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6002';

UPDATE pc4_cbs SET
  inwoners     = 5795,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6003';

UPDATE pc4_cbs SET
  inwoners     = 9440,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6004';

UPDATE pc4_cbs SET
  inwoners     = 4410,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6005';

UPDATE pc4_cbs SET
  inwoners     = 11725,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6006';

UPDATE pc4_cbs SET
  inwoners     = 1455,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6011';

UPDATE pc4_cbs SET
  inwoners     = 490,
  pct_vrouw    = 49,
  cbs_leeftijd = 45.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6012';

UPDATE pc4_cbs SET
  inwoners     = 975,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6013';

UPDATE pc4_cbs SET
  inwoners     = 1650,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6014';

UPDATE pc4_cbs SET
  inwoners     = 1255,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6015';

UPDATE pc4_cbs SET
  inwoners     = 2480,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 48.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6017';

UPDATE pc4_cbs SET
  inwoners     = 2000,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 48,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6019';

UPDATE pc4_cbs SET
  inwoners     = 9515,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6021';

UPDATE pc4_cbs SET
  inwoners     = 2130,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6023';

UPDATE pc4_cbs SET
  inwoners     = 1430,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 47.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6024';

UPDATE pc4_cbs SET
  inwoners     = 5185,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6026';

UPDATE pc4_cbs SET
  inwoners     = 1850,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6027';

UPDATE pc4_cbs SET
  inwoners     = 730,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6028';

UPDATE pc4_cbs SET
  inwoners     = 1960,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6029';

UPDATE pc4_cbs SET
  inwoners     = 10600,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6031';

UPDATE pc4_cbs SET
  inwoners     = 1555,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6034';

UPDATE pc4_cbs SET
  inwoners     = 4190,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6035';

UPDATE pc4_cbs SET
  inwoners     = 1200,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6037';

UPDATE pc4_cbs SET
  inwoners     = 5145,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 47.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6039';

UPDATE pc4_cbs SET
  inwoners     = 12625,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 47.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6041';

UPDATE pc4_cbs SET
  inwoners     = 9855,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6042';

UPDATE pc4_cbs SET
  inwoners     = 11390,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6043';

UPDATE pc4_cbs SET
  inwoners     = 3505,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 38.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6044';

UPDATE pc4_cbs SET
  inwoners     = 6150,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 42.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6045';

UPDATE pc4_cbs SET
  inwoners     = 8355,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6049';

UPDATE pc4_cbs SET
  inwoners     = 7025,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 47.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6051';

UPDATE pc4_cbs SET
  inwoners     = 4030,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 47.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6061';

UPDATE pc4_cbs SET
  inwoners     = 2370,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 48.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6063';

UPDATE pc4_cbs SET
  inwoners     = 3100,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 47.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6065';

UPDATE pc4_cbs SET
  inwoners     = 3860,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 47,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6067';

UPDATE pc4_cbs SET
  inwoners     = 8860,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6071';

UPDATE pc4_cbs SET
  inwoners     = 3710,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6074';

UPDATE pc4_cbs SET
  inwoners     = 4250,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 48.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6075';

UPDATE pc4_cbs SET
  inwoners     = 3350,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 49.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6077';

UPDATE pc4_cbs SET
  inwoners     = 4380,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6081';

UPDATE pc4_cbs SET
  inwoners     = 930,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6082';

UPDATE pc4_cbs SET
  inwoners     = 680,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 47.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6083';

UPDATE pc4_cbs SET
  inwoners     = 3760,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6085';

UPDATE pc4_cbs SET
  inwoners     = 3330,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 46.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6086';

UPDATE pc4_cbs SET
  inwoners     = 4275,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 45.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6088';

UPDATE pc4_cbs SET
  inwoners     = 735,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6089';

UPDATE pc4_cbs SET
  inwoners     = 825,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6091';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6092';

UPDATE pc4_cbs SET
  inwoners     = 6585,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 48.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6093';

UPDATE pc4_cbs SET
  inwoners     = 2645,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6095';

UPDATE pc4_cbs SET
  inwoners     = 1665,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6096';

UPDATE pc4_cbs SET
  inwoners     = 4570,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 48.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6097';

UPDATE pc4_cbs SET
  inwoners     = 1885,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 48,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6099';

UPDATE pc4_cbs SET
  inwoners     = 9755,
  pct_vrouw    = 51,
  cbs_leeftijd = 47.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6101';

UPDATE pc4_cbs SET
  inwoners     = 5240,
  pct_vrouw    = 48,
  cbs_leeftijd = 46.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6102';

UPDATE pc4_cbs SET
  inwoners     = 1665,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6104';

UPDATE pc4_cbs SET
  inwoners     = 1350,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 49.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6105';

UPDATE pc4_cbs SET
  inwoners     = 1745,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6107';

UPDATE pc4_cbs SET
  inwoners     = 840,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 48,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6109';

UPDATE pc4_cbs SET
  inwoners     = 575,
  pct_vrouw    = 47,
  cbs_leeftijd = 47.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6111';

UPDATE pc4_cbs SET
  inwoners     = 835,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 47.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6112';

UPDATE pc4_cbs SET
  inwoners     = 7810,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 47.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6114';

UPDATE pc4_cbs SET
  inwoners     = 1495,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 47.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6116';

UPDATE pc4_cbs SET
  inwoners     = 3315,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6118';

UPDATE pc4_cbs SET
  inwoners     = 5925,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6121';

UPDATE pc4_cbs SET
  inwoners     = 1980,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6122';

UPDATE pc4_cbs SET
  inwoners     = 1120,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 48.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6123';

UPDATE pc4_cbs SET
  inwoners     = 750,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6124';

UPDATE pc4_cbs SET
  inwoners     = 1735,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 47.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6125';

UPDATE pc4_cbs SET
  inwoners     = 2265,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 48.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6127';

UPDATE pc4_cbs SET
  inwoners     = 5695,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6129';

UPDATE pc4_cbs SET
  inwoners     = 5150,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 49.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6131';

UPDATE pc4_cbs SET
  inwoners     = 5265,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6132';

UPDATE pc4_cbs SET
  inwoners     = 3740,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6133';

UPDATE pc4_cbs SET
  inwoners     = 2400,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 46.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6134';

UPDATE pc4_cbs SET
  inwoners     = 6160,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 43.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6135';

UPDATE pc4_cbs SET
  inwoners     = 6820,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6136';

UPDATE pc4_cbs SET
  inwoners     = 8140,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 44.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6137';

UPDATE pc4_cbs SET
  inwoners     = 2540,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6141';

UPDATE pc4_cbs SET
  inwoners     = 1300,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6142';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6143';

UPDATE pc4_cbs SET
  inwoners     = 4545,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 48.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6151';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 55,
  cbs_leeftijd = 47,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6153';

UPDATE pc4_cbs SET
  inwoners     = 2020,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6155';

UPDATE pc4_cbs SET
  inwoners     = 4275,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6161';

UPDATE pc4_cbs SET
  inwoners     = 4580,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6162';

UPDATE pc4_cbs SET
  inwoners     = 7715,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6163';

UPDATE pc4_cbs SET
  inwoners     = 4975,
  pct_vrouw    = 52,
  cbs_leeftijd = 47.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6164';

UPDATE pc4_cbs SET
  inwoners     = 4755,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6165';

UPDATE pc4_cbs SET
  inwoners     = 5160,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 48.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6166';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 50,
  cbs_leeftijd = 41,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6167';

UPDATE pc4_cbs SET
  inwoners     = 10715,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 48.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6171';

UPDATE pc4_cbs SET
  inwoners     = 755,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6174';

UPDATE pc4_cbs SET
  inwoners     = 3355,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6176';

UPDATE pc4_cbs SET
  inwoners     = 8335,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 47.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6181';

UPDATE pc4_cbs SET
  inwoners     = 12415,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 47,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6191';

UPDATE pc4_cbs SET
  inwoners     = 450,
  pct_vrouw    = 60,
  cbs_leeftijd = 32.4,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6199';

UPDATE pc4_cbs SET
  inwoners     = 13745,
  pct_vrouw    = 53.9,
  cbs_leeftijd = 37.3,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6211';

UPDATE pc4_cbs SET
  inwoners     = 4500,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6212';

UPDATE pc4_cbs SET
  inwoners     = 4560,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 47.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6213';

UPDATE pc4_cbs SET
  inwoners     = 5000,
  pct_vrouw    = 55,
  cbs_leeftijd = 40.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6214';

UPDATE pc4_cbs SET
  inwoners     = 8160,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 46.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6215';

UPDATE pc4_cbs SET
  inwoners     = 7220,
  pct_vrouw    = 53.9,
  cbs_leeftijd = 41.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6216';

UPDATE pc4_cbs SET
  inwoners     = 9350,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 40.6,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6217';

UPDATE pc4_cbs SET
  inwoners     = 7315,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 47.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6218';

UPDATE pc4_cbs SET
  inwoners     = 1645,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 46.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6219';

UPDATE pc4_cbs SET
  inwoners     = 10520,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 40.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6221';

UPDATE pc4_cbs SET
  inwoners     = 5770,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 38.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6222';

UPDATE pc4_cbs SET
  inwoners     = 2630,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 48,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6223';

UPDATE pc4_cbs SET
  inwoners     = 9190,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 39.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6224';

UPDATE pc4_cbs SET
  inwoners     = 6695,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6225';

UPDATE pc4_cbs SET
  inwoners     = 7415,
  pct_vrouw    = 52,
  cbs_leeftijd = 41.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6226';

UPDATE pc4_cbs SET
  inwoners     = 7575,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 44.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6227';

UPDATE pc4_cbs SET
  inwoners     = 6550,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6228';

UPDATE pc4_cbs SET
  inwoners     = 7420,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 41.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6229';

UPDATE pc4_cbs SET
  inwoners     = 7515,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 46.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6231';

UPDATE pc4_cbs SET
  inwoners     = 2785,
  pct_vrouw    = 49,
  cbs_leeftijd = 47.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6235';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 47.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6237';

UPDATE pc4_cbs SET
  inwoners     = 5450,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 47,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6241';

UPDATE pc4_cbs SET
  inwoners     = 2500,
  pct_vrouw    = 50,
  cbs_leeftijd = 50.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6243';

UPDATE pc4_cbs SET
  inwoners     = 9675,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6245';

UPDATE pc4_cbs SET
  inwoners     = 2905,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 47.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6247';

UPDATE pc4_cbs SET
  inwoners     = 400,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6251';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6252';

UPDATE pc4_cbs SET
  inwoners     = 1180,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 46.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6255';

UPDATE pc4_cbs SET
  inwoners     = 845,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 50,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6261';

UPDATE pc4_cbs SET
  inwoners     = 1000,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6262';

UPDATE pc4_cbs SET
  inwoners     = 1410,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6265';

UPDATE pc4_cbs SET
  inwoners     = 3585,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 47.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6267';

UPDATE pc4_cbs SET
  inwoners     = 570,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6268';

UPDATE pc4_cbs SET
  inwoners     = 3985,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 47.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6269';

UPDATE pc4_cbs SET
  inwoners     = 3905,
  pct_vrouw    = 51,
  cbs_leeftijd = 50.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6271';

UPDATE pc4_cbs SET
  inwoners     = 220,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 46.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6273';

UPDATE pc4_cbs SET
  inwoners     = 520,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 50.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6274';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6276';

UPDATE pc4_cbs SET
  inwoners     = 385,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 52.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6277';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 61.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6278';

UPDATE pc4_cbs SET
  inwoners     = 1720,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 48.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6281';

UPDATE pc4_cbs SET
  inwoners     = 1020,
  pct_vrouw    = 50,
  cbs_leeftijd = 50.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6285';

UPDATE pc4_cbs SET
  inwoners     = 1935,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 47.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6286';

UPDATE pc4_cbs SET
  inwoners     = 1640,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6287';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 57.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6289';

UPDATE pc4_cbs SET
  inwoners     = 7830,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 48.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6291';

UPDATE pc4_cbs SET
  inwoners     = 1410,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 47.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6294';

UPDATE pc4_cbs SET
  inwoners     = 880,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 46.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6295';

UPDATE pc4_cbs SET
  inwoners     = 10565,
  pct_vrouw    = 51,
  cbs_leeftijd = 49.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6301';

UPDATE pc4_cbs SET
  inwoners     = 1415,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 48.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6305';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 48.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6307';

UPDATE pc4_cbs SET
  inwoners     = 815,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 46.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6311';

UPDATE pc4_cbs SET
  inwoners     = 160,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 47.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6312';

UPDATE pc4_cbs SET
  inwoners     = 2405,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 46.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6321';

UPDATE pc4_cbs SET
  inwoners     = 4305,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 47.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6325';

UPDATE pc4_cbs SET
  inwoners     = 3170,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 47,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6333';

UPDATE pc4_cbs SET
  inwoners     = 3880,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6336';

UPDATE pc4_cbs SET
  inwoners     = 50,
  pct_vrouw    = 60,
  cbs_leeftijd = 52.4,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6341';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 50,
  cbs_leeftijd = 59,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6342';

UPDATE pc4_cbs SET
  inwoners     = 3270,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 47.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6343';

UPDATE pc4_cbs SET
  inwoners     = 4985,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 46.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6351';

UPDATE pc4_cbs SET
  inwoners     = 40,
  pct_vrouw    = 62.5,
  cbs_leeftijd = 48.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6353';

UPDATE pc4_cbs SET
  inwoners     = 6445,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 47.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6361';

UPDATE pc4_cbs SET
  inwoners     = 1610,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 49.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6363';

UPDATE pc4_cbs SET
  inwoners     = 2705,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 48.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6365';

UPDATE pc4_cbs SET
  inwoners     = 8130,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 46.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6367';

UPDATE pc4_cbs SET
  inwoners     = 5225,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 48.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6369';

UPDATE pc4_cbs SET
  inwoners     = 6290,
  pct_vrouw    = 51,
  cbs_leeftijd = 47.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6371';

UPDATE pc4_cbs SET
  inwoners     = 10160,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 46.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6372';

UPDATE pc4_cbs SET
  inwoners     = 8780,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 47.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6373';

UPDATE pc4_cbs SET
  inwoners     = 11885,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6374';

UPDATE pc4_cbs SET
  inwoners     = 8060,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 46.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6411';

UPDATE pc4_cbs SET
  inwoners     = 8970,
  pct_vrouw    = 48,
  cbs_leeftijd = 43.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6412';

UPDATE pc4_cbs SET
  inwoners     = 11180,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6413';

UPDATE pc4_cbs SET
  inwoners     = 7545,
  pct_vrouw    = 48,
  cbs_leeftijd = 42.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6414';

UPDATE pc4_cbs SET
  inwoners     = 6445,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6415';

UPDATE pc4_cbs SET
  inwoners     = 6075,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 44.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6416';

UPDATE pc4_cbs SET
  inwoners     = 6690,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6417';

UPDATE pc4_cbs SET
  inwoners     = 9445,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 46.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6418';

UPDATE pc4_cbs SET
  inwoners     = 4175,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 50.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6419';

UPDATE pc4_cbs SET
  inwoners     = 10,
  cbs_leeftijd = 55,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6421';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6422';

UPDATE pc4_cbs SET
  inwoners     = 9850,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6431';

UPDATE pc4_cbs SET
  inwoners     = 3955,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 46.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6432';

UPDATE pc4_cbs SET
  inwoners     = 4985,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6433';

UPDATE pc4_cbs SET
  inwoners     = 2655,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6436';

UPDATE pc4_cbs SET
  inwoners     = 3715,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6438';

UPDATE pc4_cbs SET
  inwoners     = 1095,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 48.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6439';

UPDATE pc4_cbs SET
  inwoners     = 7440,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 49.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6441';

UPDATE pc4_cbs SET
  inwoners     = 2645,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 43.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6442';

UPDATE pc4_cbs SET
  inwoners     = 3700,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 48.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6443';

UPDATE pc4_cbs SET
  inwoners     = 6260,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6444';

UPDATE pc4_cbs SET
  inwoners     = 2755,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6445';

UPDATE pc4_cbs SET
  inwoners     = 4965,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6446';

UPDATE pc4_cbs SET
  inwoners     = 1595,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6447';

UPDATE pc4_cbs SET
  inwoners     = 4675,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6451';

UPDATE pc4_cbs SET
  inwoners     = 720,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 46.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6454';

UPDATE pc4_cbs SET
  inwoners     = 855,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6456';

UPDATE pc4_cbs SET
  inwoners     = 8110,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 50,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6461';

UPDATE pc4_cbs SET
  inwoners     = 7105,
  pct_vrouw    = 49,
  cbs_leeftijd = 45.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6462';

UPDATE pc4_cbs SET
  inwoners     = 4630,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 47,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6463';

UPDATE pc4_cbs SET
  inwoners     = 4285,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6464';

UPDATE pc4_cbs SET
  inwoners     = 2010,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6465';

UPDATE pc4_cbs SET
  inwoners     = 7745,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 46.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6466';

UPDATE pc4_cbs SET
  inwoners     = 4850,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 46.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6467';

UPDATE pc4_cbs SET
  inwoners     = 265,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6468';

UPDATE pc4_cbs SET
  inwoners     = 590,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6469';

UPDATE pc4_cbs SET
  inwoners     = 5730,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 46.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6471';

UPDATE pc4_cbs SET
  inwoners     = 11180,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 36.8,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6511';

UPDATE pc4_cbs SET
  inwoners     = 5790,
  pct_vrouw    = 54.2,
  cbs_leeftijd = 36.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6512';

UPDATE pc4_cbs SET
  inwoners     = 10300,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 32.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6515';

UPDATE pc4_cbs SET
  inwoners     = 6855,
  pct_vrouw    = 54.6,
  cbs_leeftijd = 38.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6521';

UPDATE pc4_cbs SET
  inwoners     = 5025,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 46.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6522';

UPDATE pc4_cbs SET
  inwoners     = 8060,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 44.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6523';

UPDATE pc4_cbs SET
  inwoners     = 7790,
  pct_vrouw    = 55.5,
  cbs_leeftijd = 38.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6524';

UPDATE pc4_cbs SET
  inwoners     = 10200,
  pct_vrouw    = 54.2,
  cbs_leeftijd = 39.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6525';

UPDATE pc4_cbs SET
  inwoners     = 10465,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 39.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6531';

UPDATE pc4_cbs SET
  inwoners     = 6065,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 41,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6532';

UPDATE pc4_cbs SET
  inwoners     = 11350,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 42,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6533';

UPDATE pc4_cbs SET
  inwoners     = 3880,
  pct_vrouw    = 47,
  cbs_leeftijd = 38.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6534';

UPDATE pc4_cbs SET
  inwoners     = 7275,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 43.1,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6535';

UPDATE pc4_cbs SET
  inwoners     = 3510,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 46.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6536';

UPDATE pc4_cbs SET
  inwoners     = 9730,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 41.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6537';

UPDATE pc4_cbs SET
  inwoners     = 9340,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6538';

UPDATE pc4_cbs SET
  inwoners     = 10510,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 40,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6541';

UPDATE pc4_cbs SET
  inwoners     = 7455,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 39.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6542';

UPDATE pc4_cbs SET
  inwoners     = 7740,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 39.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6543';

UPDATE pc4_cbs SET
  inwoners     = 5510,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 41.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6544';

UPDATE pc4_cbs SET
  inwoners     = 5375,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 42.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6545';

UPDATE pc4_cbs SET
  inwoners     = 9110,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 40.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6546';

UPDATE pc4_cbs SET
  inwoners     = 2560,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6551';

UPDATE pc4_cbs SET
  inwoners     = 6570,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 46.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6561';

UPDATE pc4_cbs SET
  inwoners     = 10590,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6562';

UPDATE pc4_cbs SET
  inwoners     = 850,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6564';

UPDATE pc4_cbs SET
  inwoners     = 5835,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6566';

UPDATE pc4_cbs SET
  inwoners     = 2000,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6571';

UPDATE pc4_cbs SET
  inwoners     = 495,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 56.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6572';

UPDATE pc4_cbs SET
  inwoners     = 3620,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 47.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6573';

UPDATE pc4_cbs SET
  inwoners     = 490,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6574';

UPDATE pc4_cbs SET
  inwoners     = 90,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 53.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6575';

UPDATE pc4_cbs SET
  inwoners     = 2555,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6576';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 44.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6577';

UPDATE pc4_cbs SET
  inwoners     = 1735,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6578';

UPDATE pc4_cbs SET
  inwoners     = 480,
  pct_vrouw    = 50,
  cbs_leeftijd = 50.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6579';

UPDATE pc4_cbs SET
  inwoners     = 11355,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 46.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6581';

UPDATE pc4_cbs SET
  inwoners     = 1950,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 40.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6582';

UPDATE pc4_cbs SET
  inwoners     = 3730,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6584';

UPDATE pc4_cbs SET
  inwoners     = 3205,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 48.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6585';

UPDATE pc4_cbs SET
  inwoners     = 345,
  pct_vrouw    = 53.6,
  cbs_leeftijd = 51,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6586';

UPDATE pc4_cbs SET
  inwoners     = 870,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 48.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6587';

UPDATE pc4_cbs SET
  inwoners     = 9255,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 46.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6591';

UPDATE pc4_cbs SET
  inwoners     = 2390,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6595';

UPDATE pc4_cbs SET
  inwoners     = 2880,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6596';

UPDATE pc4_cbs SET
  inwoners     = 2485,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 45.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6598';

UPDATE pc4_cbs SET
  inwoners     = 785,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 48,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6599';

UPDATE pc4_cbs SET
  inwoners     = 10570,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 45.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6601';

UPDATE pc4_cbs SET
  inwoners     = 6580,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 48.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6602';

UPDATE pc4_cbs SET
  inwoners     = 5120,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6603';

UPDATE pc4_cbs SET
  inwoners     = 3945,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6604';

UPDATE pc4_cbs SET
  inwoners     = 10615,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6605';

UPDATE pc4_cbs SET
  inwoners     = 430,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6606';

UPDATE pc4_cbs SET
  inwoners     = 2710,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 47.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6611';

UPDATE pc4_cbs SET
  inwoners     = 820,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6612';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 44.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6613';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 49.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6615';

UPDATE pc4_cbs SET
  inwoners     = 965,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6616';

UPDATE pc4_cbs SET
  inwoners     = 1775,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 46.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6617';

UPDATE pc4_cbs SET
  inwoners     = 3550,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6621';

UPDATE pc4_cbs SET
  inwoners     = 1350,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6624';

UPDATE pc4_cbs SET
  inwoners     = 1720,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6626';

UPDATE pc4_cbs SET
  inwoners     = 1420,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6627';

UPDATE pc4_cbs SET
  inwoners     = 645,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 42.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6628';

UPDATE pc4_cbs SET
  inwoners     = 840,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 46.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6629';

UPDATE pc4_cbs SET
  inwoners     = 1630,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6631';

UPDATE pc4_cbs SET
  inwoners     = 670,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6634';

UPDATE pc4_cbs SET
  inwoners     = 12895,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 45.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6641';

UPDATE pc4_cbs SET
  inwoners     = 4520,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6642';

UPDATE pc4_cbs SET
  inwoners     = 4515,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 40.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6644';

UPDATE pc4_cbs SET
  inwoners     = 2230,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6645';

UPDATE pc4_cbs SET
  inwoners     = 10750,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6651';

UPDATE pc4_cbs SET
  inwoners     = 2305,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 40,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6652';

UPDATE pc4_cbs SET
  inwoners     = 1895,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6653';

UPDATE pc4_cbs SET
  inwoners     = 1695,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6654';

UPDATE pc4_cbs SET
  inwoners     = 1310,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6655';

UPDATE pc4_cbs SET
  inwoners     = 2240,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6657';

UPDATE pc4_cbs SET
  inwoners     = 7325,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6658';

UPDATE pc4_cbs SET
  inwoners     = 2590,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6659';

UPDATE pc4_cbs SET
  inwoners     = 12545,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 42,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6661';

UPDATE pc4_cbs SET
  inwoners     = 9935,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6662';

UPDATE pc4_cbs SET
  inwoners     = 14525,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 35.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6663';

UPDATE pc4_cbs SET
  inwoners     = 4380,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6665';

UPDATE pc4_cbs SET
  inwoners     = 5050,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6666';

UPDATE pc4_cbs SET
  inwoners     = 1460,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6668';

UPDATE pc4_cbs SET
  inwoners     = 4600,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6669';

UPDATE pc4_cbs SET
  inwoners     = 5220,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6671';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 49,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6672';

UPDATE pc4_cbs SET
  inwoners     = 1700,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6673';

UPDATE pc4_cbs SET
  inwoners     = 3190,
  pct_vrouw    = 52,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6674';

UPDATE pc4_cbs SET
  inwoners     = 2020,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6675';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 55.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6676';

UPDATE pc4_cbs SET
  inwoners     = 485,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6677';

UPDATE pc4_cbs SET
  inwoners     = 2685,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6678';

UPDATE pc4_cbs SET
  inwoners     = 12260,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6681';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 50,
  cbs_leeftijd = 39,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6684';

UPDATE pc4_cbs SET
  inwoners     = 2070,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6685';

UPDATE pc4_cbs SET
  inwoners     = 2775,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6686';

UPDATE pc4_cbs SET
  inwoners     = 2915,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6687';

UPDATE pc4_cbs SET
  inwoners     = 7385,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6691';

UPDATE pc4_cbs SET
  inwoners     = 4165,
  pct_vrouw    = 52,
  cbs_leeftijd = 37,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6701';

UPDATE pc4_cbs SET
  inwoners     = 2835,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 40.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6702';

UPDATE pc4_cbs SET
  inwoners     = 2870,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6703';

UPDATE pc4_cbs SET
  inwoners     = 1020,
  pct_vrouw    = 53.9,
  cbs_leeftijd = 48.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6704';

UPDATE pc4_cbs SET
  inwoners     = 1470,
  pct_vrouw    = 48,
  cbs_leeftijd = 48.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6705';

UPDATE pc4_cbs SET
  inwoners     = 5630,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 38.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6706';

UPDATE pc4_cbs SET
  inwoners     = 5180,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 42.8,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6707';

UPDATE pc4_cbs SET
  inwoners     = 13770,
  pct_vrouw    = 52.5,
  cbs_leeftijd = 39.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6708';

UPDATE pc4_cbs SET
  inwoners     = 5640,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 28.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6709';

UPDATE pc4_cbs SET
  inwoners     = 12835,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 45.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6711';

UPDATE pc4_cbs SET
  inwoners     = 5135,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6712';

UPDATE pc4_cbs SET
  inwoners     = 10500,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 42.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6713';

UPDATE pc4_cbs SET
  inwoners     = 7760,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 37.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6714';

UPDATE pc4_cbs SET
  inwoners     = 6805,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 43.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6715';

UPDATE pc4_cbs SET
  inwoners     = 8075,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6716';

UPDATE pc4_cbs SET
  inwoners     = 19880,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 37.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6717';

UPDATE pc4_cbs SET
  inwoners     = 10030,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 35,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6718';

UPDATE pc4_cbs SET
  inwoners     = 15215,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6721';

UPDATE pc4_cbs SET
  inwoners     = 2150,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6731';

UPDATE pc4_cbs SET
  inwoners     = 4010,
  pct_vrouw    = 49,
  cbs_leeftijd = 37.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6732';

UPDATE pc4_cbs SET
  inwoners     = 2895,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 37.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6733';

UPDATE pc4_cbs SET
  inwoners     = 13830,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6741';

UPDATE pc4_cbs SET
  inwoners     = 3785,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 36.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6744';

UPDATE pc4_cbs SET
  inwoners     = 505,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 37.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6745';

UPDATE pc4_cbs SET
  inwoners     = 7015,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 38.8,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6811';

UPDATE pc4_cbs SET
  inwoners     = 2840,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 47.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6812';

UPDATE pc4_cbs SET
  inwoners     = 4345,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6813';

UPDATE pc4_cbs SET
  inwoners     = 6345,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6814';

UPDATE pc4_cbs SET
  inwoners     = 3330,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 45.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6815';

UPDATE pc4_cbs SET
  inwoners     = 2355,
  pct_vrouw    = 46.1,
  cbs_leeftijd = 44.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6816';

UPDATE pc4_cbs SET
  inwoners     = 5825,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 39.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6821';

UPDATE pc4_cbs SET
  inwoners     = 7155,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6822';

UPDATE pc4_cbs SET
  inwoners     = 6810,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 44,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6823';

UPDATE pc4_cbs SET
  inwoners     = 10695,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6824';

UPDATE pc4_cbs SET
  inwoners     = 5935,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6825';

UPDATE pc4_cbs SET
  inwoners     = 10485,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 37.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6826';

UPDATE pc4_cbs SET
  inwoners     = 1230,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 37.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6827';

UPDATE pc4_cbs SET
  inwoners     = 12520,
  pct_vrouw    = 48,
  cbs_leeftijd = 38,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6828';

UPDATE pc4_cbs SET
  inwoners     = 3625,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.1,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6831';

UPDATE pc4_cbs SET
  inwoners     = 5745,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 40.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6832';

UPDATE pc4_cbs SET
  inwoners     = 6540,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 38.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6833';

UPDATE pc4_cbs SET
  inwoners     = 3370,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 39,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6834';

UPDATE pc4_cbs SET
  inwoners     = 5595,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 43.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6835';

UPDATE pc4_cbs SET
  inwoners     = 11665,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6836';

UPDATE pc4_cbs SET
  inwoners     = 4650,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 37.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6841';

UPDATE pc4_cbs SET
  inwoners     = 2910,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6842';

UPDATE pc4_cbs SET
  inwoners     = 10640,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6843';

UPDATE pc4_cbs SET
  inwoners     = 4040,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6844';

UPDATE pc4_cbs SET
  inwoners     = 6240,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 41.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6845';

UPDATE pc4_cbs SET
  inwoners     = 15705,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 33.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6846';

UPDATE pc4_cbs SET
  inwoners     = 9485,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6851';

UPDATE pc4_cbs SET
  inwoners     = 10285,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6852';

UPDATE pc4_cbs SET
  inwoners     = 5555,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 50,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6861';

UPDATE pc4_cbs SET
  inwoners     = 5680,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 46.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6862';

UPDATE pc4_cbs SET
  inwoners     = 4935,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 50,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6865';

UPDATE pc4_cbs SET
  inwoners     = 3550,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 49.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6866';

UPDATE pc4_cbs SET
  inwoners     = 700,
  pct_vrouw    = 50,
  cbs_leeftijd = 50.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6869';

UPDATE pc4_cbs SET
  inwoners     = 9120,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6871';

UPDATE pc4_cbs SET
  inwoners     = 1875,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 49.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6874';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 33.3,
  cbs_leeftijd = 38,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6877';

UPDATE pc4_cbs SET
  inwoners     = 7670,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 46.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6881';

UPDATE pc4_cbs SET
  inwoners     = 6515,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 44.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6882';

UPDATE pc4_cbs SET
  inwoners     = 4185,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6883';

UPDATE pc4_cbs SET
  inwoners     = 1830,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 44.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6891';

UPDATE pc4_cbs SET
  inwoners     = 6705,
  pct_vrouw    = 52,
  cbs_leeftijd = 47.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6901';

UPDATE pc4_cbs SET
  inwoners     = 1155,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6902';

UPDATE pc4_cbs SET
  inwoners     = 6830,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 46.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6903';

UPDATE pc4_cbs SET
  inwoners     = 7140,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6904';

UPDATE pc4_cbs SET
  inwoners     = 4845,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 37.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6905';

UPDATE pc4_cbs SET
  inwoners     = 1945,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 45.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6909';

UPDATE pc4_cbs SET
  inwoners     = 2440,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6911';

UPDATE pc4_cbs SET
  inwoners     = 825,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 47.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6913';

UPDATE pc4_cbs SET
  inwoners     = 1100,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6914';

UPDATE pc4_cbs SET
  inwoners     = 3040,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6915';

UPDATE pc4_cbs SET
  inwoners     = 2840,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6916';

UPDATE pc4_cbs SET
  inwoners     = 795,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6917';

UPDATE pc4_cbs SET
  inwoners     = 14205,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6921';

UPDATE pc4_cbs SET
  inwoners     = 7460,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6922';

UPDATE pc4_cbs SET
  inwoners     = 2025,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6923';

UPDATE pc4_cbs SET
  inwoners     = 1185,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6924';

UPDATE pc4_cbs SET
  inwoners     = 7850,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 44,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6931';

UPDATE pc4_cbs SET
  inwoners     = 7300,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6932';

UPDATE pc4_cbs SET
  inwoners     = 4755,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6941';

UPDATE pc4_cbs SET
  inwoners     = 12690,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6942';

UPDATE pc4_cbs SET
  inwoners     = 7185,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6951';

UPDATE pc4_cbs SET
  inwoners     = 4245,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 48.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6952';

UPDATE pc4_cbs SET
  inwoners     = 2050,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 49.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6953';

UPDATE pc4_cbs SET
  inwoners     = 1035,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 49.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6955';

UPDATE pc4_cbs SET
  inwoners     = 935,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 46,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6956';

UPDATE pc4_cbs SET
  inwoners     = 910,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 50.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6957';

UPDATE pc4_cbs SET
  inwoners     = 10215,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 45.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6961';

UPDATE pc4_cbs SET
  inwoners     = 825,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 48.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6964';

UPDATE pc4_cbs SET
  inwoners     = 8540,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 47.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6971';

UPDATE pc4_cbs SET
  inwoners     = 720,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 45.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6974';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6975';

UPDATE pc4_cbs SET
  inwoners     = 4445,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 51.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6981';

UPDATE pc4_cbs SET
  inwoners     = 2375,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6982';

UPDATE pc4_cbs SET
  inwoners     = 4055,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6983';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 43.9,
  cbs_leeftijd = 49.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6984';

UPDATE pc4_cbs SET
  inwoners     = 1370,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6986';

UPDATE pc4_cbs SET
  inwoners     = 2690,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 46.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6987';

UPDATE pc4_cbs SET
  inwoners     = 1315,
  pct_vrouw    = 49,
  cbs_leeftijd = 51.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6988';

UPDATE pc4_cbs SET
  inwoners     = 7855,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6991';

UPDATE pc4_cbs SET
  inwoners     = 1075,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 48.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6994';

UPDATE pc4_cbs SET
  inwoners     = 1645,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 46.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6996';

UPDATE pc4_cbs SET
  inwoners     = 475,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 53.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6997';

UPDATE pc4_cbs SET
  inwoners     = 565,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 51.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6998';

UPDATE pc4_cbs SET
  inwoners     = 1600,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 48.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '6999';

UPDATE pc4_cbs SET
  inwoners     = 4720,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 48,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7001';

UPDATE pc4_cbs SET
  inwoners     = 6550,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 43.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7002';

UPDATE pc4_cbs SET
  inwoners     = 2910,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 44.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7003';

UPDATE pc4_cbs SET
  inwoners     = 4810,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7004';

UPDATE pc4_cbs SET
  inwoners     = 935,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7005';

UPDATE pc4_cbs SET
  inwoners     = 9910,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7006';

UPDATE pc4_cbs SET
  inwoners     = 8995,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 39.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7007';

UPDATE pc4_cbs SET
  inwoners     = 880,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 48.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7008';

UPDATE pc4_cbs SET
  inwoners     = 7100,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 43.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7009';

UPDATE pc4_cbs SET
  inwoners     = 5725,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7011';

UPDATE pc4_cbs SET
  inwoners     = 8775,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7021';

UPDATE pc4_cbs SET
  inwoners     = 2215,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7025';

UPDATE pc4_cbs SET
  inwoners     = 7095,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7031';

UPDATE pc4_cbs SET
  inwoners     = 1520,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7035';

UPDATE pc4_cbs SET
  inwoners     = 450,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 46,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7036';

UPDATE pc4_cbs SET
  inwoners     = 2370,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7037';

UPDATE pc4_cbs SET
  inwoners     = 2740,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 48.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7038';

UPDATE pc4_cbs SET
  inwoners     = 1180,
  pct_vrouw    = 50,
  cbs_leeftijd = 47,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7039';

UPDATE pc4_cbs SET
  inwoners     = 8550,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 45.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7041';

UPDATE pc4_cbs SET
  inwoners     = 475,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7044';

UPDATE pc4_cbs SET
  inwoners     = 795,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 46.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7045';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 37.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7046';

UPDATE pc4_cbs SET
  inwoners     = 1085,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7047';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 42.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7048';

UPDATE pc4_cbs SET
  inwoners     = 5800,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 47.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7051';

UPDATE pc4_cbs SET
  inwoners     = 1205,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7054';

UPDATE pc4_cbs SET
  inwoners     = 1050,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 44.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7055';

UPDATE pc4_cbs SET
  inwoners     = 4495,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7061';

UPDATE pc4_cbs SET
  inwoners     = 5565,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 46.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7064';

UPDATE pc4_cbs SET
  inwoners     = 970,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 46.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7065';

UPDATE pc4_cbs SET
  inwoners     = 10570,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7071';

UPDATE pc4_cbs SET
  inwoners     = 1790,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7075';

UPDATE pc4_cbs SET
  inwoners     = 850,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 42.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7076';

UPDATE pc4_cbs SET
  inwoners     = 485,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7077';

UPDATE pc4_cbs SET
  inwoners     = 1010,
  pct_vrouw    = 48,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7078';

UPDATE pc4_cbs SET
  inwoners     = 4375,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 46.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7081';

UPDATE pc4_cbs SET
  inwoners     = 275,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7083';

UPDATE pc4_cbs SET
  inwoners     = 960,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 46.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7084';

UPDATE pc4_cbs SET
  inwoners     = 7210,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7091';

UPDATE pc4_cbs SET
  inwoners     = 1105,
  pct_vrouw    = 48,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7095';

UPDATE pc4_cbs SET
  inwoners     = 12415,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7101';

UPDATE pc4_cbs SET
  inwoners     = 3715,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7102';

UPDATE pc4_cbs SET
  inwoners     = 7805,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7103';

UPDATE pc4_cbs SET
  inwoners     = 1500,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7104';

UPDATE pc4_cbs SET
  inwoners     = 420,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7105';

UPDATE pc4_cbs SET
  inwoners     = 340,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7106';

UPDATE pc4_cbs SET
  inwoners     = 685,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 48.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7107';

UPDATE pc4_cbs SET
  inwoners     = 890,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7108';

UPDATE pc4_cbs SET
  inwoners     = 625,
  pct_vrouw    = 48,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7109';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 45.6,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7113';

UPDATE pc4_cbs SET
  inwoners     = 300,
  pct_vrouw    = 45,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7115';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 49,
  cbs_leeftijd = 47.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7119';

UPDATE pc4_cbs SET
  inwoners     = 8010,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7121';

UPDATE pc4_cbs SET
  inwoners     = 8065,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7122';

UPDATE pc4_cbs SET
  inwoners     = 1390,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7123';

UPDATE pc4_cbs SET
  inwoners     = 1525,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7126';

UPDATE pc4_cbs SET
  inwoners     = 9980,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7131';

UPDATE pc4_cbs SET
  inwoners     = 3095,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 41.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7132';

UPDATE pc4_cbs SET
  inwoners     = 1165,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7134';

UPDATE pc4_cbs SET
  inwoners     = 1340,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 41.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7135';

UPDATE pc4_cbs SET
  inwoners     = 1995,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7136';

UPDATE pc4_cbs SET
  inwoners     = 1390,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 44,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7137';

UPDATE pc4_cbs SET
  inwoners     = 9570,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7141';

UPDATE pc4_cbs SET
  inwoners     = 505,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7142';

UPDATE pc4_cbs SET
  inwoners     = 7800,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7151';

UPDATE pc4_cbs SET
  inwoners     = 3330,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 46.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7152';

UPDATE pc4_cbs SET
  inwoners     = 2840,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7156';

UPDATE pc4_cbs SET
  inwoners     = 1305,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 46.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7157';

UPDATE pc4_cbs SET
  inwoners     = 9285,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7161';

UPDATE pc4_cbs SET
  inwoners     = 1030,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 44.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7165';

UPDATE pc4_cbs SET
  inwoners     = 5690,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 50.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7201';

UPDATE pc4_cbs SET
  inwoners     = 1765,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 52,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7202';

UPDATE pc4_cbs SET
  inwoners     = 4785,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 42.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7203';

UPDATE pc4_cbs SET
  inwoners     = 9865,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7204';

UPDATE pc4_cbs SET
  inwoners     = 2315,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7205';

UPDATE pc4_cbs SET
  inwoners     = 6495,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 45.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7206';

UPDATE pc4_cbs SET
  inwoners     = 9400,
  pct_vrouw    = 49,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7207';

UPDATE pc4_cbs SET
  inwoners     = 4555,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 47.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7211';

UPDATE pc4_cbs SET
  inwoners     = 3980,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 50.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7213';

UPDATE pc4_cbs SET
  inwoners     = 2080,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7214';

UPDATE pc4_cbs SET
  inwoners     = 405,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 49.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7215';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 46.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7216';

UPDATE pc4_cbs SET
  inwoners     = 1800,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7217';

UPDATE pc4_cbs SET
  inwoners     = 1240,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 50,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7218';

UPDATE pc4_cbs SET
  inwoners     = 2210,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 47.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7221';

UPDATE pc4_cbs SET
  inwoners     = 1050,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7223';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 51.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7224';

UPDATE pc4_cbs SET
  inwoners     = 250,
  pct_vrouw    = 50,
  cbs_leeftijd = 47,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7225';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 50,
  cbs_leeftijd = 53.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7226';

UPDATE pc4_cbs SET
  inwoners     = 900,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7227';

UPDATE pc4_cbs SET
  inwoners     = 5295,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 47.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7231';

UPDATE pc4_cbs SET
  inwoners     = 3135,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 47.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7232';

UPDATE pc4_cbs SET
  inwoners     = 360,
  pct_vrouw    = 50,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7233';

UPDATE pc4_cbs SET
  inwoners     = 630,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7234';

UPDATE pc4_cbs SET
  inwoners     = 8240,
  pct_vrouw    = 51,
  cbs_leeftijd = 49.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7241';

UPDATE pc4_cbs SET
  inwoners     = 5625,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7242';

UPDATE pc4_cbs SET
  inwoners     = 1765,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 48.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7244';

UPDATE pc4_cbs SET
  inwoners     = 4305,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 46.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7245';

UPDATE pc4_cbs SET
  inwoners     = 7175,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 49.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7251';

UPDATE pc4_cbs SET
  inwoners     = 6630,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 47.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7255';

UPDATE pc4_cbs SET
  inwoners     = 1440,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7256';

UPDATE pc4_cbs SET
  inwoners     = 7760,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 48.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7261';

UPDATE pc4_cbs SET
  inwoners     = 930,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7263';

UPDATE pc4_cbs SET
  inwoners     = 7885,
  pct_vrouw    = 51,
  cbs_leeftijd = 45.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7271';

UPDATE pc4_cbs SET
  inwoners     = 710,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7273';

UPDATE pc4_cbs SET
  inwoners     = 1335,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 45.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7274';

UPDATE pc4_cbs SET
  inwoners     = 655,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 46.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7275';

UPDATE pc4_cbs SET
  inwoners     = 11045,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7311';

UPDATE pc4_cbs SET
  inwoners     = 10830,
  pct_vrouw    = 51,
  cbs_leeftijd = 43.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7312';

UPDATE pc4_cbs SET
  inwoners     = 2310,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 47.6,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7313';

UPDATE pc4_cbs SET
  inwoners     = 7140,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 47.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7314';

UPDATE pc4_cbs SET
  inwoners     = 4930,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 49.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7315';

UPDATE pc4_cbs SET
  inwoners     = 6295,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7316';

UPDATE pc4_cbs SET
  inwoners     = 670,
  pct_vrouw    = 47,
  cbs_leeftijd = 37.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7317';

UPDATE pc4_cbs SET
  inwoners     = 6240,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7321';

UPDATE pc4_cbs SET
  inwoners     = 9740,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 42.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7322';

UPDATE pc4_cbs SET
  inwoners     = 13850,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 38.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7323';

UPDATE pc4_cbs SET
  inwoners     = 2645,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 28.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7324';

UPDATE pc4_cbs SET
  inwoners     = 13175,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 41.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7325';

UPDATE pc4_cbs SET
  inwoners     = 9660,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7326';

UPDATE pc4_cbs SET
  inwoners     = 5650,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7327';

UPDATE pc4_cbs SET
  inwoners     = 7230,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 41.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7328';

UPDATE pc4_cbs SET
  inwoners     = 2750,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 48,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7329';

UPDATE pc4_cbs SET
  inwoners     = 11265,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7331';

UPDATE pc4_cbs SET
  inwoners     = 750,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 34.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7332';

UPDATE pc4_cbs SET
  inwoners     = 6540,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7333';

UPDATE pc4_cbs SET
  inwoners     = 2660,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7334';

UPDATE pc4_cbs SET
  inwoners     = 6455,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7335';

UPDATE pc4_cbs SET
  inwoners     = 345,
  pct_vrouw    = 37.7,
  cbs_leeftijd = 35.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7336';

UPDATE pc4_cbs SET
  inwoners     = 6320,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 48.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7339';

UPDATE pc4_cbs SET
  inwoners     = 1065,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 41.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7341';

UPDATE pc4_cbs SET
  inwoners     = 2200,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 46.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7345';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 51,
  cbs_leeftijd = 53.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7346';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 45,
  cbs_leeftijd = 54.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7348';

UPDATE pc4_cbs SET
  inwoners     = 1330,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 49.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7351';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 54.5,
  cbs_leeftijd = 52.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7352';

UPDATE pc4_cbs SET
  inwoners     = 4960,
  pct_vrouw    = 45.4,
  cbs_leeftijd = 48.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7361';

UPDATE pc4_cbs SET
  inwoners     = 1335,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7364';

UPDATE pc4_cbs SET
  inwoners     = 3310,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 47.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7371';

UPDATE pc4_cbs SET
  inwoners     = 1760,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7381';

UPDATE pc4_cbs SET
  inwoners     = 1555,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7382';

UPDATE pc4_cbs SET
  inwoners     = 2745,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 43.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7383';

UPDATE pc4_cbs SET
  inwoners     = 3045,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7384';

UPDATE pc4_cbs SET
  inwoners     = 12260,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 47.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7391';

UPDATE pc4_cbs SET
  inwoners     = 1210,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 34.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7392';

UPDATE pc4_cbs SET
  inwoners     = 970,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7395';

UPDATE pc4_cbs SET
  inwoners     = 2540,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7396';

UPDATE pc4_cbs SET
  inwoners     = 765,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 42.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7397';

UPDATE pc4_cbs SET
  inwoners     = 655,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7399';

UPDATE pc4_cbs SET
  inwoners     = 8895,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7411';

UPDATE pc4_cbs SET
  inwoners     = 11760,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 42.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7412';

UPDATE pc4_cbs SET
  inwoners     = 7210,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 39.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7413';

UPDATE pc4_cbs SET
  inwoners     = 5355,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 45.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7414';

UPDATE pc4_cbs SET
  inwoners     = 12445,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 40.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7415';

UPDATE pc4_cbs SET
  inwoners     = 3460,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 39.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7416';

UPDATE pc4_cbs SET
  inwoners     = 5120,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 36.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7417';

UPDATE pc4_cbs SET
  inwoners     = 895,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7418';

UPDATE pc4_cbs SET
  inwoners     = 2290,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7419';

UPDATE pc4_cbs SET
  inwoners     = 5180,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7421';

UPDATE pc4_cbs SET
  inwoners     = 2335,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 46.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7422';

UPDATE pc4_cbs SET
  inwoners     = 5930,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7423';

UPDATE pc4_cbs SET
  inwoners     = 4745,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 36.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7424';

UPDATE pc4_cbs SET
  inwoners     = 7730,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 40.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7425';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 50,
  cbs_leeftijd = 31.8,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7426';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 58.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7427';

UPDATE pc4_cbs SET
  inwoners     = 160,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7428';

UPDATE pc4_cbs SET
  inwoners     = 1105,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 57.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7429';

UPDATE pc4_cbs SET
  inwoners     = 4915,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 47.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7431';

UPDATE pc4_cbs SET
  inwoners     = 6070,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7433';

UPDATE pc4_cbs SET
  inwoners     = 1475,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7434';

UPDATE pc4_cbs SET
  inwoners     = 450,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7435';

UPDATE pc4_cbs SET
  inwoners     = 5765,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7437';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 53.4,
  cbs_leeftijd = 47.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7439';

UPDATE pc4_cbs SET
  inwoners     = 5200,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7441';

UPDATE pc4_cbs SET
  inwoners     = 10615,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 45.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7442';

UPDATE pc4_cbs SET
  inwoners     = 9160,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7443';

UPDATE pc4_cbs SET
  inwoners     = 6540,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7447';

UPDATE pc4_cbs SET
  inwoners     = 2090,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7448';

UPDATE pc4_cbs SET
  inwoners     = 9590,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7451';

UPDATE pc4_cbs SET
  inwoners     = 10015,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 41.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7461';

UPDATE pc4_cbs SET
  inwoners     = 13855,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 39.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7462';

UPDATE pc4_cbs SET
  inwoners     = 5220,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 33,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7463';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 43.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7466';

UPDATE pc4_cbs SET
  inwoners     = 435,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 40.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7467';

UPDATE pc4_cbs SET
  inwoners     = 7450,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7468';

UPDATE pc4_cbs SET
  inwoners     = 12200,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7471';

UPDATE pc4_cbs SET
  inwoners     = 35,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 59,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7472';

UPDATE pc4_cbs SET
  inwoners     = 7320,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7475';

UPDATE pc4_cbs SET
  inwoners     = 2665,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 48,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7478';

UPDATE pc4_cbs SET
  inwoners     = 10950,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 47.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7481';

UPDATE pc4_cbs SET
  inwoners     = 10480,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7482';

UPDATE pc4_cbs SET
  inwoners     = 2920,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 39.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7483';

UPDATE pc4_cbs SET
  inwoners     = 7365,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 47.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7491';

UPDATE pc4_cbs SET
  inwoners     = 1935,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7495';

UPDATE pc4_cbs SET
  inwoners     = 2300,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7496';

UPDATE pc4_cbs SET
  inwoners     = 1630,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7497';

UPDATE pc4_cbs SET
  inwoners     = 10365,
  pct_vrouw    = 46.1,
  cbs_leeftijd = 40.6,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7511';

UPDATE pc4_cbs SET
  inwoners     = 7230,
  pct_vrouw    = 49,
  cbs_leeftijd = 40.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7512';

UPDATE pc4_cbs SET
  inwoners     = 5380,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 38.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7513';

UPDATE pc4_cbs SET
  inwoners     = 6535,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 36.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7514';

UPDATE pc4_cbs SET
  inwoners     = 9145,
  pct_vrouw    = 47,
  cbs_leeftijd = 40.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7521';

UPDATE pc4_cbs SET
  inwoners     = 7925,
  pct_vrouw    = 44.2,
  cbs_leeftijd = 35,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7522';

UPDATE pc4_cbs SET
  inwoners     = 12225,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 41.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7523';

UPDATE pc4_cbs SET
  inwoners     = 3810,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7524';

UPDATE pc4_cbs SET
  inwoners     = 370,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 45.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7525';

UPDATE pc4_cbs SET
  inwoners     = 8410,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7531';

UPDATE pc4_cbs SET
  inwoners     = 5345,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7532';

UPDATE pc4_cbs SET
  inwoners     = 4840,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 40.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7533';

UPDATE pc4_cbs SET
  inwoners     = 12435,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 40.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7534';

UPDATE pc4_cbs SET
  inwoners     = 3740,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7535';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 49.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7536';

UPDATE pc4_cbs SET
  inwoners     = 3175,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 41.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7541';

UPDATE pc4_cbs SET
  inwoners     = 10315,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7542';

UPDATE pc4_cbs SET
  inwoners     = 6375,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7543';

UPDATE pc4_cbs SET
  inwoners     = 15960,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 43.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7544';

UPDATE pc4_cbs SET
  inwoners     = 14910,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 40.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7545';

UPDATE pc4_cbs SET
  inwoners     = 8605,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7546';

UPDATE pc4_cbs SET
  inwoners     = 585,
  pct_vrouw    = 47,
  cbs_leeftijd = 42.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7547';

UPDATE pc4_cbs SET
  inwoners     = 4005,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7548';

UPDATE pc4_cbs SET
  inwoners     = 4360,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 47.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7551';

UPDATE pc4_cbs SET
  inwoners     = 11690,
  pct_vrouw    = 51,
  cbs_leeftijd = 43.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7552';

UPDATE pc4_cbs SET
  inwoners     = 9860,
  pct_vrouw    = 49,
  cbs_leeftijd = 43.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7553';

UPDATE pc4_cbs SET
  inwoners     = 1500,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7554';

UPDATE pc4_cbs SET
  inwoners     = 9510,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 46.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7555';

UPDATE pc4_cbs SET
  inwoners     = 12445,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 41.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7556';

UPDATE pc4_cbs SET
  inwoners     = 10845,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 40.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7557';

UPDATE pc4_cbs SET
  inwoners     = 12030,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7558';

UPDATE pc4_cbs SET
  inwoners     = 10820,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 40.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7559';

UPDATE pc4_cbs SET
  inwoners     = 2000,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7561';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7562';

UPDATE pc4_cbs SET
  inwoners     = 2810,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 52.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7571';

UPDATE pc4_cbs SET
  inwoners     = 5065,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 43.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7572';

UPDATE pc4_cbs SET
  inwoners     = 3715,
  pct_vrouw    = 53.4,
  cbs_leeftijd = 50.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7573';

UPDATE pc4_cbs SET
  inwoners     = 3490,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7574';

UPDATE pc4_cbs SET
  inwoners     = 680,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7575';

UPDATE pc4_cbs SET
  inwoners     = 5940,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7576';

UPDATE pc4_cbs SET
  inwoners     = 9860,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7577';

UPDATE pc4_cbs SET
  inwoners     = 8570,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7581';

UPDATE pc4_cbs SET
  inwoners     = 5200,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7582';

UPDATE pc4_cbs SET
  inwoners     = 510,
  pct_vrouw    = 46.1,
  cbs_leeftijd = 44.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7585';

UPDATE pc4_cbs SET
  inwoners     = 4130,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7586';

UPDATE pc4_cbs SET
  inwoners     = 3945,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7587';

UPDATE pc4_cbs SET
  inwoners     = 1020,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7588';

UPDATE pc4_cbs SET
  inwoners     = 10250,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7591';

UPDATE pc4_cbs SET
  inwoners     = 3120,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7595';

UPDATE pc4_cbs SET
  inwoners     = 2345,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7596';

UPDATE pc4_cbs SET
  inwoners     = 1705,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 42.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7597';

UPDATE pc4_cbs SET
  inwoners     = 6930,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7601';

UPDATE pc4_cbs SET
  inwoners     = 6565,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7602';

UPDATE pc4_cbs SET
  inwoners     = 6500,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7603';

UPDATE pc4_cbs SET
  inwoners     = 6500,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7604';

UPDATE pc4_cbs SET
  inwoners     = 2965,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 40.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7605';

UPDATE pc4_cbs SET
  inwoners     = 6805,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 40.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7606';

UPDATE pc4_cbs SET
  inwoners     = 9570,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 46.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7607';

UPDATE pc4_cbs SET
  inwoners     = 11145,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 44.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7608';

UPDATE pc4_cbs SET
  inwoners     = 13695,
  pct_vrouw    = 49,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7609';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 38.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7610';

UPDATE pc4_cbs SET
  inwoners     = 1530,
  pct_vrouw    = 48,
  cbs_leeftijd = 43.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7611';

UPDATE pc4_cbs SET
  inwoners     = 250,
  pct_vrouw    = 46,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7614';

UPDATE pc4_cbs SET
  inwoners     = 1615,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7615';

UPDATE pc4_cbs SET
  inwoners     = 5945,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7621';

UPDATE pc4_cbs SET
  inwoners     = 7810,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 48,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7622';

UPDATE pc4_cbs SET
  inwoners     = 8845,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 37.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7623';

UPDATE pc4_cbs SET
  inwoners     = 1460,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7625';

UPDATE pc4_cbs SET
  inwoners     = 575,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 40.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7626';

UPDATE pc4_cbs SET
  inwoners     = 2065,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 42.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7627';

UPDATE pc4_cbs SET
  inwoners     = 4490,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7631';

UPDATE pc4_cbs SET
  inwoners     = 755,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7634';

UPDATE pc4_cbs SET
  inwoners     = 960,
  pct_vrouw    = 45.3,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7635';

UPDATE pc4_cbs SET
  inwoners     = 620,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7636';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7637';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 41.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7638';

UPDATE pc4_cbs SET
  inwoners     = 8215,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7641';

UPDATE pc4_cbs SET
  inwoners     = 7405,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7642';

UPDATE pc4_cbs SET
  inwoners     = 1105,
  pct_vrouw    = 48,
  cbs_leeftijd = 41.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7645';

UPDATE pc4_cbs SET
  inwoners     = 5860,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7651';

UPDATE pc4_cbs SET
  inwoners     = 990,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 43.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7661';

UPDATE pc4_cbs SET
  inwoners     = 215,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 45.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7662';

UPDATE pc4_cbs SET
  inwoners     = 385,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 40.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7663';

UPDATE pc4_cbs SET
  inwoners     = 620,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7664';

UPDATE pc4_cbs SET
  inwoners     = 3555,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 42.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7665';

UPDATE pc4_cbs SET
  inwoners     = 905,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7666';

UPDATE pc4_cbs SET
  inwoners     = 1270,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7667';

UPDATE pc4_cbs SET
  inwoners     = 155,
  pct_vrouw    = 38.7,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7668';

UPDATE pc4_cbs SET
  inwoners     = 11450,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7671';

UPDATE pc4_cbs SET
  inwoners     = 2510,
  pct_vrouw    = 50,
  cbs_leeftijd = 37.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7672';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7675';

UPDATE pc4_cbs SET
  inwoners     = 4425,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 42,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7676';

UPDATE pc4_cbs SET
  inwoners     = 4285,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7678';

UPDATE pc4_cbs SET
  inwoners     = 1290,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7679';

UPDATE pc4_cbs SET
  inwoners     = 8905,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7681';

UPDATE pc4_cbs SET
  inwoners     = 6000,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7683';

UPDATE pc4_cbs SET
  inwoners     = 1055,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 40.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7685';

UPDATE pc4_cbs SET
  inwoners     = 575,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 42.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7686';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 48,
  cbs_leeftijd = 40.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7687';

UPDATE pc4_cbs SET
  inwoners     = 1440,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 40.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7688';

UPDATE pc4_cbs SET
  inwoners     = 3570,
  pct_vrouw    = 49,
  cbs_leeftijd = 39.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7691';

UPDATE pc4_cbs SET
  inwoners     = 955,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 38.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7692';

UPDATE pc4_cbs SET
  inwoners     = 1455,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7693';

UPDATE pc4_cbs SET
  inwoners     = 1565,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 41.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7694';

UPDATE pc4_cbs SET
  inwoners     = 1100,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 42.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7695';

UPDATE pc4_cbs SET
  inwoners     = 320,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7696';

UPDATE pc4_cbs SET
  inwoners     = 12075,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7701';

UPDATE pc4_cbs SET
  inwoners     = 990,
  pct_vrouw    = 47,
  cbs_leeftijd = 39.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7702';

UPDATE pc4_cbs SET
  inwoners     = 370,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 42.6,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7705';

UPDATE pc4_cbs SET
  inwoners     = 4005,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7707';

UPDATE pc4_cbs SET
  inwoners     = 9560,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7711';

UPDATE pc4_cbs SET
  inwoners     = 980,
  pct_vrouw    = 48,
  cbs_leeftijd = 38.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7715';

UPDATE pc4_cbs SET
  inwoners     = 7210,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7721';

UPDATE pc4_cbs SET
  inwoners     = 8120,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 42.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7722';

UPDATE pc4_cbs SET
  inwoners     = 12250,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7731';

UPDATE pc4_cbs SET
  inwoners     = 1045,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 30.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7732';

UPDATE pc4_cbs SET
  inwoners     = 380,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7734';

UPDATE pc4_cbs SET
  inwoners     = 375,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 41.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7735';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 50,
  cbs_leeftijd = 50.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7736';

UPDATE pc4_cbs SET
  inwoners     = 560,
  pct_vrouw    = 44.6,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7737';

UPDATE pc4_cbs SET
  inwoners     = 665,
  pct_vrouw    = 45.1,
  cbs_leeftijd = 42,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7738';

UPDATE pc4_cbs SET
  inwoners     = 425,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7739';

UPDATE pc4_cbs SET
  inwoners     = 9210,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 45.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7741';

UPDATE pc4_cbs SET
  inwoners     = 6685,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7742';

UPDATE pc4_cbs SET
  inwoners     = 3810,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7751';

UPDATE pc4_cbs SET
  inwoners     = 655,
  pct_vrouw    = 45.8,
  cbs_leeftijd = 42.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7753';

UPDATE pc4_cbs SET
  inwoners     = 365,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7754';

UPDATE pc4_cbs SET
  inwoners     = 360,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 43.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7755';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 45,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7756';

UPDATE pc4_cbs SET
  inwoners     = 4435,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7761';

UPDATE pc4_cbs SET
  inwoners     = 470,
  pct_vrouw    = 50,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7764';

UPDATE pc4_cbs SET
  inwoners     = 1655,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 46.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7765';

UPDATE pc4_cbs SET
  inwoners     = 1305,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7766';

UPDATE pc4_cbs SET
  inwoners     = 4850,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7771';

UPDATE pc4_cbs SET
  inwoners     = 11195,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7772';

UPDATE pc4_cbs SET
  inwoners     = 4500,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 35.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7773';

UPDATE pc4_cbs SET
  inwoners     = 2060,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 41.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7775';

UPDATE pc4_cbs SET
  inwoners     = 3240,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7776';

UPDATE pc4_cbs SET
  inwoners     = 980,
  pct_vrouw    = 48,
  cbs_leeftijd = 41.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7777';

UPDATE pc4_cbs SET
  inwoners     = 210,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7778';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 42.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7779';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 43.1,
  cbs_leeftijd = 38.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7781';

UPDATE pc4_cbs SET
  inwoners     = 1950,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7782';

UPDATE pc4_cbs SET
  inwoners     = 3330,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7783';

UPDATE pc4_cbs SET
  inwoners     = 555,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 40.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7784';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7785';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 42.1,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7786';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 43.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7787';

UPDATE pc4_cbs SET
  inwoners     = 155,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 47.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7788';

UPDATE pc4_cbs SET
  inwoners     = 585,
  pct_vrouw    = 45.3,
  cbs_leeftijd = 43.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7791';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 45,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7792';

UPDATE pc4_cbs SET
  inwoners     = 455,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 41.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7793';

UPDATE pc4_cbs SET
  inwoners     = 260,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 40.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7794';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7795';

UPDATE pc4_cbs SET
  inwoners     = 645,
  pct_vrouw    = 34.1,
  cbs_leeftijd = 36.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7796';

UPDATE pc4_cbs SET
  inwoners     = 575,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 42.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7797';

UPDATE pc4_cbs SET
  inwoners     = 390,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 39.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7798';

UPDATE pc4_cbs SET
  inwoners     = 5340,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 54.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7811';

UPDATE pc4_cbs SET
  inwoners     = 9880,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7812';

UPDATE pc4_cbs SET
  inwoners     = 2010,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 35,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7813';

UPDATE pc4_cbs SET
  inwoners     = 1860,
  pct_vrouw    = 50,
  cbs_leeftijd = 40.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7814';

UPDATE pc4_cbs SET
  inwoners     = 6010,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7815';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 33.3,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7821';

UPDATE pc4_cbs SET
  inwoners     = 3165,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7822';

UPDATE pc4_cbs SET
  inwoners     = 8235,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7823';

UPDATE pc4_cbs SET
  inwoners     = 7670,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 44.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7824';

UPDATE pc4_cbs SET
  inwoners     = 415,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 50.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7825';

UPDATE pc4_cbs SET
  inwoners     = 2980,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7826';

UPDATE pc4_cbs SET
  inwoners     = 9070,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7827';

UPDATE pc4_cbs SET
  inwoners     = 2125,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7828';

UPDATE pc4_cbs SET
  inwoners     = 3365,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7831';

UPDATE pc4_cbs SET
  inwoners     = 4715,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7833';

UPDATE pc4_cbs SET
  inwoners     = 2265,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 48.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7841';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 56.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7842';

UPDATE pc4_cbs SET
  inwoners     = 835,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 48.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7843';

UPDATE pc4_cbs SET
  inwoners     = 2160,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7844';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 39.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7845';

UPDATE pc4_cbs SET
  inwoners     = 620,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 44.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7846';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 44.7,
  cbs_leeftijd = 53.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7847';

UPDATE pc4_cbs SET
  inwoners     = 2180,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 47.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7848';

UPDATE pc4_cbs SET
  inwoners     = 375,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 50.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7849';

UPDATE pc4_cbs SET
  inwoners     = 365,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 49,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7851';

UPDATE pc4_cbs SET
  inwoners     = 215,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 47.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7852';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 51.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7853';

UPDATE pc4_cbs SET
  inwoners     = 1910,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 46.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7854';

UPDATE pc4_cbs SET
  inwoners     = 400,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7855';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7856';

UPDATE pc4_cbs SET
  inwoners     = 120,
  pct_vrouw    = 54.2,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7858';

UPDATE pc4_cbs SET
  inwoners     = 40,
  pct_vrouw    = 50,
  cbs_leeftijd = 53.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7859';

UPDATE pc4_cbs SET
  inwoners     = 1890,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 49.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7861';

UPDATE pc4_cbs SET
  inwoners     = 670,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 49.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7863';

UPDATE pc4_cbs SET
  inwoners     = 405,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 45.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7864';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 48,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7871';

UPDATE pc4_cbs SET
  inwoners     = 1210,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 48.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7872';

UPDATE pc4_cbs SET
  inwoners     = 1960,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 48.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7873';

UPDATE pc4_cbs SET
  inwoners     = 400,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 48.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7874';

UPDATE pc4_cbs SET
  inwoners     = 1730,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 50.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7875';

UPDATE pc4_cbs SET
  inwoners     = 3425,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7876';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 45,
  cbs_leeftijd = 54.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7877';

UPDATE pc4_cbs SET
  inwoners     = 7730,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7881';

UPDATE pc4_cbs SET
  inwoners     = 1770,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7884';

UPDATE pc4_cbs SET
  inwoners     = 2075,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7885';

UPDATE pc4_cbs SET
  inwoners     = 4750,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7887';

UPDATE pc4_cbs SET
  inwoners     = 270,
  pct_vrouw    = 42.6,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7889';

UPDATE pc4_cbs SET
  inwoners     = 11800,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7891';

UPDATE pc4_cbs SET
  inwoners     = 135,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7892';

UPDATE pc4_cbs SET
  inwoners     = 3085,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7894';

UPDATE pc4_cbs SET
  inwoners     = 860,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7895';

UPDATE pc4_cbs SET
  inwoners     = 3385,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 47.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7901';

UPDATE pc4_cbs SET
  inwoners     = 5035,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7902';

UPDATE pc4_cbs SET
  inwoners     = 400,
  pct_vrouw    = 45,
  cbs_leeftijd = 38.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7903';

UPDATE pc4_cbs SET
  inwoners     = 5020,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 41,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7904';

UPDATE pc4_cbs SET
  inwoners     = 4380,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7905';

UPDATE pc4_cbs SET
  inwoners     = 6145,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7906';

UPDATE pc4_cbs SET
  inwoners     = 2020,
  pct_vrouw    = 51,
  cbs_leeftijd = 47.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7907';

UPDATE pc4_cbs SET
  inwoners     = 11440,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7908';

UPDATE pc4_cbs SET
  inwoners     = 2805,
  pct_vrouw    = 45.8,
  cbs_leeftijd = 47.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7909';

UPDATE pc4_cbs SET
  inwoners     = 120,
  pct_vrouw    = 45.8,
  cbs_leeftijd = 40.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7910';

UPDATE pc4_cbs SET
  inwoners     = 320,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 38.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7911';

UPDATE pc4_cbs SET
  inwoners     = 650,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7912';

UPDATE pc4_cbs SET
  inwoners     = 5280,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7913';

UPDATE pc4_cbs SET
  inwoners     = 1925,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7914';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 31.3,
  cbs_leeftijd = 47.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7915';

UPDATE pc4_cbs SET
  inwoners     = 2420,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7916';

UPDATE pc4_cbs SET
  inwoners     = 1325,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7917';

UPDATE pc4_cbs SET
  inwoners     = 1415,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 41.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7918';

UPDATE pc4_cbs SET
  inwoners     = 6885,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7921';

UPDATE pc4_cbs SET
  inwoners     = 1070,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 42.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7924';

UPDATE pc4_cbs SET
  inwoners     = 595,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7925';

UPDATE pc4_cbs SET
  inwoners     = 980,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 41.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7926';

UPDATE pc4_cbs SET
  inwoners     = 715,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7927';

UPDATE pc4_cbs SET
  inwoners     = 10,
  pct_vrouw    = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7928';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 54.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7929';

UPDATE pc4_cbs SET
  inwoners     = 785,
  pct_vrouw    = 51,
  cbs_leeftijd = 46,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7931';

UPDATE pc4_cbs SET
  inwoners     = 385,
  pct_vrouw    = 44.2,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7932';

UPDATE pc4_cbs SET
  inwoners     = 1670,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7933';

UPDATE pc4_cbs SET
  inwoners     = 640,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7934';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 50,
  cbs_leeftijd = 35.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7935';

UPDATE pc4_cbs SET
  inwoners     = 785,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7936';

UPDATE pc4_cbs SET
  inwoners     = 60,
  pct_vrouw    = 41.7,
  cbs_leeftijd = 53.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7937';

UPDATE pc4_cbs SET
  inwoners     = 965,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7938';

UPDATE pc4_cbs SET
  inwoners     = 6390,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 48,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7941';

UPDATE pc4_cbs SET
  inwoners     = 6235,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 39.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7942';

UPDATE pc4_cbs SET
  inwoners     = 8400,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7943';

UPDATE pc4_cbs SET
  inwoners     = 10445,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 40.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7944';

UPDATE pc4_cbs SET
  inwoners     = 1710,
  pct_vrouw    = 48,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7946';

UPDATE pc4_cbs SET
  inwoners     = 4040,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7948';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 44,
  cbs_leeftijd = 43,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7949';

UPDATE pc4_cbs SET
  inwoners     = 11160,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 37.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7951';

UPDATE pc4_cbs SET
  inwoners     = 4155,
  pct_vrouw    = 48,
  cbs_leeftijd = 34.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7954';

UPDATE pc4_cbs SET
  inwoners     = 1445,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 48.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7955';

UPDATE pc4_cbs SET
  inwoners     = 2995,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 47.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7957';

UPDATE pc4_cbs SET
  inwoners     = 2570,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7958';

UPDATE pc4_cbs SET
  inwoners     = 3955,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7961';

UPDATE pc4_cbs SET
  inwoners     = 3655,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 49.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7963';

UPDATE pc4_cbs SET
  inwoners     = 360,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7964';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7965';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 48,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7966';

UPDATE pc4_cbs SET
  inwoners     = 3700,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 49.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7971';

UPDATE pc4_cbs SET
  inwoners     = 735,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 46.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7973';

UPDATE pc4_cbs SET
  inwoners     = 195,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 48.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7974';

UPDATE pc4_cbs SET
  inwoners     = 1430,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7975';

UPDATE pc4_cbs SET
  inwoners     = 2650,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 50,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7981';

UPDATE pc4_cbs SET
  inwoners     = 665,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7983';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 46.7,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7984';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 40,
  cbs_leeftijd = 42.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7985';

UPDATE pc4_cbs SET
  inwoners     = 275,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 48.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7986';

UPDATE pc4_cbs SET
  inwoners     = 4185,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 47.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '7991';

UPDATE pc4_cbs SET
  inwoners     = 9115,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 40,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8011';

UPDATE pc4_cbs SET
  inwoners     = 7155,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 36.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8012';

UPDATE pc4_cbs SET
  inwoners     = 2585,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 40.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8013';

UPDATE pc4_cbs SET
  inwoners     = 12425,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8014';

UPDATE pc4_cbs SET
  inwoners     = 3100,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8015';

UPDATE pc4_cbs SET
  inwoners     = 7515,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8016';

UPDATE pc4_cbs SET
  inwoners     = 6880,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8017';

UPDATE pc4_cbs SET
  inwoners     = 2500,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 38.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8019';

UPDATE pc4_cbs SET
  inwoners     = 5900,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 40,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8021';

UPDATE pc4_cbs SET
  inwoners     = 5065,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 37.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8022';

UPDATE pc4_cbs SET
  inwoners     = 5745,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 40.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8023';

UPDATE pc4_cbs SET
  inwoners     = 4220,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8024';

UPDATE pc4_cbs SET
  inwoners     = 1440,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 40.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8025';

UPDATE pc4_cbs SET
  inwoners     = 985,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8026';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 42.6,
  cbs_leeftijd = 41.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8028';

UPDATE pc4_cbs SET
  inwoners     = 10045,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 39.3,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8031';

UPDATE pc4_cbs SET
  inwoners     = 10020,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 44.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8032';

UPDATE pc4_cbs SET
  inwoners     = 3345,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8033';

UPDATE pc4_cbs SET
  inwoners     = 715,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 48.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8034';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8035';

UPDATE pc4_cbs SET
  inwoners     = 370,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8041';

UPDATE pc4_cbs SET
  inwoners     = 5370,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8042';

UPDATE pc4_cbs SET
  inwoners     = 23005,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 36.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8043';

UPDATE pc4_cbs SET
  inwoners     = 5095,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 29.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8044';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 50,
  cbs_leeftijd = 55,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8045';

UPDATE pc4_cbs SET
  inwoners     = 10575,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8051';

UPDATE pc4_cbs SET
  inwoners     = 2050,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 38.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8052';

UPDATE pc4_cbs SET
  inwoners     = 665,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8055';

UPDATE pc4_cbs SET
  inwoners     = 7780,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8061';

UPDATE pc4_cbs SET
  inwoners     = 4995,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8064';

UPDATE pc4_cbs SET
  inwoners     = 590,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8066';

UPDATE pc4_cbs SET
  inwoners     = 13380,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 43.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8071';

UPDATE pc4_cbs SET
  inwoners     = 7880,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 40.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8072';

UPDATE pc4_cbs SET
  inwoners     = 5030,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 37.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8075';

UPDATE pc4_cbs SET
  inwoners     = 700,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 50.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8076';

UPDATE pc4_cbs SET
  inwoners     = 2080,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8077';

UPDATE pc4_cbs SET
  inwoners     = 240,
  pct_vrouw    = 50,
  cbs_leeftijd = 37.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8079';

UPDATE pc4_cbs SET
  inwoners     = 11695,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8081';

UPDATE pc4_cbs SET
  inwoners     = 915,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 31,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8082';

UPDATE pc4_cbs SET
  inwoners     = 7005,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8084';

UPDATE pc4_cbs SET
  inwoners     = 4295,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 40.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8085';

UPDATE pc4_cbs SET
  inwoners     = 12295,
  pct_vrouw    = 50,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8091';

UPDATE pc4_cbs SET
  inwoners     = 1500,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 41.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8094';

UPDATE pc4_cbs SET
  inwoners     = 1385,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8095';

UPDATE pc4_cbs SET
  inwoners     = 6455,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 41.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8096';

UPDATE pc4_cbs SET
  inwoners     = 2410,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 37.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8097';

UPDATE pc4_cbs SET
  inwoners     = 6250,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 45.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8101';

UPDATE pc4_cbs SET
  inwoners     = 7300,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 45.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8102';

UPDATE pc4_cbs SET
  inwoners     = 6445,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 40.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8103';

UPDATE pc4_cbs SET
  inwoners     = 2265,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8105';

UPDATE pc4_cbs SET
  inwoners     = 1490,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8106';

UPDATE pc4_cbs SET
  inwoners     = 1190,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8107';

UPDATE pc4_cbs SET
  inwoners     = 3780,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8111';

UPDATE pc4_cbs SET
  inwoners     = 1285,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8112';

UPDATE pc4_cbs SET
  inwoners     = 8380,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8121';

UPDATE pc4_cbs SET
  inwoners     = 1280,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 43.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8124';

UPDATE pc4_cbs SET
  inwoners     = 8480,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8131';

UPDATE pc4_cbs SET
  inwoners     = 7240,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 46.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8141';

UPDATE pc4_cbs SET
  inwoners     = 455,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8144';

UPDATE pc4_cbs SET
  inwoners     = 330,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8146';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 43.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8147';

UPDATE pc4_cbs SET
  inwoners     = 1535,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8148';

UPDATE pc4_cbs SET
  inwoners     = 1815,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8151';

UPDATE pc4_cbs SET
  inwoners     = 2735,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8152';

UPDATE pc4_cbs SET
  inwoners     = 155,
  pct_vrouw    = 54.8,
  cbs_leeftijd = 39.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8153';

UPDATE pc4_cbs SET
  inwoners     = 90,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 45.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8154';

UPDATE pc4_cbs SET
  inwoners     = 6415,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 47.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8161';

UPDATE pc4_cbs SET
  inwoners     = 9285,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 46.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8162';

UPDATE pc4_cbs SET
  inwoners     = 3220,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8166';

UPDATE pc4_cbs SET
  inwoners     = 1600,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8167';

UPDATE pc4_cbs SET
  inwoners     = 7855,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8171';

UPDATE pc4_cbs SET
  inwoners     = 4790,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 43,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8172';

UPDATE pc4_cbs SET
  inwoners     = 11960,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8181';

UPDATE pc4_cbs SET
  inwoners     = 6410,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8191';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 45.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8193';

UPDATE pc4_cbs SET
  inwoners     = 665,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8194';

UPDATE pc4_cbs SET
  inwoners     = 635,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8196';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8198';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 47.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8211';

UPDATE pc4_cbs SET
  inwoners     = 4570,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8212';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 43.5,
  cbs_leeftijd = 36,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8218';

UPDATE pc4_cbs SET
  inwoners     = 3545,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 38.4,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8219';

UPDATE pc4_cbs SET
  inwoners     = 200,
  pct_vrouw    = 50,
  cbs_leeftijd = 50.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8222';

UPDATE pc4_cbs SET
  inwoners     = 5570,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 37.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8223';

UPDATE pc4_cbs SET
  inwoners     = 7690,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8224';

UPDATE pc4_cbs SET
  inwoners     = 8070,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 40.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8225';

UPDATE pc4_cbs SET
  inwoners     = 9615,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 39.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8226';

UPDATE pc4_cbs SET
  inwoners     = 5405,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 39.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8231';

UPDATE pc4_cbs SET
  inwoners     = 7900,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 42.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8232';

UPDATE pc4_cbs SET
  inwoners     = 845,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 58.6,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8233';

UPDATE pc4_cbs SET
  inwoners     = 680,
  pct_vrouw    = 42.6,
  cbs_leeftijd = 29.4,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8239';

UPDATE pc4_cbs SET
  inwoners     = 1565,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 46.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8241';

UPDATE pc4_cbs SET
  inwoners     = 6510,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8242';

UPDATE pc4_cbs SET
  inwoners     = 9610,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 40.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8243';

UPDATE pc4_cbs SET
  inwoners     = 4215,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 42.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8244';

UPDATE pc4_cbs SET
  inwoners     = 7525,
  pct_vrouw    = 49,
  cbs_leeftijd = 36.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8245';

UPDATE pc4_cbs SET
  inwoners     = 13280,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 42.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8251';

UPDATE pc4_cbs SET
  inwoners     = 5810,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8252';

UPDATE pc4_cbs SET
  inwoners     = 10745,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 36.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8253';

UPDATE pc4_cbs SET
  inwoners     = 895,
  pct_vrouw    = 56.4,
  cbs_leeftijd = 59.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8254';

UPDATE pc4_cbs SET
  inwoners     = 6505,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 42.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8255';

UPDATE pc4_cbs SET
  inwoners     = 7120,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 42.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8256';

UPDATE pc4_cbs SET
  inwoners     = 5395,
  pct_vrouw    = 47,
  cbs_leeftijd = 42.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8261';

UPDATE pc4_cbs SET
  inwoners     = 6470,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 41.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8262';

UPDATE pc4_cbs SET
  inwoners     = 765,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 37.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8263';

UPDATE pc4_cbs SET
  inwoners     = 2060,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 48.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8264';

UPDATE pc4_cbs SET
  inwoners     = 15485,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 40.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8265';

UPDATE pc4_cbs SET
  inwoners     = 7740,
  pct_vrouw    = 50,
  cbs_leeftijd = 36.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8266';

UPDATE pc4_cbs SET
  inwoners     = 685,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 39.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8267';

UPDATE pc4_cbs SET
  inwoners     = 185,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 29.4,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8269';

UPDATE pc4_cbs SET
  inwoners     = 12765,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 39.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8271';

UPDATE pc4_cbs SET
  inwoners     = 885,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 40.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8274';

UPDATE pc4_cbs SET
  inwoners     = 655,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 40,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8275';

UPDATE pc4_cbs SET
  inwoners     = 860,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 40.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8276';

UPDATE pc4_cbs SET
  inwoners     = 1080,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 37.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8277';

UPDATE pc4_cbs SET
  inwoners     = 985,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 35.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8278';

UPDATE pc4_cbs SET
  inwoners     = 10495,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 37,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8281';

UPDATE pc4_cbs SET
  inwoners     = 5,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8291';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 43.3,
  cbs_leeftijd = 36.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8293';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 36.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8294';

UPDATE pc4_cbs SET
  inwoners     = 2045,
  pct_vrouw    = 54.3,
  cbs_leeftijd = 50.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8301';

UPDATE pc4_cbs SET
  inwoners     = 11585,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 40.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8302';

UPDATE pc4_cbs SET
  inwoners     = 9910,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 41,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8303';

UPDATE pc4_cbs SET
  inwoners     = 3445,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 43.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8304';

UPDATE pc4_cbs SET
  inwoners     = 365,
  pct_vrouw    = 45.2,
  cbs_leeftijd = 39.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8305';

UPDATE pc4_cbs SET
  inwoners     = 3335,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 40.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8307';

UPDATE pc4_cbs SET
  inwoners     = 1955,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8308';

UPDATE pc4_cbs SET
  inwoners     = 2520,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 34.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8309';

UPDATE pc4_cbs SET
  inwoners     = 1720,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 37,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8311';

UPDATE pc4_cbs SET
  inwoners     = 1780,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 39.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8312';

UPDATE pc4_cbs SET
  inwoners     = 1715,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8313';

UPDATE pc4_cbs SET
  inwoners     = 1660,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 38.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8314';

UPDATE pc4_cbs SET
  inwoners     = 2455,
  pct_vrouw    = 44.8,
  cbs_leeftijd = 37.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8315';

UPDATE pc4_cbs SET
  inwoners     = 3955,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8316';

UPDATE pc4_cbs SET
  inwoners     = 1580,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8317';

UPDATE pc4_cbs SET
  inwoners     = 13680,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 35.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8321';

UPDATE pc4_cbs SET
  inwoners     = 8275,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 29.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8322';

UPDATE pc4_cbs SET
  inwoners     = 5,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8323';

UPDATE pc4_cbs SET
  inwoners     = 4390,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8325';

UPDATE pc4_cbs SET
  inwoners     = 2565,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 40.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8326';

UPDATE pc4_cbs SET
  inwoners     = 10350,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46.1,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8331';

UPDATE pc4_cbs SET
  inwoners     = 6155,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8332';

UPDATE pc4_cbs SET
  inwoners     = 1005,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 35.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8333';

UPDATE pc4_cbs SET
  inwoners     = 2175,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8334';

UPDATE pc4_cbs SET
  inwoners     = 220,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 44.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8335';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8336';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 45.1,
  cbs_leeftijd = 44.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8337';

UPDATE pc4_cbs SET
  inwoners     = 900,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8338';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 43.6,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8339';

UPDATE pc4_cbs SET
  inwoners     = 1880,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 45.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8341';

UPDATE pc4_cbs SET
  inwoners     = 260,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8342';

UPDATE pc4_cbs SET
  inwoners     = 610,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8343';

UPDATE pc4_cbs SET
  inwoners     = 320,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8344';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8345';

UPDATE pc4_cbs SET
  inwoners     = 490,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 46.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8346';

UPDATE pc4_cbs SET
  inwoners     = 595,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8347';

UPDATE pc4_cbs SET
  inwoners     = 830,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 45.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8351';

UPDATE pc4_cbs SET
  inwoners     = 2890,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 46.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8355';

UPDATE pc4_cbs SET
  inwoners     = 1360,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8356';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 41.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8361';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 60,
  cbs_leeftijd = 48.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8362';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 55.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8363';

UPDATE pc4_cbs SET
  inwoners     = 625,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8371';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 48.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8372';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8373';

UPDATE pc4_cbs SET
  inwoners     = 930,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 42.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8374';

UPDATE pc4_cbs SET
  inwoners     = 2705,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8375';

UPDATE pc4_cbs SET
  inwoners     = 560,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 48.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8376';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 53.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8377';

UPDATE pc4_cbs SET
  inwoners     = 395,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 47.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8378';

UPDATE pc4_cbs SET
  inwoners     = 2090,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 51.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8381';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 50,
  cbs_leeftijd = 54.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8382';

UPDATE pc4_cbs SET
  inwoners     = 510,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8383';

UPDATE pc4_cbs SET
  inwoners     = 950,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 48.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8384';

UPDATE pc4_cbs SET
  inwoners     = 365,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 50.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8385';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 58,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8386';

UPDATE pc4_cbs SET
  inwoners     = 220,
  pct_vrouw    = 20.5,
  cbs_leeftijd = 42.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8387';

UPDATE pc4_cbs SET
  inwoners     = 570,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8388';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 47.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8389';

UPDATE pc4_cbs SET
  inwoners     = 3645,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 46.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8391';

UPDATE pc4_cbs SET
  inwoners     = 865,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 46.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8392';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 47.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8393';

UPDATE pc4_cbs SET
  inwoners     = 390,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8394';

UPDATE pc4_cbs SET
  inwoners     = 1025,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 46.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8395';

UPDATE pc4_cbs SET
  inwoners     = 90,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8396';

UPDATE pc4_cbs SET
  inwoners     = 805,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8397';

UPDATE pc4_cbs SET
  inwoners     = 500,
  pct_vrouw    = 51,
  cbs_leeftijd = 42.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8398';

UPDATE pc4_cbs SET
  inwoners     = 7525,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8401';

UPDATE pc4_cbs SET
  inwoners     = 265,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8403';

UPDATE pc4_cbs SET
  inwoners     = 1060,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8404';

UPDATE pc4_cbs SET
  inwoners     = 435,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 41.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8405';

UPDATE pc4_cbs SET
  inwoners     = 1615,
  pct_vrouw    = 48,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8406';

UPDATE pc4_cbs SET
  inwoners     = 1010,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8407';

UPDATE pc4_cbs SET
  inwoners     = 1310,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8408';

UPDATE pc4_cbs SET
  inwoners     = 745,
  pct_vrouw    = 49,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8409';

UPDATE pc4_cbs SET
  inwoners     = 3210,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8411';

UPDATE pc4_cbs SET
  inwoners     = 820,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 45.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8412';

UPDATE pc4_cbs SET
  inwoners     = 845,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 46.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8413';

UPDATE pc4_cbs SET
  inwoners     = 1470,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 47.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8414';

UPDATE pc4_cbs SET
  inwoners     = 410,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 49.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8415';

UPDATE pc4_cbs SET
  inwoners     = 1505,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8421';

UPDATE pc4_cbs SET
  inwoners     = 265,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 46.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8422';

UPDATE pc4_cbs SET
  inwoners     = 1035,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8423';

UPDATE pc4_cbs SET
  inwoners     = 680,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8424';

UPDATE pc4_cbs SET
  inwoners     = 330,
  pct_vrouw    = 53,
  cbs_leeftijd = 46.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8425';

UPDATE pc4_cbs SET
  inwoners     = 4940,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 47.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8426';

UPDATE pc4_cbs SET
  inwoners     = 405,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 48.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8427';

UPDATE pc4_cbs SET
  inwoners     = 365,
  pct_vrouw    = 42.5,
  cbs_leeftijd = 49.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8428';

UPDATE pc4_cbs SET
  inwoners     = 9780,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8431';

UPDATE pc4_cbs SET
  inwoners     = 580,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8432';

UPDATE pc4_cbs SET
  inwoners     = 3190,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8433';

UPDATE pc4_cbs SET
  inwoners     = 835,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 43.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8434';

UPDATE pc4_cbs SET
  inwoners     = 1920,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8435';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 53,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8437';

UPDATE pc4_cbs SET
  inwoners     = 140,
  pct_vrouw    = 50,
  cbs_leeftijd = 52.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8438';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 58.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8439';

UPDATE pc4_cbs SET
  inwoners     = 4775,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8441';

UPDATE pc4_cbs SET
  inwoners     = 5845,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 46.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8442';

UPDATE pc4_cbs SET
  inwoners     = 2860,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 46.4,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8443';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 60.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8444';

UPDATE pc4_cbs SET
  inwoners     = 1445,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 52.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8445';

UPDATE pc4_cbs SET
  inwoners     = 7310,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 43.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8446';

UPDATE pc4_cbs SET
  inwoners     = 3245,
  pct_vrouw    = 49,
  cbs_leeftijd = 41.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8447';

UPDATE pc4_cbs SET
  inwoners     = 6000,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 36.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8448';

UPDATE pc4_cbs SET
  inwoners     = 265,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 46.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8449';

UPDATE pc4_cbs SET
  inwoners     = 1395,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8451';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 50,
  cbs_leeftijd = 48,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8452';

UPDATE pc4_cbs SET
  inwoners     = 980,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 46.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8453';

UPDATE pc4_cbs SET
  inwoners     = 685,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 49.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8454';

UPDATE pc4_cbs SET
  inwoners     = 615,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8455';

UPDATE pc4_cbs SET
  inwoners     = 1285,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8456';

UPDATE pc4_cbs SET
  inwoners     = 295,
  pct_vrouw    = 45.8,
  cbs_leeftijd = 43.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8457';

UPDATE pc4_cbs SET
  inwoners     = 850,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 41.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8458';

UPDATE pc4_cbs SET
  inwoners     = 425,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8459';

UPDATE pc4_cbs SET
  inwoners     = 765,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 42.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8461';

UPDATE pc4_cbs SET
  inwoners     = 180,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 47.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8462';

UPDATE pc4_cbs SET
  inwoners     = 585,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8463';

UPDATE pc4_cbs SET
  inwoners     = 1240,
  pct_vrouw    = 48,
  cbs_leeftijd = 42.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8464';

UPDATE pc4_cbs SET
  inwoners     = 1855,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8465';

UPDATE pc4_cbs SET
  inwoners     = 50,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8466';

UPDATE pc4_cbs SET
  inwoners     = 385,
  pct_vrouw    = 44.2,
  cbs_leeftijd = 44.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8467';

UPDATE pc4_cbs SET
  inwoners     = 375,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 46.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8468';

UPDATE pc4_cbs SET
  inwoners     = 160,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8469';

UPDATE pc4_cbs SET
  inwoners     = 11205,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 45.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8471';

UPDATE pc4_cbs SET
  inwoners     = 2190,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 38.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8472';

UPDATE pc4_cbs SET
  inwoners     = 1095,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8474';

UPDATE pc4_cbs SET
  inwoners     = 535,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 42.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8475';

UPDATE pc4_cbs SET
  inwoners     = 320,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 45.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8476';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 44.8,
  cbs_leeftijd = 42.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8477';

UPDATE pc4_cbs SET
  inwoners     = 240,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 44,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8478';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8479';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 50,
  cbs_leeftijd = 49.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8481';

UPDATE pc4_cbs SET
  inwoners     = 210,
  pct_vrouw    = 45.2,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8482';

UPDATE pc4_cbs SET
  inwoners     = 445,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8483';

UPDATE pc4_cbs SET
  inwoners     = 275,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 43.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8484';

UPDATE pc4_cbs SET
  inwoners     = 465,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8485';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 43.5,
  cbs_leeftijd = 41.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8486';

UPDATE pc4_cbs SET
  inwoners     = 140,
  pct_vrouw    = 57.1,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8487';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 45.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8488';

UPDATE pc4_cbs SET
  inwoners     = 35,
  pct_vrouw    = 57.1,
  cbs_leeftijd = 59,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8489';

UPDATE pc4_cbs SET
  inwoners     = 3325,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 46.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8491';

UPDATE pc4_cbs SET
  inwoners     = 720,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 50.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8493';

UPDATE pc4_cbs SET
  inwoners     = 975,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.5,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8494';

UPDATE pc4_cbs SET
  inwoners     = 1505,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 43.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8495';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 36.4,
  cbs_leeftijd = 42.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8497';

UPDATE pc4_cbs SET
  inwoners     = 9660,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 46.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8501';

UPDATE pc4_cbs SET
  inwoners     = 3240,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8502';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 38.5,
  cbs_leeftijd = 39.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8503';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 43.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8505';

UPDATE pc4_cbs SET
  inwoners     = 535,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8506';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 45.8,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8507';

UPDATE pc4_cbs SET
  inwoners     = 515,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8508';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 53,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8511';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 48.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8512';

UPDATE pc4_cbs SET
  inwoners     = 360,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 38.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8513';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 41.2,
  cbs_leeftijd = 43.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8514';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 39.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8515';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 39.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8516';

UPDATE pc4_cbs SET
  inwoners     = 785,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8517';

UPDATE pc4_cbs SET
  inwoners     = 3335,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8521';

UPDATE pc4_cbs SET
  inwoners     = 350,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 40.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8522';

UPDATE pc4_cbs SET
  inwoners     = 490,
  pct_vrouw    = 48,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8523';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8524';

UPDATE pc4_cbs SET
  inwoners     = 1045,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8525';

UPDATE pc4_cbs SET
  inwoners     = 95,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8526';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 35,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8527';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8528';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8529';

UPDATE pc4_cbs SET
  inwoners     = 8320,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8531';

UPDATE pc4_cbs SET
  inwoners     = 2030,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.6,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8532';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 54.5,
  cbs_leeftijd = 54,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8534';

UPDATE pc4_cbs SET
  inwoners     = 185,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 38.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8535';

UPDATE pc4_cbs SET
  inwoners     = 885,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8536';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8537';

UPDATE pc4_cbs SET
  inwoners     = 675,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 40.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8538';

UPDATE pc4_cbs SET
  inwoners     = 1010,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8539';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 49.5,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8541';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8542';

UPDATE pc4_cbs SET
  inwoners     = 1390,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8551';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 50,
  cbs_leeftijd = 24.8,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8552';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 55.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8553';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 35.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8554';

UPDATE pc4_cbs SET
  inwoners     = 695,
  pct_vrouw    = 45.3,
  cbs_leeftijd = 48,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8556';

UPDATE pc4_cbs SET
  inwoners     = 4335,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8561';

UPDATE pc4_cbs SET
  inwoners     = 645,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8563';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 50,
  cbs_leeftijd = 50.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8564';

UPDATE pc4_cbs SET
  inwoners     = 405,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 43.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8565';

UPDATE pc4_cbs SET
  inwoners     = 565,
  pct_vrouw    = 46,
  cbs_leeftijd = 44,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8566';

UPDATE pc4_cbs SET
  inwoners     = 1380,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8567';

UPDATE pc4_cbs SET
  inwoners     = 520,
  pct_vrouw    = 51,
  cbs_leeftijd = 45.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8571';

UPDATE pc4_cbs SET
  inwoners     = 180,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 46.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8572';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 45.8,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8573';

UPDATE pc4_cbs SET
  inwoners     = 1030,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 45.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8574';

UPDATE pc4_cbs SET
  inwoners     = 355,
  pct_vrouw    = 45.1,
  cbs_leeftijd = 45.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8581';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8582';

UPDATE pc4_cbs SET
  inwoners     = 40,
  pct_vrouw    = 50,
  cbs_leeftijd = 61.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8583';

UPDATE pc4_cbs SET
  inwoners     = 570,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8584';

UPDATE pc4_cbs SET
  inwoners     = 3340,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 46.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8601';

UPDATE pc4_cbs SET
  inwoners     = 4800,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 40.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8602';

UPDATE pc4_cbs SET
  inwoners     = 5210,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 41.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8603';

UPDATE pc4_cbs SET
  inwoners     = 5215,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8604';

UPDATE pc4_cbs SET
  inwoners     = 2020,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 53.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8605';

UPDATE pc4_cbs SET
  inwoners     = 2780,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8606';

UPDATE pc4_cbs SET
  inwoners     = 5825,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 41.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8607';

UPDATE pc4_cbs SET
  inwoners     = 4845,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8608';

UPDATE pc4_cbs SET
  inwoners     = 270,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8611';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 40,
  cbs_leeftijd = 37,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8612';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 50,
  cbs_leeftijd = 41,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8613';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 43.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8614';

UPDATE pc4_cbs SET
  inwoners     = 605,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8615';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 45.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8616';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 42.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8617';

UPDATE pc4_cbs SET
  inwoners     = 440,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 49.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8618';

UPDATE pc4_cbs SET
  inwoners     = 2405,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 44.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8621';

UPDATE pc4_cbs SET
  inwoners     = 625,
  pct_vrouw    = 45.6,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8622';

UPDATE pc4_cbs SET
  inwoners     = 320,
  pct_vrouw    = 45.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8623';

UPDATE pc4_cbs SET
  inwoners     = 385,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 49.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8624';

UPDATE pc4_cbs SET
  inwoners     = 1045,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 47.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8625';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 52,
  cbs_leeftijd = 54.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8626';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8627';

UPDATE pc4_cbs SET
  inwoners     = 250,
  pct_vrouw    = 48,
  cbs_leeftijd = 45.5,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8628';

UPDATE pc4_cbs SET
  inwoners     = 1565,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8629';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 34.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8631';

UPDATE pc4_cbs SET
  inwoners     = 195,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 42.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8632';

UPDATE pc4_cbs SET
  inwoners     = 635,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 47.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8633';

UPDATE pc4_cbs SET
  inwoners     = 395,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8635';

UPDATE pc4_cbs SET
  inwoners     = 95,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 43.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8636';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8637';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 50.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8641';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 39.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8642';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 48.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8644';

UPDATE pc4_cbs SET
  inwoners     = 330,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8647';

UPDATE pc4_cbs SET
  inwoners     = 2975,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8651';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 56.3,
  cbs_leeftijd = 36.7,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8658';

UPDATE pc4_cbs SET
  inwoners     = 8115,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 44.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8701';

UPDATE pc4_cbs SET
  inwoners     = 1990,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8702';

UPDATE pc4_cbs SET
  inwoners     = 4675,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8711';

UPDATE pc4_cbs SET
  inwoners     = 855,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 46.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8713';

UPDATE pc4_cbs SET
  inwoners     = 950,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 47.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8715';

UPDATE pc4_cbs SET
  inwoners     = 785,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8721';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8722';

UPDATE pc4_cbs SET
  inwoners     = 2770,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8723';

UPDATE pc4_cbs SET
  inwoners     = 330,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8724';

UPDATE pc4_cbs SET
  inwoners     = 2380,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8731';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 46.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8732';

UPDATE pc4_cbs SET
  inwoners     = 50,
  pct_vrouw    = 50,
  cbs_leeftijd = 55.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8733';

UPDATE pc4_cbs SET
  inwoners     = 880,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8734';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8735';

UPDATE pc4_cbs SET
  inwoners     = 195,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 36.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8736';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 44,
  cbs_leeftijd = 37.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8737';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 48.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8741';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8742';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 42.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8743';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 46.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8744';

UPDATE pc4_cbs SET
  inwoners     = 50,
  pct_vrouw    = 40,
  cbs_leeftijd = 51.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8745';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 48.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8746';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8747';

UPDATE pc4_cbs SET
  inwoners     = 1800,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8748';

UPDATE pc4_cbs SET
  inwoners     = 600,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8749';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 42.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8751';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 50,
  cbs_leeftijd = 75,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8752';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8753';

UPDATE pc4_cbs SET
  inwoners     = 3400,
  pct_vrouw    = 49,
  cbs_leeftijd = 47,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8754';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 43.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8755';

UPDATE pc4_cbs SET
  inwoners     = 50,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8756';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 48.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8757';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8758';

UPDATE pc4_cbs SET
  inwoners     = 440,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8759';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 39.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8761';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 42.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8762';

UPDATE pc4_cbs SET
  inwoners     = 480,
  pct_vrouw    = 49,
  cbs_leeftijd = 42.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8763';

UPDATE pc4_cbs SET
  inwoners     = 95,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8764';

UPDATE pc4_cbs SET
  inwoners     = 440,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 41.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8765';

UPDATE pc4_cbs SET
  inwoners     = 965,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8771';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 50,
  cbs_leeftijd = 55,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8772';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8773';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 44.8,
  cbs_leeftijd = 37.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8774';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 41.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8775';

UPDATE pc4_cbs SET
  inwoners     = 7030,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8801';

UPDATE pc4_cbs SET
  inwoners     = 6020,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8802';

UPDATE pc4_cbs SET
  inwoners     = 1115,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8804';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 48.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8805';

UPDATE pc4_cbs SET
  inwoners     = 580,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8806';

UPDATE pc4_cbs SET
  inwoners     = 310,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8807';

UPDATE pc4_cbs SET
  inwoners     = 375,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8808';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8809';

UPDATE pc4_cbs SET
  inwoners     = 425,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8811';

UPDATE pc4_cbs SET
  inwoners     = 250,
  pct_vrouw    = 44,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8812';

UPDATE pc4_cbs SET
  inwoners     = 135,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8813';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 40,
  cbs_leeftijd = 40.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8814';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 46,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8816';

UPDATE pc4_cbs SET
  inwoners     = 540,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 50,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8821';

UPDATE pc4_cbs SET
  inwoners     = 1020,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 42.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8822';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8823';

UPDATE pc4_cbs SET
  inwoners     = 1065,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8831';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 45,
  cbs_leeftijd = 45.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8832';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 60,
  cbs_leeftijd = 37.5,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8833';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8834';

UPDATE pc4_cbs SET
  inwoners     = 425,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8835';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 47.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8841';

UPDATE pc4_cbs SET
  inwoners     = 445,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8842';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8843';

UPDATE pc4_cbs SET
  inwoners     = 60,
  pct_vrouw    = 50,
  cbs_leeftijd = 36.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8844';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 44.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8845';

UPDATE pc4_cbs SET
  inwoners     = 1400,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8851';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8852';

UPDATE pc4_cbs SET
  inwoners     = 40,
  pct_vrouw    = 50,
  cbs_leeftijd = 40.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8853';

UPDATE pc4_cbs SET
  inwoners     = 545,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 40.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8854';

UPDATE pc4_cbs SET
  inwoners     = 1735,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 42.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8855';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 46.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8856';

UPDATE pc4_cbs SET
  inwoners     = 485,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 45.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8857';

UPDATE pc4_cbs SET
  inwoners     = 6550,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 50.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8861';

UPDATE pc4_cbs SET
  inwoners     = 8600,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 42.5,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8862';

UPDATE pc4_cbs SET
  inwoners     = 10,
  pct_vrouw    = 50,
  cbs_leeftijd = 75,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8871';

UPDATE pc4_cbs SET
  inwoners     = 580,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8872';

UPDATE pc4_cbs SET
  inwoners     = 2550,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 44.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8881';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.3,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8882';

UPDATE pc4_cbs SET
  inwoners     = 10,
  pct_vrouw    = 50,
  cbs_leeftijd = 65,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8883';

UPDATE pc4_cbs SET
  inwoners     = 135,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8884';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 50,
  cbs_leeftijd = 35.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8885';

UPDATE pc4_cbs SET
  inwoners     = 1005,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 46.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8891';

UPDATE pc4_cbs SET
  inwoners     = 20,
  pct_vrouw    = 50,
  cbs_leeftijd = 65,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8892';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 50,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8893';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 51,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8894';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 50.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8895';

UPDATE pc4_cbs SET
  inwoners     = 470,
  pct_vrouw    = 53.2,
  cbs_leeftijd = 45.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8896';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 50,
  cbs_leeftijd = 41.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8897';

UPDATE pc4_cbs SET
  inwoners     = 1255,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 45.2,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8899';

UPDATE pc4_cbs SET
  inwoners     = 6845,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 35.3,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8911';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 41.8,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8912';

UPDATE pc4_cbs SET
  inwoners     = 4460,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 40.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8913';

UPDATE pc4_cbs SET
  inwoners     = 715,
  pct_vrouw    = 49,
  cbs_leeftijd = 38.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8914';

UPDATE pc4_cbs SET
  inwoners     = 5220,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 41.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8915';

UPDATE pc4_cbs SET
  inwoners     = 3175,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 41.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8916';

UPDATE pc4_cbs SET
  inwoners     = 3635,
  pct_vrouw    = 53.6,
  cbs_leeftijd = 39,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8917';

UPDATE pc4_cbs SET
  inwoners     = 6180,
  pct_vrouw    = 53.6,
  cbs_leeftijd = 44.1,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8918';

UPDATE pc4_cbs SET
  inwoners     = 795,
  pct_vrouw    = 45.9,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8919';

UPDATE pc4_cbs SET
  inwoners     = 9105,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 39.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8921';

UPDATE pc4_cbs SET
  inwoners     = 3305,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 38.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8922';

UPDATE pc4_cbs SET
  inwoners     = 3630,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 41.3,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8923';

UPDATE pc4_cbs SET
  inwoners     = 3630,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 36.5,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8924';

UPDATE pc4_cbs SET
  inwoners     = 5175,
  pct_vrouw    = 51,
  cbs_leeftijd = 48.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8925';

UPDATE pc4_cbs SET
  inwoners     = 5200,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 40.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8926';

UPDATE pc4_cbs SET
  inwoners     = 1245,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 37.8,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8927';

UPDATE pc4_cbs SET
  inwoners     = 3975,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 44.2,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8931';

UPDATE pc4_cbs SET
  inwoners     = 7100,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 41.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8932';

UPDATE pc4_cbs SET
  inwoners     = 4090,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 39.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8933';

UPDATE pc4_cbs SET
  inwoners     = 2060,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 45.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8934';

UPDATE pc4_cbs SET
  inwoners     = 6685,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 46.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8935';

UPDATE pc4_cbs SET
  inwoners     = 710,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 35.1,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8936';

UPDATE pc4_cbs SET
  inwoners     = 925,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 38.3,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8937';

UPDATE pc4_cbs SET
  inwoners     = 300,
  pct_vrouw    = 50,
  cbs_leeftijd = 39.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8938';

UPDATE pc4_cbs SET
  inwoners     = 5480,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 39.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8939';

UPDATE pc4_cbs SET
  inwoners     = 4005,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 29.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '8941';

UPDATE pc4_cbs SET
  inwoners     = 5715,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 46.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9001';

UPDATE pc4_cbs SET
  inwoners     = 905,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9003';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 33.3,
  cbs_leeftijd = 49.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9004';

UPDATE pc4_cbs SET
  inwoners     = 1890,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9005';

UPDATE pc4_cbs SET
  inwoners     = 35,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 37.8,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9006';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.7,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9007';

UPDATE pc4_cbs SET
  inwoners     = 1080,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9008';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 41.2,
  cbs_leeftijd = 37.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9009';

UPDATE pc4_cbs SET
  inwoners     = 1400,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 41.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9011';

UPDATE pc4_cbs SET
  inwoners     = 640,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 42.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9012';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9013';

UPDATE pc4_cbs SET
  inwoners     = 330,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9014';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 44.8,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9021';

UPDATE pc4_cbs SET
  inwoners     = 1130,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9022';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9023';

UPDATE pc4_cbs SET
  inwoners     = 540,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 46.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9024';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 48,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9025';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 46.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9026';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 42.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9027';

UPDATE pc4_cbs SET
  inwoners     = 400,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 45.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9031';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 50,
  cbs_leeftijd = 52,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9032';

UPDATE pc4_cbs SET
  inwoners     = 1045,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9033';

UPDATE pc4_cbs SET
  inwoners     = 1045,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9034';

UPDATE pc4_cbs SET
  inwoners     = 3305,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9035';

UPDATE pc4_cbs SET
  inwoners     = 2830,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9036';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9037';

UPDATE pc4_cbs SET
  inwoners     = 360,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9038';

UPDATE pc4_cbs SET
  inwoners     = 2685,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 40.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9041';

UPDATE pc4_cbs SET
  inwoners     = 195,
  pct_vrouw    = 43.6,
  cbs_leeftijd = 48.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9043';

UPDATE pc4_cbs SET
  inwoners     = 745,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9044';

UPDATE pc4_cbs SET
  inwoners     = 915,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9045';

UPDATE pc4_cbs SET
  inwoners     = 1820,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9047';

UPDATE pc4_cbs SET
  inwoners     = 7805,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9051';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 49.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9053';

UPDATE pc4_cbs SET
  inwoners     = 420,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9054';

UPDATE pc4_cbs SET
  inwoners     = 955,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9055';

UPDATE pc4_cbs SET
  inwoners     = 430,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9056';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 46.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9057';

UPDATE pc4_cbs SET
  inwoners     = 2280,
  pct_vrouw    = 50,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9061';

UPDATE pc4_cbs SET
  inwoners     = 1965,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 45.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9062';

UPDATE pc4_cbs SET
  inwoners     = 760,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9063';

UPDATE pc4_cbs SET
  inwoners     = 700,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9064';

UPDATE pc4_cbs SET
  inwoners     = 185,
  pct_vrouw    = 54.1,
  cbs_leeftijd = 45.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9067';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 47.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9071';

UPDATE pc4_cbs SET
  inwoners     = 315,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 40.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9072';

UPDATE pc4_cbs SET
  inwoners     = 1380,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9073';

UPDATE pc4_cbs SET
  inwoners     = 2670,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 41.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9074';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 48.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9075';

UPDATE pc4_cbs SET
  inwoners     = 4960,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9076';

UPDATE pc4_cbs SET
  inwoners     = 705,
  pct_vrouw    = 46.1,
  cbs_leeftijd = 41.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9077';

UPDATE pc4_cbs SET
  inwoners     = 940,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9078';

UPDATE pc4_cbs SET
  inwoners     = 1695,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9079';

UPDATE pc4_cbs SET
  inwoners     = 430,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9081';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9082';

UPDATE pc4_cbs SET
  inwoners     = 200,
  pct_vrouw    = 50,
  cbs_leeftijd = 49.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9083';

UPDATE pc4_cbs SET
  inwoners     = 3350,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 42.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9084';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 33.3,
  cbs_leeftijd = 75,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9085';

UPDATE pc4_cbs SET
  inwoners     = 275,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 40.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9086';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 40.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9087';

UPDATE pc4_cbs SET
  inwoners     = 1170,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9088';

UPDATE pc4_cbs SET
  inwoners     = 610,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9089';

UPDATE pc4_cbs SET
  inwoners     = 260,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9091';

UPDATE pc4_cbs SET
  inwoners     = 9425,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 44.5,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9101';

UPDATE pc4_cbs SET
  inwoners     = 1045,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9102';

UPDATE pc4_cbs SET
  inwoners     = 2570,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9103';

UPDATE pc4_cbs SET
  inwoners     = 5670,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9104';

UPDATE pc4_cbs SET
  inwoners     = 1100,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 41.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9105';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 53.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9106';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 54.5,
  cbs_leeftijd = 41.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9107';

UPDATE pc4_cbs SET
  inwoners     = 1210,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 41.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9108';

UPDATE pc4_cbs SET
  inwoners     = 250,
  pct_vrouw    = 48,
  cbs_leeftijd = 42,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9109';

UPDATE pc4_cbs SET
  inwoners     = 495,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 42,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9111';

UPDATE pc4_cbs SET
  inwoners     = 680,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 47.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9112';

UPDATE pc4_cbs SET
  inwoners     = 975,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 41.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9113';

UPDATE pc4_cbs SET
  inwoners     = 945,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 40.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9114';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 49.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9121';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 54.5,
  cbs_leeftijd = 43.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9122';

UPDATE pc4_cbs SET
  inwoners     = 860,
  pct_vrouw    = 53.5,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9123';

UPDATE pc4_cbs SET
  inwoners     = 40,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9124';

UPDATE pc4_cbs SET
  inwoners     = 180,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9125';

UPDATE pc4_cbs SET
  inwoners     = 830,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 43.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9131';

UPDATE pc4_cbs SET
  inwoners     = 570,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9132';

UPDATE pc4_cbs SET
  inwoners     = 1160,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 40.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9133';

UPDATE pc4_cbs SET
  inwoners     = 390,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9134';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 44.7,
  cbs_leeftijd = 43,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9135';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 43.9,
  cbs_leeftijd = 46.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9136';

UPDATE pc4_cbs SET
  inwoners     = 925,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 40.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9137';

UPDATE pc4_cbs SET
  inwoners     = 370,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9138';

UPDATE pc4_cbs SET
  inwoners     = 300,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 48.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9141';

UPDATE pc4_cbs SET
  inwoners     = 215,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9142';

UPDATE pc4_cbs SET
  inwoners     = 370,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9143';

UPDATE pc4_cbs SET
  inwoners     = 220,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9144';

UPDATE pc4_cbs SET
  inwoners     = 1320,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9145';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 38.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9146';

UPDATE pc4_cbs SET
  inwoners     = 390,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 41.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9147';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9148';

UPDATE pc4_cbs SET
  inwoners     = 1590,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9151';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 48.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9152';

UPDATE pc4_cbs SET
  inwoners     = 240,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9153';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9154';

UPDATE pc4_cbs SET
  inwoners     = 215,
  pct_vrouw    = 46.5,
  cbs_leeftijd = 40.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9155';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 44,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9156';

UPDATE pc4_cbs SET
  inwoners     = 1295,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 46.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9161';

UPDATE pc4_cbs SET
  inwoners     = 495,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9162';

UPDATE pc4_cbs SET
  inwoners     = 1285,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9163';

UPDATE pc4_cbs SET
  inwoners     = 760,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 41.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9164';

UPDATE pc4_cbs SET
  inwoners     = 970,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 49.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9166';

UPDATE pc4_cbs SET
  inwoners     = 835,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 42.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9171';

UPDATE pc4_cbs SET
  inwoners     = 1825,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 45.4,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9172';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 50.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9173';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 46.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9174';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9175';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 53.8,
  cbs_leeftijd = 46.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9176';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 38.5,
  cbs_leeftijd = 42.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9177';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 41.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9178';

UPDATE pc4_cbs SET
  inwoners     = 8185,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9201';

UPDATE pc4_cbs SET
  inwoners     = 8180,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 41.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9202';

UPDATE pc4_cbs SET
  inwoners     = 9810,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 49.2,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9203';

UPDATE pc4_cbs SET
  inwoners     = 8500,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9204';

UPDATE pc4_cbs SET
  inwoners     = 4600,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 41.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9205';

UPDATE pc4_cbs SET
  inwoners     = 60,
  pct_vrouw    = 41.7,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9206';

UPDATE pc4_cbs SET
  inwoners     = 6450,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 40.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9207';

UPDATE pc4_cbs SET
  inwoners     = 195,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 43.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9211';

UPDATE pc4_cbs SET
  inwoners     = 1825,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 41.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9212';

UPDATE pc4_cbs SET
  inwoners     = 630,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 54.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9213';

UPDATE pc4_cbs SET
  inwoners     = 50,
  pct_vrouw    = 50,
  cbs_leeftijd = 57.5,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9214';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9215';

UPDATE pc4_cbs SET
  inwoners     = 1665,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9216';

UPDATE pc4_cbs SET
  inwoners     = 455,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 43.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9217';

UPDATE pc4_cbs SET
  inwoners     = 1790,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9218';

UPDATE pc4_cbs SET
  inwoners     = 340,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 42.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9219';

UPDATE pc4_cbs SET
  inwoners     = 1420,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9221';

UPDATE pc4_cbs SET
  inwoners     = 1260,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9222';

UPDATE pc4_cbs SET
  inwoners     = 940,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9223';

UPDATE pc4_cbs SET
  inwoners     = 6130,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 44.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9231';

UPDATE pc4_cbs SET
  inwoners     = 1210,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 42.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9233';

UPDATE pc4_cbs SET
  inwoners     = 2105,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9241';

UPDATE pc4_cbs SET
  inwoners     = 1915,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9243';

UPDATE pc4_cbs SET
  inwoners     = 3650,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 49.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9244';

UPDATE pc4_cbs SET
  inwoners     = 1640,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9245';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 50,
  cbs_leeftijd = 49.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9246';

UPDATE pc4_cbs SET
  inwoners     = 4900,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9247';

UPDATE pc4_cbs SET
  inwoners     = 835,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 43.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9248';

UPDATE pc4_cbs SET
  inwoners     = 990,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 40.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9249';

UPDATE pc4_cbs SET
  inwoners     = 10090,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9251';

UPDATE pc4_cbs SET
  inwoners     = 5080,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9254';

UPDATE pc4_cbs SET
  inwoners     = 1620,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 43.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9255';

UPDATE pc4_cbs SET
  inwoners     = 765,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9256';

UPDATE pc4_cbs SET
  inwoners     = 2290,
  pct_vrouw    = 48,
  cbs_leeftijd = 42.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9257';

UPDATE pc4_cbs SET
  inwoners     = 940,
  pct_vrouw    = 50,
  cbs_leeftijd = 40.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9258';

UPDATE pc4_cbs SET
  inwoners     = 1575,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 43.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9261';

UPDATE pc4_cbs SET
  inwoners     = 1365,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9262';

UPDATE pc4_cbs SET
  inwoners     = 1875,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 43.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9263';

UPDATE pc4_cbs SET
  inwoners     = 395,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 45,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9264';

UPDATE pc4_cbs SET
  inwoners     = 635,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 40.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9265';

UPDATE pc4_cbs SET
  inwoners     = 3595,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9269';

UPDATE pc4_cbs SET
  inwoners     = 5170,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 44.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9271';

UPDATE pc4_cbs SET
  inwoners     = 4330,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 41.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9281';

UPDATE pc4_cbs SET
  inwoners     = 1215,
  pct_vrouw    = 46.1,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9283';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 41.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9284';

UPDATE pc4_cbs SET
  inwoners     = 5940,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 43.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9285';

UPDATE pc4_cbs SET
  inwoners     = 1120,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 41.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9286';

UPDATE pc4_cbs SET
  inwoners     = 1815,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 41.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9287';

UPDATE pc4_cbs SET
  inwoners     = 2470,
  pct_vrouw    = 48,
  cbs_leeftijd = 41.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9288';

UPDATE pc4_cbs SET
  inwoners     = 1670,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 41.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9289';

UPDATE pc4_cbs SET
  inwoners     = 5790,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 44.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9291';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 50,
  cbs_leeftijd = 37.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9292';

UPDATE pc4_cbs SET
  inwoners     = 465,
  pct_vrouw    = 45.2,
  cbs_leeftijd = 44.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9293';

UPDATE pc4_cbs SET
  inwoners     = 825,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9294';

UPDATE pc4_cbs SET
  inwoners     = 625,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 40.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9295';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 39.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9296';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 52.4,
  cbs_leeftijd = 38.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9297';

UPDATE pc4_cbs SET
  inwoners     = 2980,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9298';

UPDATE pc4_cbs SET
  inwoners     = 575,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 42.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9299';

UPDATE pc4_cbs SET
  inwoners     = 11530,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 48.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9301';

UPDATE pc4_cbs SET
  inwoners     = 3315,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 41.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9302';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 50,
  cbs_leeftijd = 49.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9304';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 48.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9305';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 59.1,
  cbs_leeftijd = 54.5,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9306';

UPDATE pc4_cbs SET
  inwoners     = 195,
  pct_vrouw    = 43.6,
  cbs_leeftijd = 48.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9307';

UPDATE pc4_cbs SET
  inwoners     = 1615,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9311';

UPDATE pc4_cbs SET
  inwoners     = 1015,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 48.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9312';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 46.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9313';

UPDATE pc4_cbs SET
  inwoners     = 220,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 49.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9314';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 48.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9315';

UPDATE pc4_cbs SET
  inwoners     = 5455,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9321';

UPDATE pc4_cbs SET
  inwoners     = 4060,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 49.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9331';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 48.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9333';

UPDATE pc4_cbs SET
  inwoners     = 135,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 47.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9334';

UPDATE pc4_cbs SET
  inwoners     = 165,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 48,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9335';

UPDATE pc4_cbs SET
  inwoners     = 140,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 42.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9336';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 43,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9337';

UPDATE pc4_cbs SET
  inwoners     = 1250,
  pct_vrouw    = 40.4,
  cbs_leeftijd = 44,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9341';

UPDATE pc4_cbs SET
  inwoners     = 785,
  pct_vrouw    = 49,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9342';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 42.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9343';

UPDATE pc4_cbs SET
  inwoners     = 11990,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9351';

UPDATE pc4_cbs SET
  inwoners     = 2765,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9354';

UPDATE pc4_cbs SET
  inwoners     = 375,
  pct_vrouw    = 48,
  cbs_leeftijd = 47.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9355';

UPDATE pc4_cbs SET
  inwoners     = 4410,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9356';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 40,
  cbs_leeftijd = 35.8,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9359';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 41.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9361';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 43.1,
  cbs_leeftijd = 45.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9362';

UPDATE pc4_cbs SET
  inwoners     = 6080,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9363';

UPDATE pc4_cbs SET
  inwoners     = 705,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 45.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9364';

UPDATE pc4_cbs SET
  inwoners     = 660,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9365';

UPDATE pc4_cbs SET
  inwoners     = 260,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9366';

UPDATE pc4_cbs SET
  inwoners     = 1685,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9367';

UPDATE pc4_cbs SET
  inwoners     = 7165,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 48.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9401';

UPDATE pc4_cbs SET
  inwoners     = 8405,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 45.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9402';

UPDATE pc4_cbs SET
  inwoners     = 13870,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 43,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9403';

UPDATE pc4_cbs SET
  inwoners     = 7435,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9404';

UPDATE pc4_cbs SET
  inwoners     = 6785,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9405';

UPDATE pc4_cbs SET
  inwoners     = 9285,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 44.1,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9406';

UPDATE pc4_cbs SET
  inwoners     = 6415,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 41,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9407';

UPDATE pc4_cbs SET
  inwoners     = 9625,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 36.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9408';

UPDATE pc4_cbs SET
  inwoners     = 265,
  pct_vrouw    = 52.8,
  cbs_leeftijd = 51.6,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9409';

UPDATE pc4_cbs SET
  inwoners     = 8695,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 46.3,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9411';

UPDATE pc4_cbs SET
  inwoners     = 1185,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 46.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9412';

UPDATE pc4_cbs SET
  inwoners     = 1780,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 37.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9413';

UPDATE pc4_cbs SET
  inwoners     = 1555,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9414';

UPDATE pc4_cbs SET
  inwoners     = 900,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 42.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9415';

UPDATE pc4_cbs SET
  inwoners     = 160,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 39.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9416';

UPDATE pc4_cbs SET
  inwoners     = 380,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 47.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9417';

UPDATE pc4_cbs SET
  inwoners     = 1085,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9418';

UPDATE pc4_cbs SET
  inwoners     = 425,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9419';

UPDATE pc4_cbs SET
  inwoners     = 3300,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9421';

UPDATE pc4_cbs SET
  inwoners     = 4995,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 44.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9422';

UPDATE pc4_cbs SET
  inwoners     = 1385,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9423';

UPDATE pc4_cbs SET
  inwoners     = 4740,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 49.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9431';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 45.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9432';

UPDATE pc4_cbs SET
  inwoners     = 470,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 46.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9433';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 41.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9434';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 47.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9435';

UPDATE pc4_cbs SET
  inwoners     = 280,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 45.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9436';

UPDATE pc4_cbs SET
  inwoners     = 95,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 55.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9437';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 48,
  cbs_leeftijd = 44.9,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9438';

UPDATE pc4_cbs SET
  inwoners     = 605,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 46.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9439';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9441';

UPDATE pc4_cbs SET
  inwoners     = 380,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 50.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9442';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 49,
  cbs_leeftijd = 49.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9443';

UPDATE pc4_cbs SET
  inwoners     = 780,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9444';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 40,
  cbs_leeftijd = 65,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9445';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9446';

UPDATE pc4_cbs SET
  inwoners     = 355,
  pct_vrouw    = 60.6,
  cbs_leeftijd = 30.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9447';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 52.9,
  cbs_leeftijd = 42.4,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9448';

UPDATE pc4_cbs SET
  inwoners     = 850,
  pct_vrouw    = 42.4,
  cbs_leeftijd = 45.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9449';

UPDATE pc4_cbs SET
  inwoners     = 3715,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 50.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9451';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 47.6,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9452';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 54.5,
  cbs_leeftijd = 37.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9453';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9454';

UPDATE pc4_cbs SET
  inwoners     = 10,
  pct_vrouw    = 50,
  cbs_leeftijd = 75,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9455';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 50,
  cbs_leeftijd = 56,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9456';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 41.2,
  cbs_leeftijd = 44.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9457';

UPDATE pc4_cbs SET
  inwoners     = 160,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 48.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9458';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 40,
  cbs_leeftijd = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9459';

UPDATE pc4_cbs SET
  inwoners     = 4960,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 47.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9461';

UPDATE pc4_cbs SET
  inwoners     = 1860,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 48.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9462';

UPDATE pc4_cbs SET
  inwoners     = 1450,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9463';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 50,
  cbs_leeftijd = 52.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9464';

UPDATE pc4_cbs SET
  inwoners     = 255,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 49.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9465';

UPDATE pc4_cbs SET
  inwoners     = 385,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 53.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9466';

UPDATE pc4_cbs SET
  inwoners     = 390,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9467';

UPDATE pc4_cbs SET
  inwoners     = 3595,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 47.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9468';

UPDATE pc4_cbs SET
  inwoners     = 615,
  pct_vrouw    = 52,
  cbs_leeftijd = 51,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9469';

UPDATE pc4_cbs SET
  inwoners     = 6405,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 47.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9471';

UPDATE pc4_cbs SET
  inwoners     = 3640,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9472';

UPDATE pc4_cbs SET
  inwoners     = 450,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 47.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9473';

UPDATE pc4_cbs SET
  inwoners     = 325,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 45.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9474';

UPDATE pc4_cbs SET
  inwoners     = 345,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 51.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9475';

UPDATE pc4_cbs SET
  inwoners     = 540,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 52.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9479';

UPDATE pc4_cbs SET
  inwoners     = 4210,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 48.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9481';

UPDATE pc4_cbs SET
  inwoners     = 1920,
  pct_vrouw    = 49,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9482';

UPDATE pc4_cbs SET
  inwoners     = 410,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 48.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9483';

UPDATE pc4_cbs SET
  inwoners     = 65,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 55.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9484';

UPDATE pc4_cbs SET
  inwoners     = 120,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9485';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 49.6,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9486';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 50,
  cbs_leeftijd = 48.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9487';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 50,
  cbs_leeftijd = 47,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9488';

UPDATE pc4_cbs SET
  inwoners     = 35,
  pct_vrouw    = 57.1,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9489';

UPDATE pc4_cbs SET
  inwoners     = 710,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 45.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9491';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 44.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9492';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 47.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9493';

UPDATE pc4_cbs SET
  inwoners     = 835,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 45.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9494';

UPDATE pc4_cbs SET
  inwoners     = 95,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 48.4,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9495';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 44.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9496';

UPDATE pc4_cbs SET
  inwoners     = 475,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 45.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9497';

UPDATE pc4_cbs SET
  inwoners     = 9720,
  pct_vrouw    = 52.6,
  cbs_leeftijd = 47.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9501';

UPDATE pc4_cbs SET
  inwoners     = 5325,
  pct_vrouw    = 50.5,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9502';

UPDATE pc4_cbs SET
  inwoners     = 3980,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 45.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9503';

UPDATE pc4_cbs SET
  inwoners     = 995,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9511';

UPDATE pc4_cbs SET
  inwoners     = 275,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 43.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9512';

UPDATE pc4_cbs SET
  inwoners     = 1875,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 45,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9514';

UPDATE pc4_cbs SET
  inwoners     = 670,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 46.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9515';

UPDATE pc4_cbs SET
  inwoners     = 4970,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9521';

UPDATE pc4_cbs SET
  inwoners     = 595,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 42.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9523';

UPDATE pc4_cbs SET
  inwoners     = 445,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9524';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 41.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9525';

UPDATE pc4_cbs SET
  inwoners     = 85,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 46.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9526';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 47.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9527';

UPDATE pc4_cbs SET
  inwoners     = 795,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 46.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9528';

UPDATE pc4_cbs SET
  inwoners     = 5010,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 48.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9531';

UPDATE pc4_cbs SET
  inwoners     = 540,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 49.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9533';

UPDATE pc4_cbs SET
  inwoners     = 125,
  pct_vrouw    = 48,
  cbs_leeftijd = 48.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9534';

UPDATE pc4_cbs SET
  inwoners     = 35,
  pct_vrouw    = 57.1,
  cbs_leeftijd = 41.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9535';

UPDATE pc4_cbs SET
  inwoners     = 340,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9536';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 47.5,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9537';

UPDATE pc4_cbs SET
  inwoners     = 3380,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 48.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9541';

UPDATE pc4_cbs SET
  inwoners     = 695,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 49.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9545';

UPDATE pc4_cbs SET
  inwoners     = 2455,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 49.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9551';

UPDATE pc4_cbs SET
  inwoners     = 9960,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9561';

UPDATE pc4_cbs SET
  inwoners     = 990,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9563';

UPDATE pc4_cbs SET
  inwoners     = 50,
  pct_vrouw    = 50,
  cbs_leeftijd = 59.4,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9564';

UPDATE pc4_cbs SET
  inwoners     = 595,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 46.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9566';

UPDATE pc4_cbs SET
  inwoners     = 2260,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9571';

UPDATE pc4_cbs SET
  inwoners     = 365,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9573';

UPDATE pc4_cbs SET
  inwoners     = 90,
  pct_vrouw    = 50,
  cbs_leeftijd = 54.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9574';

UPDATE pc4_cbs SET
  inwoners     = 7320,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 45.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9581';

UPDATE pc4_cbs SET
  inwoners     = 1240,
  pct_vrouw    = 48,
  cbs_leeftijd = 41.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9584';

UPDATE pc4_cbs SET
  inwoners     = 290,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 47.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9585';

UPDATE pc4_cbs SET
  inwoners     = 2865,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 45.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9591';

UPDATE pc4_cbs SET
  inwoners     = 6930,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 44.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9601';

UPDATE pc4_cbs SET
  inwoners     = 11460,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 44.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9602';

UPDATE pc4_cbs SET
  inwoners     = 3655,
  pct_vrouw    = 51,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9603';

UPDATE pc4_cbs SET
  inwoners     = 845,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 47.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9605';

UPDATE pc4_cbs SET
  inwoners     = 1600,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 50.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9606';

UPDATE pc4_cbs SET
  inwoners     = 985,
  pct_vrouw    = 43.1,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9607';

UPDATE pc4_cbs SET
  inwoners     = 870,
  pct_vrouw    = 45.4,
  cbs_leeftijd = 45.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9608';

UPDATE pc4_cbs SET
  inwoners     = 20,
  cbs_leeftijd = 48.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9609';

UPDATE pc4_cbs SET
  inwoners     = 8330,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9611';

UPDATE pc4_cbs SET
  inwoners     = 4105,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 29.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9613';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 40.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9614';

UPDATE pc4_cbs SET
  inwoners     = 1360,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9615';

UPDATE pc4_cbs SET
  inwoners     = 515,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 44.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9616';

UPDATE pc4_cbs SET
  inwoners     = 3050,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9617';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 45,
  cbs_leeftijd = 49.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9618';

UPDATE pc4_cbs SET
  inwoners     = 825,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9619';

UPDATE pc4_cbs SET
  inwoners     = 2285,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 44.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9621';

UPDATE pc4_cbs SET
  inwoners     = 80,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9622';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 45,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9623';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 54.5,
  cbs_leeftijd = 47.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9624';

UPDATE pc4_cbs SET
  inwoners     = 515,
  pct_vrouw    = 44.7,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9625';

UPDATE pc4_cbs SET
  inwoners     = 1625,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 42.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9626';

UPDATE pc4_cbs SET
  inwoners     = 550,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9627';

UPDATE pc4_cbs SET
  inwoners     = 3200,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9628';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 50.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9629';

UPDATE pc4_cbs SET
  inwoners     = 435,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 47.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9631';

UPDATE pc4_cbs SET
  inwoners     = 55,
  pct_vrouw    = 45.5,
  cbs_leeftijd = 48.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9632';

UPDATE pc4_cbs SET
  inwoners     = 105,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 44.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9633';

UPDATE pc4_cbs SET
  inwoners     = 1850,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 46.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9635';

UPDATE pc4_cbs SET
  inwoners     = 3560,
  pct_vrouw    = 48,
  cbs_leeftijd = 45.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9636';

UPDATE pc4_cbs SET
  inwoners     = 5685,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9641';

UPDATE pc4_cbs SET
  inwoners     = 7735,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9642';

UPDATE pc4_cbs SET
  inwoners     = 1590,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 45.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9644';

UPDATE pc4_cbs SET
  inwoners     = 4035,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 42.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9645';

UPDATE pc4_cbs SET
  inwoners     = 2490,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9646';

UPDATE pc4_cbs SET
  inwoners     = 5545,
  pct_vrouw    = 48,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9648';

UPDATE pc4_cbs SET
  inwoners     = 4735,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 45.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9649';

UPDATE pc4_cbs SET
  inwoners     = 1705,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9651';

UPDATE pc4_cbs SET
  inwoners     = 405,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 45.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9654';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 52,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9655';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 48.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9656';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 41.6,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9657';

UPDATE pc4_cbs SET
  inwoners     = 465,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 44.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9658';

UPDATE pc4_cbs SET
  inwoners     = 230,
  pct_vrouw    = 45.7,
  cbs_leeftijd = 46.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9659';

UPDATE pc4_cbs SET
  inwoners     = 1270,
  pct_vrouw    = 47.6,
  cbs_leeftijd = 44.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9661';

UPDATE pc4_cbs SET
  inwoners     = 4735,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 43.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9663';

UPDATE pc4_cbs SET
  inwoners     = 7780,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9665';

UPDATE pc4_cbs SET
  inwoners     = 4465,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 50,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9671';

UPDATE pc4_cbs SET
  inwoners     = 485,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 46.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9672';

UPDATE pc4_cbs SET
  inwoners     = 3235,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9673';

UPDATE pc4_cbs SET
  inwoners     = 3040,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 43,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9674';

UPDATE pc4_cbs SET
  inwoners     = 7020,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9675';

UPDATE pc4_cbs SET
  inwoners     = 1460,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9677';

UPDATE pc4_cbs SET
  inwoners     = 1495,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 43.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9678';

UPDATE pc4_cbs SET
  inwoners     = 5110,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9679';

UPDATE pc4_cbs SET
  inwoners     = 2160,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 44.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9681';

UPDATE pc4_cbs SET
  inwoners     = 1485,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9682';

UPDATE pc4_cbs SET
  inwoners     = 2245,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9684';

UPDATE pc4_cbs SET
  inwoners     = 1425,
  pct_vrouw    = 49.8,
  cbs_leeftijd = 46.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9685';

UPDATE pc4_cbs SET
  inwoners     = 2040,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 45.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9686';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 46.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9687';

UPDATE pc4_cbs SET
  inwoners     = 395,
  pct_vrouw    = 45.6,
  cbs_leeftijd = 46.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9688';

UPDATE pc4_cbs SET
  inwoners     = 30,
  pct_vrouw    = 33.3,
  cbs_leeftijd = 61.7,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9691';

UPDATE pc4_cbs SET
  inwoners     = 1310,
  pct_vrouw    = 46.6,
  cbs_leeftijd = 47.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9693';

UPDATE pc4_cbs SET
  inwoners     = 3450,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 46.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9695';

UPDATE pc4_cbs SET
  inwoners     = 175,
  pct_vrouw    = 54.3,
  cbs_leeftijd = 49.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9696';

UPDATE pc4_cbs SET
  inwoners     = 2605,
  pct_vrouw    = 50.1,
  cbs_leeftijd = 50.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9697';

UPDATE pc4_cbs SET
  inwoners     = 1220,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 48.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9698';

UPDATE pc4_cbs SET
  inwoners     = 940,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 49.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9699';

UPDATE pc4_cbs SET
  inwoners     = 10370,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 32.5,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9711';

UPDATE pc4_cbs SET
  inwoners     = 11310,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 33.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9712';

UPDATE pc4_cbs SET
  inwoners     = 13930,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 35.9,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9713';

UPDATE pc4_cbs SET
  inwoners     = 6540,
  pct_vrouw    = 53.4,
  cbs_leeftijd = 31.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9714';

UPDATE pc4_cbs SET
  inwoners     = 8440,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 35.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9715';

UPDATE pc4_cbs SET
  inwoners     = 4140,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 34.9,
  pct_koop     = 10,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9716';

UPDATE pc4_cbs SET
  inwoners     = 6555,
  pct_vrouw    = 52.1,
  cbs_leeftijd = 37.7,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9717';

UPDATE pc4_cbs SET
  inwoners     = 9790,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 34.5,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9718';

UPDATE pc4_cbs SET
  inwoners     = 11270,
  pct_vrouw    = 51,
  cbs_leeftijd = 40.7,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9721';

UPDATE pc4_cbs SET
  inwoners     = 8465,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9722';

UPDATE pc4_cbs SET
  inwoners     = 6515,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 40.6,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9723';

UPDATE pc4_cbs SET
  inwoners     = 5125,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 36.6,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9724';

UPDATE pc4_cbs SET
  inwoners     = 6315,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 36.3,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9725';

UPDATE pc4_cbs SET
  inwoners     = 5165,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 32.1,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9726';

UPDATE pc4_cbs SET
  inwoners     = 6000,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 35.9,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9727';

UPDATE pc4_cbs SET
  inwoners     = 10720,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 44.9,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9728';

UPDATE pc4_cbs SET
  inwoners     = 7810,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9731';

UPDATE pc4_cbs SET
  inwoners     = 5115,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 40.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9732';

UPDATE pc4_cbs SET
  inwoners     = 3630,
  pct_vrouw    = 52.2,
  cbs_leeftijd = 43.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9733';

UPDATE pc4_cbs SET
  inwoners     = 2690,
  pct_vrouw    = 51.1,
  cbs_leeftijd = 43.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9734';

UPDATE pc4_cbs SET
  inwoners     = 215,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 45.8,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9735';

UPDATE pc4_cbs SET
  inwoners     = 6035,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 39.4,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9736';

UPDATE pc4_cbs SET
  inwoners     = 5870,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 41.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9737';

UPDATE pc4_cbs SET
  inwoners     = 380,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 46,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9738';

UPDATE pc4_cbs SET
  inwoners     = 8230,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 35.7,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9741';

UPDATE pc4_cbs SET
  inwoners     = 11360,
  pct_vrouw    = 50.4,
  cbs_leeftijd = 39.4,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9742';

UPDATE pc4_cbs SET
  inwoners     = 12625,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 38.5,
  pct_koop     = 20,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9743';

UPDATE pc4_cbs SET
  inwoners     = 5540,
  pct_vrouw    = 50.8,
  cbs_leeftijd = 42.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9744';

UPDATE pc4_cbs SET
  inwoners     = 3055,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9745';

UPDATE pc4_cbs SET
  inwoners     = 7835,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 35.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9746';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 66.7,
  cbs_leeftijd = 55,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9747';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 40,
  cbs_leeftijd = 43.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9749';

UPDATE pc4_cbs SET
  inwoners     = 7840,
  pct_vrouw    = 52,
  cbs_leeftijd = 42.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9751';

UPDATE pc4_cbs SET
  inwoners     = 5560,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 48.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9752';

UPDATE pc4_cbs SET
  inwoners     = 5025,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 44,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9753';

UPDATE pc4_cbs SET
  inwoners     = 750,
  pct_vrouw    = 52.7,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9755';

UPDATE pc4_cbs SET
  inwoners     = 1350,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9756';

UPDATE pc4_cbs SET
  inwoners     = 7090,
  pct_vrouw    = 51.5,
  cbs_leeftijd = 45.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9761';

UPDATE pc4_cbs SET
  inwoners     = 3975,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 44.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9765';

UPDATE pc4_cbs SET
  inwoners     = 3205,
  pct_vrouw    = 49,
  cbs_leeftijd = 34.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9766';

UPDATE pc4_cbs SET
  inwoners     = 1130,
  pct_vrouw    = 50,
  cbs_leeftijd = 45.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9771';

UPDATE pc4_cbs SET
  inwoners     = 130,
  pct_vrouw    = 46.2,
  cbs_leeftijd = 41.2,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9773';

UPDATE pc4_cbs SET
  inwoners     = 695,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 45.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9774';

UPDATE pc4_cbs SET
  inwoners     = 8780,
  pct_vrouw    = 50.3,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9781';

UPDATE pc4_cbs SET
  inwoners     = 280,
  pct_vrouw    = 50,
  cbs_leeftijd = 44.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9784';

UPDATE pc4_cbs SET
  inwoners     = 1020,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9785';

UPDATE pc4_cbs SET
  inwoners     = 4635,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9791';

UPDATE pc4_cbs SET
  inwoners     = 805,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 41.7,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9792';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 40.9,
  cbs_leeftijd = 46.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9793';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 47.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9794';

UPDATE pc4_cbs SET
  inwoners     = 340,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 43.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9795';

UPDATE pc4_cbs SET
  inwoners     = 180,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 44.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9796';

UPDATE pc4_cbs SET
  inwoners     = 530,
  pct_vrouw    = 50,
  cbs_leeftijd = 46,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9797';

UPDATE pc4_cbs SET
  inwoners     = 495,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 48.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9798';

UPDATE pc4_cbs SET
  inwoners     = 8445,
  pct_vrouw    = 51.4,
  cbs_leeftijd = 41.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9801';

UPDATE pc4_cbs SET
  inwoners     = 1445,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 42.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9804';

UPDATE pc4_cbs SET
  inwoners     = 450,
  pct_vrouw    = 50,
  cbs_leeftijd = 40,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9805';

UPDATE pc4_cbs SET
  inwoners     = 285,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 41.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9811';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 55.6,
  cbs_leeftijd = 45.8,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9812';

UPDATE pc4_cbs SET
  inwoners     = 1390,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 39.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9821';

UPDATE pc4_cbs SET
  inwoners     = 1570,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 43.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9822';

UPDATE pc4_cbs SET
  inwoners     = 455,
  pct_vrouw    = 47.3,
  cbs_leeftijd = 45.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9824';

UPDATE pc4_cbs SET
  inwoners     = 200,
  pct_vrouw    = 45,
  cbs_leeftijd = 43.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9825';

UPDATE pc4_cbs SET
  inwoners     = 140,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 50.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9827';

UPDATE pc4_cbs SET
  inwoners     = 715,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 42,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9828';

UPDATE pc4_cbs SET
  inwoners     = 2220,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9831';

UPDATE pc4_cbs SET
  inwoners     = 410,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 43,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9832';

UPDATE pc4_cbs SET
  inwoners     = 270,
  pct_vrouw    = 46.3,
  cbs_leeftijd = 42.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9833';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 40,
  cbs_leeftijd = 31.8,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9841';

UPDATE pc4_cbs SET
  inwoners     = 445,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 41.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9842';

UPDATE pc4_cbs SET
  inwoners     = 2720,
  pct_vrouw    = 49.4,
  cbs_leeftijd = 44.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9843';

UPDATE pc4_cbs SET
  inwoners     = 235,
  pct_vrouw    = 48.9,
  cbs_leeftijd = 43.2,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9844';

UPDATE pc4_cbs SET
  inwoners     = 305,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 48.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9845';

UPDATE pc4_cbs SET
  inwoners     = 620,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 39.9,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9851';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 43.9,
  cbs_leeftijd = 42.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9852';

UPDATE pc4_cbs SET
  inwoners     = 475,
  pct_vrouw    = 45.3,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9853';

UPDATE pc4_cbs SET
  inwoners     = 3565,
  pct_vrouw    = 51.3,
  cbs_leeftijd = 45.2,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9861';

UPDATE pc4_cbs SET
  inwoners     = 700,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 40.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9862';

UPDATE pc4_cbs SET
  inwoners     = 1115,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 40.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9863';

UPDATE pc4_cbs SET
  inwoners     = 625,
  pct_vrouw    = 46.4,
  cbs_leeftijd = 44.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9864';

UPDATE pc4_cbs SET
  inwoners     = 2535,
  pct_vrouw    = 47.9,
  cbs_leeftijd = 41.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9865';

UPDATE pc4_cbs SET
  inwoners     = 925,
  pct_vrouw    = 49.2,
  cbs_leeftijd = 39.4,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9866';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 43.3,
  cbs_leeftijd = 41,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9871';

UPDATE pc4_cbs SET
  inwoners     = 160,
  pct_vrouw    = 43.8,
  cbs_leeftijd = 39.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9872';

UPDATE pc4_cbs SET
  inwoners     = 795,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 41.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9873';

UPDATE pc4_cbs SET
  inwoners     = 320,
  pct_vrouw    = 51.6,
  cbs_leeftijd = 42.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9881';

UPDATE pc4_cbs SET
  inwoners     = 225,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 40.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9882';

UPDATE pc4_cbs SET
  inwoners     = 1495,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 40.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9883';

UPDATE pc4_cbs SET
  inwoners     = 250,
  pct_vrouw    = 50,
  cbs_leeftijd = 46.1,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9884';

UPDATE pc4_cbs SET
  inwoners     = 195,
  pct_vrouw    = 43.6,
  cbs_leeftijd = 44.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9885';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 45,
  cbs_leeftijd = 51.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9886';

UPDATE pc4_cbs SET
  inwoners     = 765,
  pct_vrouw    = 51,
  cbs_leeftijd = 46.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9891';

UPDATE pc4_cbs SET
  inwoners     = 310,
  pct_vrouw    = 46.8,
  cbs_leeftijd = 47.1,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9892';

UPDATE pc4_cbs SET
  inwoners     = 425,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9893';

UPDATE pc4_cbs SET
  inwoners     = 4070,
  pct_vrouw    = 53.1,
  cbs_leeftijd = 47.6,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9901';

UPDATE pc4_cbs SET
  inwoners     = 4835,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9902';

UPDATE pc4_cbs SET
  inwoners     = 1990,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 43.6,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9903';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 54.5,
  cbs_leeftijd = 49,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9904';

UPDATE pc4_cbs SET
  inwoners     = 1010,
  pct_vrouw    = 49,
  cbs_leeftijd = 45,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9905';

UPDATE pc4_cbs SET
  inwoners     = 750,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 43.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9906';

UPDATE pc4_cbs SET
  inwoners     = 160,
  pct_vrouw    = 50,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9907';

UPDATE pc4_cbs SET
  inwoners     = 310,
  pct_vrouw    = 43.5,
  cbs_leeftijd = 45.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9908';

UPDATE pc4_cbs SET
  inwoners     = 1340,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 44.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9909';

UPDATE pc4_cbs SET
  inwoners     = 180,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 52.7,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9911';

UPDATE pc4_cbs SET
  inwoners     = 245,
  pct_vrouw    = 49,
  cbs_leeftijd = 48.3,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9912';

UPDATE pc4_cbs SET
  inwoners     = 115,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 56.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9913';

UPDATE pc4_cbs SET
  inwoners     = 525,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 41.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9914';

UPDATE pc4_cbs SET
  inwoners     = 660,
  pct_vrouw    = 47.7,
  cbs_leeftijd = 44.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9915';

UPDATE pc4_cbs SET
  inwoners     = 475,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 49.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9917';

UPDATE pc4_cbs SET
  inwoners     = 530,
  pct_vrouw    = 49.1,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9918';

UPDATE pc4_cbs SET
  inwoners     = 2320,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 47.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9919';

UPDATE pc4_cbs SET
  inwoners     = 905,
  pct_vrouw    = 49.7,
  cbs_leeftijd = 43.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9921';

UPDATE pc4_cbs SET
  inwoners     = 430,
  pct_vrouw    = 45.3,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9922';

UPDATE pc4_cbs SET
  inwoners     = 200,
  pct_vrouw    = 45,
  cbs_leeftijd = 45.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9923';

UPDATE pc4_cbs SET
  inwoners     = 25,
  pct_vrouw    = 40,
  cbs_leeftijd = 68.3,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9924';

UPDATE pc4_cbs SET
  inwoners     = 15,
  pct_vrouw    = 33.3,
  cbs_leeftijd = 37.5,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9925';

UPDATE pc4_cbs SET
  inwoners     = 1610,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 39.8,
  pct_koop     = 30,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9931';

UPDATE pc4_cbs SET
  inwoners     = 4510,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 41.8,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9932';

UPDATE pc4_cbs SET
  inwoners     = 4305,
  pct_vrouw    = 52.3,
  cbs_leeftijd = 47.8,
  pct_koop     = 40,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9933';

UPDATE pc4_cbs SET
  inwoners     = 4990,
  pct_vrouw    = 50.7,
  cbs_leeftijd = 49,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9934';

UPDATE pc4_cbs SET
  inwoners     = 1670,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 44.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9936';

UPDATE pc4_cbs SET
  inwoners     = 570,
  pct_vrouw    = 47.4,
  cbs_leeftijd = 47.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9937';

UPDATE pc4_cbs SET
  inwoners     = 260,
  pct_vrouw    = 48.1,
  cbs_leeftijd = 46.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9939';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 50,
  cbs_leeftijd = 51.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9942';

UPDATE pc4_cbs SET
  inwoners     = 335,
  pct_vrouw    = 44.8,
  cbs_leeftijd = 47.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9943';

UPDATE pc4_cbs SET
  inwoners     = 1325,
  pct_vrouw    = 47.5,
  cbs_leeftijd = 47.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9944';

UPDATE pc4_cbs SET
  inwoners     = 1765,
  pct_vrouw    = 48.7,
  cbs_leeftijd = 44.9,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9945';

UPDATE pc4_cbs SET
  inwoners     = 960,
  pct_vrouw    = 46.9,
  cbs_leeftijd = 44.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9946';

UPDATE pc4_cbs SET
  inwoners     = 375,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 48.4,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9947';

UPDATE pc4_cbs SET
  inwoners     = 320,
  pct_vrouw    = 48.4,
  cbs_leeftijd = 47.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9948';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 51.7,
  cbs_leeftijd = 45.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9949';

UPDATE pc4_cbs SET
  inwoners     = 7445,
  pct_vrouw    = 51.8,
  cbs_leeftijd = 44.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9951';

UPDATE pc4_cbs SET
  inwoners     = 1865,
  pct_vrouw    = 49.9,
  cbs_leeftijd = 46.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9953';

UPDATE pc4_cbs SET
  inwoners     = 100,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.7,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9954';

UPDATE pc4_cbs SET
  inwoners     = 215,
  pct_vrouw    = 51.2,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9955';

UPDATE pc4_cbs SET
  inwoners     = 435,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 51.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9956';

UPDATE pc4_cbs SET
  inwoners     = 45,
  pct_vrouw    = 44.4,
  cbs_leeftijd = 51.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9957';

UPDATE pc4_cbs SET
  inwoners     = 580,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 44.6,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9959';

UPDATE pc4_cbs SET
  inwoners     = 185,
  pct_vrouw    = 56.8,
  cbs_leeftijd = 46.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9961';

UPDATE pc4_cbs SET
  inwoners     = 95,
  pct_vrouw    = 57.9,
  cbs_leeftijd = 57.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9962';

UPDATE pc4_cbs SET
  inwoners     = 265,
  pct_vrouw    = 43.4,
  cbs_leeftijd = 47.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9963';

UPDATE pc4_cbs SET
  inwoners     = 740,
  pct_vrouw    = 48,
  cbs_leeftijd = 48.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9964';

UPDATE pc4_cbs SET
  inwoners     = 1760,
  pct_vrouw    = 50.9,
  cbs_leeftijd = 46.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9965';

UPDATE pc4_cbs SET
  inwoners     = 150,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 44.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9966';

UPDATE pc4_cbs SET
  inwoners     = 1485,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 45.8,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9967';

UPDATE pc4_cbs SET
  inwoners     = 415,
  pct_vrouw    = 48.2,
  cbs_leeftijd = 50.7,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9968';

UPDATE pc4_cbs SET
  inwoners     = 245,
  pct_vrouw    = 49,
  cbs_leeftijd = 48.4,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9969';

UPDATE pc4_cbs SET
  inwoners     = 1380,
  pct_vrouw    = 49.3,
  cbs_leeftijd = 43.5,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9971';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 46.7,
  cbs_leeftijd = 42.2,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9972';

UPDATE pc4_cbs SET
  inwoners     = 205,
  pct_vrouw    = 48.8,
  cbs_leeftijd = 50.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9973';

UPDATE pc4_cbs SET
  inwoners     = 1205,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 44.1,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9974';

UPDATE pc4_cbs SET
  inwoners     = 180,
  pct_vrouw    = 47.2,
  cbs_leeftijd = 51.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9975';

UPDATE pc4_cbs SET
  inwoners     = 145,
  pct_vrouw    = 48.3,
  cbs_leeftijd = 62.9,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9976';

UPDATE pc4_cbs SET
  inwoners     = 1265,
  pct_vrouw    = 48.6,
  cbs_leeftijd = 46,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9977';

UPDATE pc4_cbs SET
  inwoners     = 190,
  pct_vrouw    = 50,
  cbs_leeftijd = 42.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9978';

UPDATE pc4_cbs SET
  inwoners     = 5470,
  pct_vrouw    = 50.6,
  cbs_leeftijd = 46.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9981';

UPDATE pc4_cbs SET
  inwoners     = 3160,
  pct_vrouw    = 50.2,
  cbs_leeftijd = 43.6,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9982';

UPDATE pc4_cbs SET
  inwoners     = 1150,
  pct_vrouw    = 47,
  cbs_leeftijd = 43.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9983';

UPDATE pc4_cbs SET
  inwoners     = 240,
  pct_vrouw    = 41.7,
  cbs_leeftijd = 43.5,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9984';

UPDATE pc4_cbs SET
  inwoners     = 135,
  pct_vrouw    = 51.9,
  cbs_leeftijd = 39.8,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9985';

UPDATE pc4_cbs SET
  inwoners     = 110,
  pct_vrouw    = 40.9,
  cbs_leeftijd = 44.8,
  pct_koop     = 80,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9986';

UPDATE pc4_cbs SET
  inwoners     = 215,
  pct_vrouw    = 44.2,
  cbs_leeftijd = 48.2,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9987';

UPDATE pc4_cbs SET
  inwoners     = 1375,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 45.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9988';

UPDATE pc4_cbs SET
  inwoners     = 2270,
  pct_vrouw    = 49.6,
  cbs_leeftijd = 46.9,
  pct_koop     = 60,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9989';

UPDATE pc4_cbs SET
  inwoners     = 2170,
  pct_vrouw    = 49.5,
  cbs_leeftijd = 44.3,
  pct_koop     = 50,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9991';

UPDATE pc4_cbs SET
  inwoners     = 120,
  pct_vrouw    = 50,
  cbs_leeftijd = 51.6,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9992';

UPDATE pc4_cbs SET
  inwoners     = 120,
  pct_vrouw    = 50,
  cbs_leeftijd = 43.3,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9993';

UPDATE pc4_cbs SET
  inwoners     = 75,
  pct_vrouw    = 53.3,
  cbs_leeftijd = 44.1,
  pct_koop     = 100,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9994';

UPDATE pc4_cbs SET
  inwoners     = 660,
  pct_vrouw    = 48.5,
  cbs_leeftijd = 41.1,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9995';

UPDATE pc4_cbs SET
  inwoners     = 70,
  pct_vrouw    = 42.9,
  cbs_leeftijd = 48.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9996';

UPDATE pc4_cbs SET
  inwoners     = 575,
  pct_vrouw    = 47.8,
  cbs_leeftijd = 45.5,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9997';

UPDATE pc4_cbs SET
  inwoners     = 170,
  pct_vrouw    = 47.1,
  cbs_leeftijd = 42.3,
  pct_koop     = 70,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9998';

UPDATE pc4_cbs SET
  inwoners     = 90,
  pct_vrouw    = 50,
  cbs_leeftijd = 51.5,
  pct_koop     = 90,
  bron_jaar    = 2024,
  updated_at   = NOW()
WHERE postcode = '9999';

-- Klaar — controleer:
SELECT
  COUNT(*) AS totaal,
  SUM(CASE WHEN inwoners > 0 THEN 1 ELSE 0 END) AS met_echte_inwoners,
  ROUND(AVG(inwoners)) AS gem_inwoners,
  ROUND(AVG(pct_vrouw), 1) AS gem_pct_vrouw,
  ROUND(AVG(cbs_leeftijd), 1) AS gem_leeftijd,
  ROUND(AVG(pct_koop), 1) AS gem_pct_koop
FROM pc4_cbs;
