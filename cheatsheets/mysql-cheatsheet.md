# MySQL Cheatsheet

## Databases
```sql
SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS db_name;
USE db_name;
SELECT DATABASE();          -- which DB am I in?
DROP DATABASE IF EXISTS db_name;
```

## Tables
```sql
SHOW TABLES;
DESCRIBE table_name;        -- or: DESC table_name;
SHOW CREATE TABLE table_name;
CREATE TABLE t (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50) NOT NULL);
DROP TABLE IF EXISTS t;
```

## Common Data Types
| Type | Use for |
|------|---------|
| `INT`, `BIGINT` | Whole numbers |
| `DECIMAL(p,s)` | Exact numbers (money) |
| `FLOAT`, `DOUBLE` | Approximate numbers |
| `VARCHAR(n)` | Variable-length text |
| `CHAR(n)` | Fixed-length text |
| `TEXT` | Long text |
| `DATE`, `DATETIME`, `TIMESTAMP` | Dates & times |
| `BOOLEAN` | Alias of `TINYINT(1)` |
| `ENUM('a','b')` | One value from a fixed list |

## Insert & Select
```sql
INSERT INTO t (col1, col2) VALUES (v1, v2), (v3, v4);
SELECT * FROM t;
SELECT col1 AS alias FROM t;
SELECT DISTINCT col1 FROM t;
```
