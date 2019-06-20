DROP TABLE IF EXISTS Employee;

DROP TYPE IF EXISTS Fullname;

CREATE TYPE Fullname AS (
    firstname TEXT,
    familyname TEXT
);

CREATE TABLE Employee (
    name Fullname,
    age smallint
);

INSERT INTO Employee (name, age)
    VALUES  (('Teja', 'Gudapati')::Fullname, 30),
            (('Katherine', 'Scorron'), 32);

SELECT * FROM Employee;

SELECT (name).*, age FROM Employee;

SELECT (name).firstname || ' ' || (name).familyname as name, age FROM Employee;

UPDATE Employee SET name.familyname = 'Scorron' 
    WHERE (name).firstname = 'Katherine';

SELECT (name).firstname || ' ' || (name).familyname as name, age FROM Employee;
