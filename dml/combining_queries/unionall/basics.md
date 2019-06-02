+++
title: "Basics of UNION [ALL]"
description: ""
+++

# Combine rows from two tables/Queries

```postgresql
SELECT * FROM Capitals
    UNION
SELECT * FROM Cities;
```

# Include duplicate rows

```postgresql
SELECT * FROM Capitals
    UNION ALL
SELECT * FROM Cities;
```

# ORDER BY, LIMIT, OFFSET

```postgresql
(SELECT * FROM Capitals
  UNION
SELECT * FROM Cities)
  ORDER BY name;
```

# Dissimilar queries

```postgresql
SELECT name, department FROM Member
  UNION
SELECT name, department FROM Leader;
```