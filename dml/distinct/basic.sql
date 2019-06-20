DROP TABLE IF EXISTS Person;

CREATE TABLE Person (
    name TEXT,
    score INT
);

DELETE FROM Person;

INSERT INTO Person VALUES ('Teja', 100),
                          ('Teja', 99),
                          ('Katherine', 50),
                          ('Katherine', 50);

SELECT DISTINCT name FROM Person;

SELECT DISTINCT name, score FROM Person;

SELECT DISTINCT(name), score FROM Person;

SELECT DISTINCT(name, score) FROM Person;

SELECT COUNT(DISTINCT name) FROM Person;

SELECT COUNT(DISTINCT(name, score)) FROM Person;