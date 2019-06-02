DROP TABLE IF EXISTS Cities;
DROP TABLE IF EXISTS Capitals;

CREATE TABLE Cities (
    name TEXT,
    country TEXT
);

CREATE TABLE Capitals (
    name TEXT,
    country TEXT
);

INSERT INTO Cities VALUES
    ('Stockholm', 'Sweden'),
    ('Malmö', 'Sweden'),
    ('Berlin', 'Germany'),
    ('Munich', 'Germany');

INSERT INTO Capitals VALUES
    ('Stockholm', 'Sweden'),
    ('Berlin', 'Germany'),
    ('Oslo', 'Norway');

SELECT * FROM Capitals;
SELECT * FROM Cities;

SELECT * FROM Capitals
    UNION
SELECT * FROM Cities;

SELECT * FROM Capitals
    UNION ALL
SELECT * FROM Cities;

(SELECT * FROM Capitals
  UNION
SELECT * FROM Cities)
  ORDER BY name;