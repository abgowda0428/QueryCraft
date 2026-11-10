-- ============================================================
-- Day 01 | 03 — Basic SELECT
-- Topics: SELECT columns, aliases, DISTINCT, expressions, CONCAT
-- Prereq: run 01 and 02 first
-- ============================================================

USE querycraft;

-- 1. All columns (fine for exploring, avoid in real queries)
SELECT * FROM students;

-- 2. Specific columns
SELECT first_name, last_name, city
FROM students;

-- 3. Column aliases with AS
SELECT
    first_name AS `First Name`,
    marks      AS score
FROM students;

-- 4. DISTINCT — unique values only
SELECT DISTINCT city
FROM students;

-- 5. Expressions / calculated columns
SELECT
    first_name,
    marks,
    marks + 5           AS marks_with_grace,
    ROUND(marks / 10, 1) AS out_of_10
FROM students;

-- 6. String functions: combine columns
SELECT CONCAT(first_name, ' ', last_name) AS full_name, email
FROM students;

-- 7. Date function: age in years
SELECT
    first_name,
    birth_date,
    TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age
FROM students;

-- 8. SELECT without a table (MySQL as a calculator)
SELECT 10 * 3 AS result, NOW() AS now_time, VERSION() AS mysql_version;
