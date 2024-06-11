-- http://www.postgresqltutorial.com/postgresql-tutorial/postgresql-except/

-- Exclude ten first actors
SELECT * FROM actor EXCEPT
SELECT * FROM actor WHERE actor_id <= 10 ORDER BY actor_id LIMIT 20;

-- Exclude all movie that title starts with "A"
SELECT title FROM film EXCEPT
SELECT title FROM film WHERE title LIKE 'A%' ORDER BY title ASC;
