-- http://www.postgresqltutorial.com/postgresql-having/

-- The WHERE clause is applied to rows while the HAVING clause is applied to groups of rows
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;

-- Having clause with COUNT example
SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;
