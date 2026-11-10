# Day 01 — MySQL Basics

**Date:** 2026-11-10

## Topics Covered
1. Listing, creating, selecting and switching databases (`SHOW DATABASES`, `CREATE DATABASE`, `SELECT DATABASE()`, `USE`)
2. Comments in MySQL: `--`, `#` and `/* ... */`
3. Creating a table with constraints (`NOT NULL`, `UNIQUE`, `DEFAULT`)
4. Inspecting tables (`DESCRIBE`, `SHOW TABLES`)
5. Inserting data: without a column list vs. with a column list
6. Reading data with `SELECT *`
7. Deleting with `DROP DATABASE` / `DROP TABLE`

## Script
| File | What it does |
|------|--------------|
| [database&tables.sql](database&tables.sql) | Creates the `WMS` database and `items` table, inserts rows, selects, drops |

## Key Takeaways
- Avoid special symbols (like `-`) in database names; if you use them you must wrap the name in backticks: `` USE `Abhi-DB`; ``
- `INSERT INTO table VALUES (...)` without column names needs a value for **every** column.
- `INSERT INTO table (col1, col2) VALUES (...)` lets skipped columns take their `DEFAULT` value.
- `DROP` permanently deletes a database or table and its data.
