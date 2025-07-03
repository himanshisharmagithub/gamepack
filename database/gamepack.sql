-- STEP 1: Create database
CREATE DATABASE IF NOT EXISTS gamepack;

-- STEP 2: Use the database
USE gamepack;

-- STEP 3: Create 'users' table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- STEP 4: Insert test user (for login)
INSERT INTO users (username, password)
VALUES ('root', 'raman@217')
ON DUPLICATE KEY UPDATE username = username;
