SELECT ARRAY[1, 2, 3, 4, 5];

SELECT * FROM (
    VALUES
           ('Teja', ARRAY[1, 2, 3, 4, 5]),
           ('Katherine', ARRAY[6, 7, 8, 9, 10])
            ) AS t;

SELECT unnest(ARRAY[1, 2, 3, 4, 5]);

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

UPDATE Person SET numbers = array_append(numbers, 9) WHERE name = 'Mark';

UPDATE Person SET numbers = array_cat(numbers, ARRAY[10, 11]) WHERE name = 'Mark';

UPDATE Person SET numbers = numbers || 12 WHERE name = 'Mark';

UPDATE Person SET numbers = numbers || ARRAY[13, 14, 15] WHERE name = 'Mark';

SELECT * FROM Person WHERE numbers @> ARRAY [3];