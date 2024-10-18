-- This script creates a table named 'users' if it does not already exist.
-- The 'users' table has the following columns:
-- 1. id: An integer that auto-increments and serves as the primary key.
-- 2. email: A varchar field with a maximum length of 255 characters, which must be unique and not null.
-- 3. name: A varchar field with a maximum length of 255 characters, which can be null.
-- 4. country: An enum field that can only take one of the following values: 'US', 'CA', 'MX', and cannot be null.

    CREATE Table if NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country enum('US', 'CA', 'MX') DEFAULT 'US' NOT NULL
);