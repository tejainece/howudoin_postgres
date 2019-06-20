DROP TABLE IF EXISTS Weather;

DROP TABLE IF EXISTS cities;

CREATE TABLE Weather (
    city            VARCHAR(80),
    temp_lo         INT,	-- low temperature
    temp_hi         INT,	-- high temperature
    prcp            REAL,	-- precipitation
    date            DATE
);

CREATE TABLE Cities (
    name            VARCHAR(80),
    location        POINT
);

INSERT INTO Weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27'),
                           ('San Francisco', 43, 57, 0.0, '1994-11-29'),
                           ('Hayward', 54, 37, 0.0, '1994-11-29');

INSERT INTO Cities (name, location) VALUES ('San Francisco', '(-194.0, 53.0)');
INSERT INTO Cities (name, location) VALUES ('Stockholm', '(59.32, 18.06)');

SELECT * FROM Weather;
SELECT * FROM Cities;

SELECT * FROM Weather W, Cities C;

-- INNER JOINS

SELECT * FROM Weather W, Cities C WHERE W.city = C.name;

SELECT * FROM Weather INNER JOIN Cities ON Weather.city = Cities.name;

SELECT * FROM Weather JOIN Cities ON Weather.city = Cities.name;

-- OUTER JOIN

SELECT * FROM Weather LEFT JOIN Cities ON Weather.city = Cities.name;