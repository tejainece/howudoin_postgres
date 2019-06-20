+++
title: "Arrays"
description: "Array declaration, usage, instantiation and querying"
+++

# Create Array field

```sql
CREATE TABLE Person (
    name TEXT,
    numbers INT[]
);
```

# Instantiating an ARRAY

```sql
SELECT ARRAY[1, 2, 3, 4, 5];
```

```sql
INSERT INTO Person VALUES ('Teja', ARRAY[1, 2, 3, 4, 5]);
```

# Length of array

```sql
SELECT *, array_length(numbers, 1) FROM Person;
```

```sql
SELECT * FROM Person WHERE array_length(numbers, 1) > 3;
```

# Append/Concat

```sql
UPDATE Person SET numbers = array_append(numbers, 9) WHERE name = 'Mark';
```

```sql
UPDATE Person SET numbers = array_cat(numbers, ARRAY[10, 11]) WHERE name = 'Mark';
```

```sql
UPDATE Person SET numbers = numbers || 12 WHERE name = 'Mark';
UPDATE Person SET numbers = numbers || ARRAY[13, 14, 15] WHERE name = 'Mark';
```

# Contains check

```sql
SELECT * FROM Person WHERE numbers @> ARRAY [3];
```

# Unnest ARRAY into rows

```sql
SELECT unnest(ARRAY[1, 2, 3, 4, 5]);
```