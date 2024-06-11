SELECT rental_date, inventory_id, customer_id
FROM rental
WHERE customer_id = (SELECT customer_id FROM customer WHERE first_name = 'Tom');
