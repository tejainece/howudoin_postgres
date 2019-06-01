+++
title: "Postgres User management"
description: "User creation, changing password, giving accces, etc"
+++

# Create user

Create a user **learn** with password **t**:

```sql
CREATE USER learn WITH PASSWORD 't';
```

Create user with database and user creation permissions:

```sql
CREATE USER learner CREATEDB CREATEUSER WITH PASSWORD 't';
```

# Delete existing user

```sql
DROP USER learn;
```

# Database creation permission

```sql
ALTER USER learn CREATEDB;
```

# User creation permission

```sql
ALTER USER learn CREATEUSER;
```