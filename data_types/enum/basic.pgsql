DROP TABLE Student;

DROP TYPE Semester;

DROP TYPE Gender;

CREATE TYPE Gender AS ENUM ('Male', 'Female');

CREATE TYPE Semester AS ENUM ('first', 'second', 'third', 'fourth', 'fifth', 'sixth');

CREATE TABLE Student (
    name TEXT,
    gender Gender,
    semester Semester
);

INSERT INTO Student
    VALUES  ('Teja', 'Male', 'sixth'),
            ('Katherine', 'Female', 'second');

SELECT * FROM Student;

SELECT * FROM Student WHERE Gender = 'Male';

SELECT * FROM Student WHERE semester < 'fourth';

ALTER TYPE Gender ADD VALUE 'Non binary';

ALTER TYPE Gender RENAME VALUE 'Non binary' TO 'Non-binary';

ALTER TYPE Gender RENAME TO Sex;

-- DELETE FROM Student;