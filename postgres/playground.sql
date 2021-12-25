-- Explore some queries

USE dvdrental;

SELECT COUNT(title) AS a_letter FROM film WHERE title LIKE 'A%'
UNION
SELECT COUNT(title) AS b_letter FROM film WHERE title LIKE 'B%';
