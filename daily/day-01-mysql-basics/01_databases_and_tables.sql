-- ============================================================
-- Day 01 | 01 — Databases & Tables
-- Topics: CREATE DATABASE, USE, CREATE TABLE, data types, constraints
-- ============================================================

-- See what databases exist on the server
SHOW DATABASES;

-- Create (if needed) and switch to the practice database
CREATE DATABASE IF NOT EXISTS querycraft;
USE querycraft;
SELECT DATABASE() AS current_db;

-- Start fresh so this script can be re-run safely
DROP TABLE IF EXISTS students;

-- Create a table
CREATE TABLE students (
    student_id   INT           PRIMARY KEY AUTO_INCREMENT,  -- unique id, generated automatically
    first_name   VARCHAR(50)   NOT NULL,                    -- required
    last_name    VARCHAR(50)   NOT NULL,
    email        VARCHAR(100)  UNIQUE,                      -- no two students share an email
    gender       ENUM('M', 'F', 'Other'),
    birth_date   DATE,
    city         VARCHAR(50)   DEFAULT 'Bengaluru',         -- used when no value is given
    marks        DECIMAL(5, 2),                             -- 5 digits, 2 after the point: max 999.99
    is_active    BOOLEAN       DEFAULT TRUE,
    created_at   TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);

-- Inspect the table
SHOW TABLES;
DESCRIBE students;
SHOW CREATE TABLE students;
