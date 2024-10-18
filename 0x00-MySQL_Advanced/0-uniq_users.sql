-- This script creates a table named 'users' if it does not already exist.
-- The 'users' table has the following columns:
-- - id: An integer that auto-increments and serves as the primary key.
-- - email: A VARCHAR field with a maximum length of 255 characters, which must be unique and cannot be null.
-- - name: A VARCHAR field with a maximum length of 255 characters, which cannot be null.
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255));
