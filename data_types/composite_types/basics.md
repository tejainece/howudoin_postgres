+++
title: "COmposite types"
description: "Composite type declaration, usage, instantiation and querying"
+++

# Create composite type

```sql
CREATE TYPE fullname AS (
    firstname TEXT,
    familyname TEXT
);
```

# Use composite type

```sql
CREATE TABLE employee (
    name fullname,
    age smallint
);
```

# Instantiate composite type

```sql
INSERT INTO employee (name, age)
    VALUES  (('Teja', 'Gudapati')::fullname, 30),
            (('Katherine', 'Scorron'), 32);
```

# Query fields of composite type

```sql
SELECT (name).firstname || ' ' || (name).familyname, age FROM employee;
```

```sql
SELECT (name).*, age FROM employee;
```

# Updating composite type

```sql
UPDATE employee SET name.familyname = 'Scorron' 
    WHERE (name).firstname = 'Katherine';
```