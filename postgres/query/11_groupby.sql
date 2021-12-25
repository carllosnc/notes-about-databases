-- http://www.postgresqltutorial.com/postgresql-group-by/

USE dvdrental;

-- example 01
SELECT customer_id, SUM(amount) AS total
FROM payment
GROUP BY customer_id
LIMIT 20;

-- example 02
SELECT customer_id, SUM(amount) AS total
FROM payment
GROUP BY customer_id
ORDER BY total ASC
LIMIT 20;

-- Using GROUP BY clause with the JOIN clause
SELECT first_name || '' || last_name full_name, SUM(amount) amount FROM payment
INNER JOIN customer USING (customer_id)
GROUP BY full_name
ORDER BY amount DESC;
