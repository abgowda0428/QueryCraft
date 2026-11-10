-- ============================================================
-- QueryCraft | Setup
-- Creates the practice database used by every script in this repo.
-- Run once:  mysql -u root -p < setup/00_create_database.sql
-- ============================================================

CREATE DATABASE IF NOT EXISTS querycraft
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_0900_ai_ci;

USE querycraft;

SELECT 'querycraft database ready ✅' AS status;
