+++  
title: "GROUP BY"  
description: ""  
+++  

# Grouping

```postgresql
SELECT home_team, SUM(away_score) AS our_score
    FROM WorldSoccer
    WHERE away_team = 'Sweden'
    GROUP BY home_team;
```

Numbers can be used in "GROUP BY"'s columns to index the columns on which to group from the SELECT's column list:   

```postgresql
SELECT home_team, SUM(away_score) AS our_score
    FROM WorldSoccer
    WHERE away_team = 'Sweden'
    GROUP BY 1;
```

# Filter with HAVING clause

WHERE clause filters before grouping is performed, while HAVING clause filters after the grouping is performed. This
means that in the grouping clause only the columns in the GROUP BY clause and aggregate functions can be used just like
SELECT's list. 

```postgresql
SELECT home_team, SUM(away_score) AS our_score, SUM(home_score) AS their_score,
       SUM(home_score) - SUM(away_score) AS difference
    FROM WorldSoccer
    WHERE away_team = 'Sweden'
    GROUP BY 1 HAVING SUM(home_score) > SUM(away_score);
```