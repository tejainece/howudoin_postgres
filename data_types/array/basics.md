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

# Unnest ARRAY into rows

```sql
SELECT unnest(ARRAY[1, 2, 3, 4, 5]);
```