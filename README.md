# QueryCraft 🛠️

My day-by-day journey learning **SQL with MySQL** — every script I write while studying, plus notes on each topic.

## 📁 Project Structure

```
QueryCraft/
├── setup/          # One-time scripts: create the practice database
├── datasets/       # Reusable sample schemas + seed data used across days
├── daily/          # One folder per study day (notes + SQL scripts)
│   └── day-01-mysql-basics/
├── practice/       # Exercises & interview-style problems
└── cheatsheets/    # Quick-reference syntax notes
```

### Conventions
- Daily folders: `daily/day-NN-topic-name/`
- Each day has a `README.md` (what I learned) and numbered scripts: `01_*.sql`, `02_*.sql`, ...
- All scripts target **MySQL 8.x** and run inside the `querycraft` database.

## ▶️ How to Run

```bash
# 1. Create the practice database (once)
mysql -u root -p < setup/00_create_database.sql

# 2. Run any day's script
mysql -u root -p querycraft < daily/day-01-mysql-basics/01_databases_and_tables.sql
```
Or open the files in MySQL Workbench and execute them.

## 📅 Progress Log

| Day | Topic | Folder |
|-----|-------|--------|
| 01 | MySQL basics: databases, comments, tables, INSERT, SELECT, DROP | [day-01-mysql-basics](daily/day-01-mysql-basics) |

## 🗺️ Roadmap
- [x] Databases, tables & data types
- [x] INSERT & basic SELECT
- [ ] WHERE, operators, ORDER BY, LIMIT
- [ ] UPDATE, DELETE & constraints
- [ ] Aggregate functions & GROUP BY / HAVING
- [ ] JOINs
- [ ] Subqueries & CTEs
- [ ] Window functions
- [ ] Indexes & query optimization
- [ ] Views, stored procedures, triggers
