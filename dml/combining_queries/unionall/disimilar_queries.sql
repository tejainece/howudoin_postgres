DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS Leader;

CREATE TABLE Member (
    name TEXT,
    department TEXT,
    role TEXT
);

CREATE TABLE Leader (
    name TEXT,
    department TEXT
);

INSERT INTO Member VALUES
  ('Member1', 'R&D', 'Software'),
  ('Member2', 'R&D', 'Hardware'),
  ('Member3', 'Sales', 'Customer contact'),
  ('Member4', 'Sales', 'Marketing');

INSERT INTO Leader VALUES
  ('Leader1', 'R&D'),
  ('Leader2', 'Sales');

SELECT * FROM Member;
SELECT * FROM Leader;

SELECT name, department FROM Member
  UNION
SELECT name, department FROM Leader;