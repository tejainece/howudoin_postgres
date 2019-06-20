+++
title: "VALUES clause"
description: "VALUES clause usage"
+++

# In INSERT statement

VALUES clause is most often used in INSERT statement to supply rows to insert.

```sql
INSERT INTO Weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27'),
                           ('San Francisco', 43, 57, 0.0, '1994-11-29'),
                           ('Hayward', 54, 37, 0.0, '1994-11-29');
```

However, that is not the only place VALUES clause can be useful.

# As a source of rows

```sql
SELECT * FROM (
    VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27'),
           ('San Francisco', 43, 57, 0.0, '1994-11-29'),
           ('Hayward', 54, 37, 0.0, '1994-11-29')
           ) AS t;
```

VALUES clause basically creates a source of records (like a table or view).

