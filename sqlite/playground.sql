CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  age INTEGER NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS blogs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,

  user_id INTEGER NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO users ("name", "email", "password", "age", "created_at", "updated_at")
VALUES
  ('John Doe', 'john@example.com', 'password', 25, '2020-01-01', '2020-01-01'),
  ('Jane Doe', 'jane@example.com', 'password', 30, '2020-01-01', '2020-01-01'),
  ('Bob Smith', 'bob@example.com', 'password', 35, '2020-01-01', '2020-01-01'),
  ('Alice Johnson', 'alice@example.com', 'password', 40, '2020-01-01', '2020-01-01'),
  ('David Lee', 'david@example.com', 'password', 50, '2020-01-01', '2020-01-01'),
  ('Emily Brown', 'emily@example.com', 'password', 60, '2020-01-01', '2020-01-01');

INSERT INTO blogs ("title", "content", "created_at", "updated_at", "user_id")
VALUES
  ('My first blog', 'This is my first blog', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'John Doe')),
  ('My second blog', 'This is my second blog', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'Jane Doe')),
  ('My third blog', 'This is my third blog', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'Bob Smith')),
  ('My fourth blog', 'This is my fourth blog', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'Alice Johnson')),
  ('My fifth blog', 'This is my fifth blog', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'David Lee')),
  ('My sixth blog', 'This is my sixth blog', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'Emily Brown'));

