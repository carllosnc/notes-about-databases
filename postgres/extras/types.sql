DROP TABLE IF EXISTS movie CASCADE;
DROP TYPE IF EXISTS movie_rating CASCADE;
DROP TYPE IF EXISTS movie_genre CASCADE;

--======================================

CREATE TYPE movie_rating AS ENUM (
  'G',
  'PG',
  'PG-13',
  'R',
  'NC-17'
);

CREATE TYPE movie_genre AS ENUM (
  'Action',
  'Adventure',
  'Animation',
  'Children',
  'Comedy',
  'Crime',
  'Documentary',
  'Drama',
  'Fantasy',
  'Film-Noir',
  'Horror',
  'Musical',
  'Mystery',
  'Romance',
  'Sci-Fi',
  'Thriller',
  'War',
  'Western'
);

CREATE TABLE movie (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  rating movie_rating NOT NULL,
  genre movie_genre NOT NULL,
  release_date DATE NOT NULL,
  last_aired DATE NOT NULL,

  CONSTRAINT movie_release_date_after_last_aired CHECK (release_date < last_aired)
);

INSERT INTO movie (title, rating, genre, release_date, last_aired) VALUES
('The Shawshank Redemption', 'R', 'Crime', '1994-09-10', '1998-09-10'),
('The Godfather', 'R', 'Crime', '1972-09-02', '1978-09-02'),
('The Godfather: Part II', 'R', 'Crime', '1974-09-02', '1979-09-02'),
('Pulp Fiction', 'R', 'Crime', '1994-09-10', '1999-09-10'),
('Schindlers List', 'R', 'Crime', '1993-09-10', '1999-09-10'),
('The Dark Knight', 'R', 'Crime', '2008-09-10', '2012-09-10');

SELECT * FROM movie;

--======================================

DROP TABLE IF EXISTS movie CASCADE;
DROP TYPE IF EXISTS movie_rating CASCADE;
DROP TYPE IF EXISTS movie_genre CASCADE;
