CREATE TABLE WorldSoccer (
    date        DATE,
    home_team   TEXT,
    away_team   TEXT,
    home_score  smallint,
    away_score  smallint,
    tournament  TEXT,
    city        TEXT,
    country     TEXT,
    neutral     BOOLEAN
);

COPY WorldSoccer FROM 'results.csv' 
    WITH DELIMITER ',' CSV HEADER ENCODING 'SQL_ASCII';

--SELECT COUNT(*) FROM WorldSoccer;

SELECT home_team, SUM(away_score) AS our_score
    FROM WorldSoccer
    WHERE away_team = 'Sweden'
    GROUP BY home_team ORDER BY our_score DESC;

SELECT home_team, SUM(away_score) AS our_score
    FROM WorldSoccer
    WHERE away_team = 'Sweden'
    GROUP BY 1 ORDER BY our_score DESC;

SELECT home_team, SUM(away_score) AS our_score, SUM(home_score) AS their_score,
       SUM(home_score) - SUM(away_score) AS difference
    FROM WorldSoccer
    WHERE away_team = 'Sweden' AND tournament != 'Friendly'
    GROUP BY 1 HAVING SUM(home_score) > SUM(away_score) ORDER BY SUM(home_score) - SUM(away_score) DESC;