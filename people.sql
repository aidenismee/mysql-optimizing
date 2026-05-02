CREATE DATABASE IF NOT EXISTS app;
USE app;

DROP TABLE IF EXISTS People;
DROP TABLE IF EXISTS seed_first_names;
DROP TABLE IF EXISTS seed_last_names;
DROP TABLE IF EXISTS seed_digits;

CREATE TABLE People (
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  dob DATE NOT NULL,
  gender ENUM('m', 'f') NOT NULL
) ENGINE=InnoDB;

CREATE TABLE seed_digits (
  d TINYINT UNSIGNED NOT NULL PRIMARY KEY
) ENGINE=MEMORY;

CREATE TABLE seed_first_names (
  gender ENUM('m', 'f') NOT NULL,
  slot TINYINT UNSIGNED NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (gender, slot)
) ENGINE=MEMORY;

CREATE TABLE seed_last_names (
  slot TINYINT UNSIGNED NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
) ENGINE=MEMORY;

INSERT INTO seed_digits (d)
VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9);

INSERT INTO seed_first_names (gender, slot, name)
VALUES
  ('m', 0, 'James'),
  ('m', 1, 'John'),
  ('m', 2, 'Robert'),
  ('m', 3, 'Michael'),
  ('m', 4, 'William'),
  ('m', 5, 'David'),
  ('m', 6, 'Richard'),
  ('m', 7, 'Joseph'),
  ('m', 8, 'Thomas'),
  ('m', 9, 'Charles'),
  ('m', 10, 'Christopher'),
  ('m', 11, 'Daniel'),
  ('m', 12, 'Matthew'),
  ('m', 13, 'Anthony'),
  ('m', 14, 'Mark'),
  ('m', 15, 'Donald'),
  ('m', 16, 'Steven'),
  ('m', 17, 'Paul'),
  ('m', 18, 'Andrew'),
  ('m', 19, 'Joshua'),
  ('m', 20, 'Kenneth'),
  ('m', 21, 'Kevin'),
  ('m', 22, 'Brian'),
  ('m', 23, 'George'),
  ('m', 24, 'Timothy'),
  ('m', 25, 'Ronald'),
  ('m', 26, 'Edward'),
  ('m', 27, 'Jason'),
  ('m', 28, 'Jeffrey'),
  ('m', 29, 'Ryan'),
  ('m', 30, 'Jacob'),
  ('m', 31, 'Gary'),
  ('m', 32, 'Nicholas'),
  ('m', 33, 'Eric'),
  ('m', 34, 'Jonathan'),
  ('m', 35, 'Stephen'),
  ('m', 36, 'Larry'),
  ('m', 37, 'Justin'),
  ('m', 38, 'Scott'),
  ('m', 39, 'Brandon'),
  ('m', 40, 'Benjamin'),
  ('m', 41, 'Samuel'),
  ('m', 42, 'Gregory'),
  ('m', 43, 'Alexander'),
  ('m', 44, 'Patrick'),
  ('m', 45, 'Frank'),
  ('m', 46, 'Raymond'),
  ('m', 47, 'Jack'),
  ('m', 48, 'Dennis'),
  ('m', 49, 'Jerry'),
  ('f', 0, 'Mary'),
  ('f', 1, 'Patricia'),
  ('f', 2, 'Jennifer'),
  ('f', 3, 'Linda'),
  ('f', 4, 'Elizabeth'),
  ('f', 5, 'Barbara'),
  ('f', 6, 'Susan'),
  ('f', 7, 'Jessica'),
  ('f', 8, 'Sarah'),
  ('f', 9, 'Karen'),
  ('f', 10, 'Nancy'),
  ('f', 11, 'Lisa'),
  ('f', 12, 'Margaret'),
  ('f', 13, 'Betty'),
  ('f', 14, 'Sandra'),
  ('f', 15, 'Ashley'),
  ('f', 16, 'Kimberly'),
  ('f', 17, 'Emily'),
  ('f', 18, 'Donna'),
  ('f', 19, 'Michelle'),
  ('f', 20, 'Dorothy'),
  ('f', 21, 'Carol'),
  ('f', 22, 'Amanda'),
  ('f', 23, 'Melissa'),
  ('f', 24, 'Deborah'),
  ('f', 25, 'Stephanie'),
  ('f', 26, 'Rebecca'),
  ('f', 27, 'Sharon'),
  ('f', 28, 'Laura'),
  ('f', 29, 'Cynthia'),
  ('f', 30, 'Kathleen'),
  ('f', 31, 'Amy'),
  ('f', 32, 'Shirley'),
  ('f', 33, 'Angela'),
  ('f', 34, 'Helen'),
  ('f', 35, 'Anna'),
  ('f', 36, 'Brenda'),
  ('f', 37, 'Pamela'),
  ('f', 38, 'Nicole'),
  ('f', 39, 'Emma'),
  ('f', 40, 'Samantha'),
  ('f', 41, 'Katherine'),
  ('f', 42, 'Christine'),
  ('f', 43, 'Debra'),
  ('f', 44, 'Rachel'),
  ('f', 45, 'Carolyn'),
  ('f', 46, 'Janet'),
  ('f', 47, 'Maria'),
  ('f', 48, 'Olivia'),
  ('f', 49, 'Sophia');

INSERT INTO seed_last_names (slot, name)
VALUES
  (0, 'Smith'),
  (1, 'Johnson'),
  (2, 'Williams'),
  (3, 'Brown'),
  (4, 'Jones'),
  (5, 'Garcia'),
  (6, 'Miller'),
  (7, 'Davis'),
  (8, 'Rodriguez'),
  (9, 'Martinez'),
  (10, 'Hernandez'),
  (11, 'Lopez'),
  (12, 'Gonzalez'),
  (13, 'Wilson'),
  (14, 'Anderson'),
  (15, 'Thomas'),
  (16, 'Taylor'),
  (17, 'Moore'),
  (18, 'Jackson'),
  (19, 'Martin'),
  (20, 'Lee'),
  (21, 'Perez'),
  (22, 'Thompson'),
  (23, 'White'),
  (24, 'Harris'),
  (25, 'Sanchez'),
  (26, 'Clark'),
  (27, 'Ramirez'),
  (28, 'Lewis'),
  (29, 'Robinson'),
  (30, 'Walker'),
  (31, 'Young'),
  (32, 'Allen'),
  (33, 'King'),
  (34, 'Wright'),
  (35, 'Scott'),
  (36, 'Torres'),
  (37, 'Nguyen'),
  (38, 'Hill'),
  (39, 'Flores'),
  (40, 'Green'),
  (41, 'Adams'),
  (42, 'Nelson'),
  (43, 'Baker'),
  (44, 'Hall'),
  (45, 'Rivera'),
  (46, 'Campbell'),
  (47, 'Mitchell'),
  (48, 'Carter'),
  (49, 'Roberts');

INSERT INTO People (last_name, first_name, dob, gender)
SELECT
  ln.name AS last_name,
  fn.name AS first_name,
  DATE_ADD('1970-01-01', INTERVAL MOD((seq.n * 17) + FLOOR(seq.n / 11), 18262) DAY) AS dob,
  fn.gender AS gender
FROM (
  SELECT
    d0.d
    + (d1.d * 10)
    + (d2.d * 100)
    + (d3.d * 1000)
    + (d4.d * 10000)
    + (d5.d * 100000)
    + (d6.d * 1000000) AS n
  FROM seed_digits AS d0
  CROSS JOIN seed_digits AS d1
  CROSS JOIN seed_digits AS d2
  CROSS JOIN seed_digits AS d3
  CROSS JOIN seed_digits AS d4
  CROSS JOIN seed_digits AS d5
  CROSS JOIN seed_digits AS d6
) AS seq
JOIN seed_last_names AS ln
  ON ln.slot = MOD((seq.n * 37) + FLOOR(seq.n / 101), 50)
JOIN seed_first_names AS fn
  ON fn.gender = IF(MOD(seq.n, 2) = 0, 'm', 'f')
 AND fn.slot = MOD((seq.n * 29) + FLOOR(seq.n / 7), 50);

DROP TABLE seed_first_names;
DROP TABLE seed_last_names;
DROP TABLE seed_digits;

ALTER TABLE People
  ADD INDEX people_last_first_dob (last_name, first_name, dob),
  ADD INDEX idx_person (first_name, last_name, dob);
