SELECT ARRAY[1, 2, 3, 4, 5];

SELECT * FROM (
    VALUES
           ('Teja', ARRAY[1, 2, 3, 4, 5]),
           ('Katherine', ARRAY[6, 7, 8, 9, 10])
            ) AS t;

DROP TABLE IF EXISTS Person;

CREATE TABLE Person (
    name TEXT,
    numbers INT[]
);

DELETE FROM Person;

INSERT INTO Person VALUES ('Teja', ARRAY[1, 2, 3, 4, 5]);

INSERT INTO Person VALUES ('Mark', ARRAY[6, 7, 8]);

SELECT *, array_length(numbers, 1) FROM Person;

SELECT * FROM Person WHERE array_length(numbers, 1) > 3;