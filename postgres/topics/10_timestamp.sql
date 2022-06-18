-- Timestamp

USE postgres;
DROP DATABASE IF EXISTS mytest;
CREATE DATABASE mytest;
USE mytest;

-- ==========================================

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP
);

INSERT INTO users(name, email, created_at) VALUES
  ('Gage', 'Jenifer_Larkin25@yahoo.com', now()),
  ('Enid', 'Molly.Hilpert99@hotmail.com', now()),
  ('Quinton', 'Ervin94@yahoo.com', now()),
  ('Genesis', 'Kayden_Bernier@hotmail.com', now());

SELECT * FROM users;

-- ==========================================

USE postgres;
DROP DATABASE mytest;
