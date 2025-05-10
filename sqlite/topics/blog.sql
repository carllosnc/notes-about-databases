DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS blogs;
DROP TABLE IF EXISTS posts;

---

CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
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

  FOREIGN KEY (user_id)
    REFERENCES users (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  blog_id INTEGER NOT NULL,

  FOREIGN KEY (blog_id)
    REFERENCES blogs (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO users ("name", "email", "password", "created_at", "updated_at")
VALUES
  ('John Doe', 'john@example.com', 'password', '2020-01-01', '2020-01-01'),
  ('Jane Doe', 'jane@example.com', 'password', '2020-01-01', '2020-01-01'),
  ('Bob Smith', 'bob@example.com', 'password', '2020-01-01', '2020-01-01'),
  ('Alice Johnson', 'alice@example.com', 'password', '2020-01-01', '2020-01-01'),
  ('David Lee', 'david@example.com', 'password', '2020-01-01', '2020-01-01'),
  ('Emily Brown', 'emily@example.com', 'password', '2020-01-01', '2020-01-01');

INSERT INTO blogs ("title", "content", "created_at", "updated_at", "user_id")
VALUES
  ('My Blog', 'This is my blog.', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'John Doe')),
  ('My Second Blog', 'This is my second blog.', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'Jane Doe')),
  ('My Third Blog', 'This is my third blog.', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'Bob Smith')),
  ('My Fourth Blog', 'This is my fourth blog.', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'Alice Johnson')),
  ('My Fifth Blog', 'This is my fifth blog.', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'David Lee')),
  ('My Sixth Blog', 'This is my sixth blog.', '2020-01-01', '2020-01-01', (SELECT id FROM users WHERE name = 'Emily Brown'));

--

SELECT * FROM users;
SELECT * FROM blogs;

--

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS blogs;
DROP TABLE IF EXISTS posts;

