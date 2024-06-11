CREATE OR REPLACE FUNCTION get_customer_total_payment(name TEXT)
RETURNS TABLE (total DOUBLE PRECISION)
AS $$

SELECT SUM(payment.amount)
FROM customer
INNER JOIN rental
ON customer.customer_id = rental.customer_id
INNER JOIN payment
ON rental.rental_id = payment.rental_id
WHERE customer.first_name = $1;

$$ LANGUAGE sql;

SELECT '$' || total AS total_payment FROM get_customer_total_payment('Dave');
SELECT '$' || total AS total_payment FROM get_customer_total_payment('Jack');
SELECT '$' || total AS total_payment FROM get_customer_total_payment('Mary');

DROP FUNCTION get_customer_total_payment(name TEXT);
