-- TwinScale matches op basis van kassadata penetratie
-- Referentie = 5038 Tilburg (hoogste klantpenetratie: 5.24%)
-- jouw_postcode = referentiepostcode (NIET de vestiging)

TRUNCATE TABLE matches RESTART IDENTITY;

INSERT INTO matches (rank, postcode, stad, wijk, match_score, inwoners, cbs_inkomen, cbs_leeftijd, cbs_pct_vrouw, cbs_pct_hbo, cbs_pct_koop, jouw_postcode, jouw_inkomen, jouw_leeftijd, jouw_pct_vrouw)
VALUES
  (1, '5038', 'Tilburg', 'Berkel-Enschot', 94, 17700, 65453, 34, 53, 64, 64, '5038', 56018, 34, 55),
  (2, '5121', 'Waalwijk', 'Centrum', 93, 16800, 47251, 33, 55, 49, 63, '5038', 50052, 36, 53),
  (3, '5046', 'Tilburg', 'Udenhout', 89, 13200, 59537, 42, 56, 53, 31, '5038', 52850, 35, 53),
  (4, '5017', 'Tilburg', 'Noord', 88, 18300, 55270, 35, 52, 42, 42, '5038', 60174, 38, 53),
  (5, '5014', 'Tilburg', 'Quirijnstok', 88, 15600, 65149, 32, 51, 49, 40, '5038', 50400, 36, 56),
  (6, '5025', 'Tilburg', 'Oost', 86, 20400, 57650, 41, 58, 67, 57, '5038', 54925, 36, 53),
  (7, '4824', 'Breda', 'Hoge Vucht', 84, 8400, 65812, 30, 50, 53, 28, '5038', 51977, 37, 53),
  (8, '6841', 'Arnhem', 'Rijnwijk', 82, 13800, 65839, 40, 55, 62, 51, '5038', 52971, 36, 53),
  (9, '5011', 'Tilburg', 'Centrum', 79, 19000, 67235, 35, 51, 50, 58, '5038', 57206, 36, 57),
  (10, '5042', 'Tilburg', 'Reeshof', 77, 24600, 44272, 35, 55, 71, 58, '5038', 55959, 37, 57),
  (11, '5211', 'Den Bosch', 'Centrum', 78, 21600, 56656, 41, 57, 72, 46, '5038', 56418, 32, 55),
  (12, '6811', 'Arnhem', 'Centrum', 74, 33000, 64082, 30, 51, 43, 40, '5038', 53559, 33, 54),
  (13, '4811', 'Breda', 'Centrum', 74, 17800, 52504, 33, 51, 47, 40, '5038', 52710, 38, 57),
  (14, '5262', 'Vught', 'Centrum', 72, 12600, 51934, 35, 51, 57, 31, '5038', 61642, 38, 55),
  (15, '4818', 'Breda', 'Haagse Beemden', 72, 13400, 67327, 34, 51, 51, 52, '5038', 53538, 32, 54),
  (16, '5223', 'Den Bosch', 'Rosmalen', 67, 12600, 57219, 35, 53, 52, 56, '5038', 58989, 36, 56),
  (17, '6821', 'Arnhem', 'Schaarsbergen', 67, 16200, 64560, 31, 57, 67, 46, '5038', 51804, 38, 54),
  (18, '6561', 'Groesbeek', 'Centrum', 66, 9600, 52583, 30, 50, 57, 52, '5038', 50677, 37, 56),
  (19, '6521', 'Nijmegen', 'Oost', 63, 17000, 49031, 38, 55, 60, 35, '5038', 58304, 32, 56),
  (20, '6541', 'Nijmegen', 'Neerbosch', 60, 12400, 63917, 30, 57, 42, 57, '5038', 50711, 37, 53),
  (21, '6511', 'Nijmegen', 'Centrum', 59, 36000, 51088, 31, 56, 57, 45, '5038', 58698, 34, 54),
  (22, '5631', 'Eindhoven', 'Woensel-Noord', 56, 10200, 66758, 36, 50, 54, 56, '5038', 55947, 32, 57),
  (23, '3441', 'Woerden', 'Centrum', 57, 17400, 67090, 36, 50, 46, 36, '5038', 58278, 32, 54),
  (24, '7311', 'Apeldoorn', 'Centrum', 54, 12400, 49752, 30, 52, 57, 48, '5038', 54146, 34, 54),
  (25, '6211', 'Maastricht', 'Centrum', 51, 10800, 66215, 41, 51, 44, 60, '5038', 57979, 37, 56);

-- Controleer:
SELECT COUNT(*) AS matches, jouw_postcode AS referentie FROM matches GROUP BY jouw_postcode;
