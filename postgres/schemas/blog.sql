DROP SCHEMA IF EXISTS site CASCADE;

CREATE SCHEMA IF NOT EXISTS site;

CREATE TYPE site.role AS ENUM ('owner', 'editor', 'viewer');

CREATE TABLE site.users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  role site.role NOT NULL DEFAULT 'viewer',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE site.blogs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name VARCHAR(255) NOT NULL,
  url VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  user_id UUID NOT NULL
);

CREATE TABLE site.categories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  blog_id UUID NOT NULL
);

CREATE TABLE site.posts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  tags VARCHAR(255)[] NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  user_id UUID NOT NULL,
  blog_id UUID NOT NULL,
  category_id UUID NOT NULL
);

CREATE TABLE site.comments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  content TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  post_id UUID NOT NULL,
  user_id UUID NOT NULL
);

---==========================================================

-- blog
ALTER TABLE site.blogs
  ADD CONSTRAINT blog_user_fk
  FOREIGN KEY (user_id)
  REFERENCES site.users (id);

-- post
ALTER TABLE site.posts
  ADD CONSTRAINT post_user_fk
  FOREIGN KEY (user_id)
  REFERENCES site.users (id);

ALTER TABLE site.posts
  ADD CONSTRAINT post_blog_fk
  FOREIGN KEY (blog_id)
  REFERENCES site.blogs (id);

ALTER TABLE site.posts
  ADD CONSTRAINT post_category_fk
  FOREIGN KEY (category_id)
  REFERENCES site.categories (id);

-- category
ALTER TABLE site.categories
  ADD CONSTRAINT category_blog_fk
  FOREIGN KEY (blog_id)
  REFERENCES site.blogs (id);

-- comments
ALTER TABLE site.comments
  ADD CONSTRAINT comment_post_fk
  FOREIGN KEY (post_id)
  REFERENCES site.posts (id);

ALTER TABLE site.comments
  ADD CONSTRAINT comment_user_fk
  FOREIGN KEY (user_id)
  REFERENCES site.users (id);

---==========================================================

INSERT INTO site.users (name, email, password, role)
  VALUES ('John Doe', 'john@doe.com', 'password', 'owner');

INSERT INTO site.blogs (name, url, user_id)
  VALUES ('My Blog', 'http://my-blog.com', (SELECT id FROM site.users WHERE email = 'john@doe.com'));

-- create some categories
INSERT INTO site.categories (name, blog_id) VALUES
  ('Technology', (SELECT id FROM site.blogs WHERE name = 'My Blog')),
  ('Lifestyle', (SELECT id FROM site.blogs WHERE name = 'My Blog')),
  ('Food', (SELECT id FROM site.blogs WHERE name = 'My Blog')),
  ('Travel', (SELECT id FROM site.blogs WHERE name = 'My Blog'));

-- create some posts
INSERT INTO site.posts (title, content, tags, user_id, blog_id, category_id) VALUES

  ('My first post', 'This is my first post', ARRAY['tech', 'computer', 'software'],
  (SELECT id FROM site.users WHERE email = 'john@doe.com'),
  (SELECT id FROM site.blogs WHERE name = 'My Blog'),
  (SELECT id FROM site.categories WHERE name = 'Technology')),

  ('My second post', 'This is my second post', ARRAY['life', 'house', 'food'],
  (SELECT id FROM site.users WHERE email = 'john@doe.com'),
  (SELECT id FROM site.blogs WHERE name = 'My Blog'),
  (SELECT id FROM site.categories WHERE name = 'Lifestyle')),

  ('My third post', 'This is my third post', ARRAY['meat', 'food', 'cooking', 'kitchen'],
  (SELECT id FROM site.users WHERE email = 'john@doe.com'),
  (SELECT id FROM site.blogs WHERE name = 'My Blog'),
  (SELECT id FROM site.categories WHERE name = 'Food')),

  ('My fourth post', 'This is my fourth post', ARRAY['car', 'drive', 'driving', 'car-repair'],
  (SELECT id FROM site.users WHERE email = 'john@doe.com'),
  (SELECT id FROM site.blogs WHERE name = 'My Blog'),
  (SELECT id FROM site.categories WHERE name = 'Travel'));

---==============================================

SELECT site.users.name, site.posts.title, site.blogs.name AS blog_name INTO site.blog_posts FROM site.users
INNER JOIN site.blogs ON site.blogs.user_id = site.users.id
INNER JOIN site.categories ON site.categories.blog_id = site.blogs.id
INNER JOIN site.posts ON site.posts.category_id = site.categories.id;

SELECT * FROM site.blog_posts;

---==============================================

-- this is example of transaction
BEGIN;

SELECT * FROM site.users WHERE name = 'John Doe';

UPDATE site.users SET name = 'Jane Doe' WHERE name = 'John Doe';

ROLLBACK;

SELECT * FROM site.users WHERE name = 'John Doe';

END;

---==============================================

DROP SCHEMA IF EXISTS site CASCADE;
