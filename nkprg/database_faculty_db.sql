CREATE DATABASE faculty_db;

USE faculty_db;

CREATE TABLE faculty (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  title VARCHAR(100),
  department VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(50),
  bio TEXT,
  photo VARCHAR(255)
);
