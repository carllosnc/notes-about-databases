CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  info JSON CHECK (json_valid(info))
);

INSERT INTO users (info)
VALUES
  ('{"name": "John Doe", "email": "john@example.com", "age": 25}'),
  ('{"name": "Jane Doe", "email": "jane@example.com", "age": 30}'),
  ('{"name": "Bob Smith", "email": "bob@example.com", "age": 35}'),
  ('{"name": "Alice Johnson", "email": "alice@example.com", "age": 40}'),
  ('{"name": "David Lee", "email": "david@example.com", "age": 50}'),
  ('{"name": "Emily Brown", "email": "emily@example.com", "age": 60}');

SELECT * FROM users;

-- select all names
SELECT info->>'name' FROM users;

-- select all emails
SELECT info->>'email' FROM users;

-- use json_extract to extract a specific value
SELECT json_extract(info, '$.name') FROM users;

-- use json_extract to extract a specific value
SELECT json_extract(info, '$.email') FROM users;

DROP TABLE IF EXISTS users;
