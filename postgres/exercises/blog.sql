CREATE TABLE users (
  id SERIAL UNIQUE NOT NULL PRIMARY KEY ,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE posts (
  id SERIAL NOT NULL PRIMARY KEY,
  title VARCHAR(255),
  content TEXT,

  user_id INT NOT NULL,
  FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments (
  id SERIAL NOT NULL PRIMARY KEY,
  content TEXT,

  post_id INT NOT NULL,
  FOREIGN KEY(post_id) REFERENCES posts(id),

  user_id INT NOT NULL,
  FOREIGN KEY(user_id) REFERENCES users(id),

  --constraints
  UNIQUE(user_id, content)
);

CREATE TABLE categories (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR NOT NULL UNIQUE,
  description TEXT
);

CREATE TABLE category_post (
  category_id INT NOT NULL,
  FOREIGN KEY(category_id) REFERENCES categories(id),

  post_id INT NOT NULL,
  FOREIGN KEY(post_id) REFERENCES posts(id)
);

/* INSERT DATA */

INSERT INTO users (name, email) VALUES
  ('Ricardo', 'Icie_Luettgen39@hotmail.com'),
  ('Annetta', 'Eleonore.McGlynn@hotmail.com'),
  ('Delilah', 'Alec.Thompson85@yahoo.com'),
  ('Maverick', 'Rosina31@gmail.com'),
  ('Destany', 'Gino25@hotmail.com'),
  ('Jettie', 'Emmett.Champlin26@yahoo.com'),
  ('Carolina', 'Antonia_McDermott@yahoo.com'),
  ('Mazie', 'Gloria.Ward33@gmail.com');

INSERT INTO posts(title, content, user_id) VALUES
  ('mollitia', 'voluptas fugiat molestiae', (SELECT id FROM users WHERE name = 'Ricardo')),
  ('doloremque', 'non eius praesentium', (SELECT id FROM users WHERE name = 'Annetta')),
  ('officiis', 'rerum voluptatem eaque', (SELECT id FROM users WHERE name = 'Maverick')),
  ('possimus', 'tempore est aut', (SELECT id FROM users WHERE name = 'Jettie')),
  ('ut', 'accusantium voluptatibus ut', (SELECT id FROM users WHERE name = 'Carolina')),
  ('perspiciatis', 'quo sit quia', (SELECT id FROM users WHERE name = 'Mazie')),
  ('consequatur', 'cumque modi consequuntur', (SELECT id FROM users WHERE name = 'Ricardo')),
  ('qui', 'odit in quam', (SELECT id FROM users WHERE name = 'Destany'));

INSERT INTO comments(content, user_id, post_id) VALUES
  ('illum molestiae sapiente', 1, 2),
  ('est ut voluptates', 3, 2),
  ('pariatur ad doloremque', 4, 1),
  ('minus necessitatibus quia', 1, 3),
  ('quaerat dolor id', 5, 6),
  ('quaerat dolor id', 2, 6);

INSERT INTO categories(name, description) VALUES
  ('Movies', 'autem nemo qui'),
  ('Travels', 'et molestiae quod'),
  ('Technology', 'sapiente dolor ut'),
  ('Life Style', 'laborum corrupti repellendus'),
  ('Cars', 'iure quia hic'),
  ('Politics', 'voluptas maiores nobis'),
  ('Food', 'ea voluptatem impedit'),
  ('Social', 'ea voluptatem similique');

INSERT INTO category_post(category_id, post_id) VALUES
  (1, 3),
  (3, 2),
  (4, 5),
  (3, 1),
  (4, 1);

/* SELECTS */

SELECT * FROM users;

SELECT * FROM posts;

SELECT * FROM categories;

SELECT * FROM posts WHERE user_id = (SELECT id FROM users WHERE name = 'Ricardo');

SELECT * FROM comments;

SELECT * FROM category_post;

-- ==========================================

DROP TABLE IF EXISTS users, posts, comments, categories, category_post;
