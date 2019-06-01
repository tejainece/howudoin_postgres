+++
title: "Postgres Table management"
description: ""
+++

# Change ownership

Change ownership of table `employee` in current database to user/role `learn`:

```sql
ALTER TABLE employee OWNER TO learn;
```