-- This script prepares a MySQL server for the project.

-- Creates database
DROP DATABASE IF EXISTS project_db;
CREATE DATABASE IF NOT EXISTS project_db;

-- Creates user
CREATE USER IF NOT EXISTS 'test_user'@'localhost' IDENTIFIED BY 'Password123@';

-- Grants user privileges
GRANT ALL PRIVILEGES ON project_db.* TO 'test_user'@'localhost';
GRANT SELECT ON performance_schema.* TO 'test_user'@'localhost';