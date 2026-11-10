# Day 01 — MySQL Basics

**Date:** 2026-11-10

## Topics Covered
1. What SQL / a relational database is
2. Creating and switching databases
3. Creating tables, choosing data types, constraints (`PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `DEFAULT`, `AUTO_INCREMENT`)
4. Inserting rows with `INSERT INTO`
5. Reading data with `SELECT`, column aliases, `DISTINCT`, and simple expressions

## Scripts
| File | What it does |
|------|--------------|
| [01_databases_and_tables.sql](01_databases_and_tables.sql) | Create DB, create `students` table, inspect it |
| [02_insert_data.sql](02_insert_data.sql) | Insert sample rows (single + multi-row) |
| [03_basic_select.sql](03_basic_select.sql) | SELECT, aliases, DISTINCT, expressions |

Run in order: `01` → `02` → `03`.

## Key Takeaways
- SQL keywords are case-insensitive, but writing them in UPPERCASE keeps queries readable.
- Every statement ends with `;`.
- `VARCHAR(n)` for text, `DECIMAL(p,s)` for exact numbers like marks or money — never `FLOAT` for money.
- `AUTO_INCREMENT` + `PRIMARY KEY` gives each row a unique id automatically.
- Avoid `SELECT *` in real queries — name the columns you need.

## Questions / To Revisit
- Difference between `DATETIME` and `TIMESTAMP` (time zones).
- When to use `CHAR` vs `VARCHAR`.
