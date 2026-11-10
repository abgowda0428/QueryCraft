-- ============================================================
-- Day 01 | 02 — Inserting Data
-- Topics: INSERT INTO (single row, multiple rows, defaults)
-- Prereq: run 01_databases_and_tables.sql first
-- ============================================================

USE querycraft;

-- Single row, listing every column we provide
INSERT INTO students (first_name, last_name, email, gender, birth_date, city, marks)
VALUES ('Abhishek', 'Gowda', 'abhishek@example.com', 'M', '2001-04-28', 'Bengaluru', 88.50);

-- Multiple rows in one statement (faster than many single inserts)
INSERT INTO students (first_name, last_name, email, gender, birth_date, city, marks)
VALUES
    ('Priya',  'Sharma', 'priya@example.com',  'F', '2002-01-15', 'Mysuru',    92.00),
    ('Rahul',  'Verma',  'rahul@example.com',  'M', '2000-11-03', 'Hyderabad', 76.25),
    ('Ananya', 'Rao',    'ananya@example.com', 'F', '2001-07-22', 'Chennai',   81.75),
    ('Kiran',  'Kumar',  'kiran@example.com',  'M', '2002-09-09', 'Mysuru',    68.00);

-- Omitting columns -> DEFAULT values (city = 'Bengaluru', is_active = TRUE) or NULL
INSERT INTO students (first_name, last_name, email)
VALUES ('Sneha', 'Patil', 'sneha@example.com');

-- Verify
SELECT * FROM students;
SELECT COUNT(*) AS total_students FROM students;
