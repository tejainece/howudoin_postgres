+++
title: "ENUM basics"
description: ""
+++

# Creating an ENUM

```sql
CREATE TYPE Gender AS ENUM ('Male', 'Female');
```

Labels of an ENUM are **case-sensitive**.

# Using ENUM

```sql
CREATE TABLE Student (
    name TEXT,
    gender Gender
);
```

# Setting ENUM values

```sql
INSERT INTO Student
    VALUES  ('Teja', 'Male'),
            ('Katherine', 'Female');
```

# Comparing ENUM values

```sql
SELECT * FROM Student WHERE Gender = 'Male';
```

It is also possible to perform integer comparisions on ENUMs:

```sql
SELECT * FROM Student WHERE semester < 'fourth';
```

# Add new label to ENUM

```sql
ALTER TYPE Gender ADD VALUE 'Non binary';
```

# Rename a ENUM label

```sql
ALTER TYPE Gender RENAME VALUE 'Non binary' TO 'Non-binary';
```

# Rename ENUM name

```sql
ALTER TYPE Gender RENAME TO Sex;
```