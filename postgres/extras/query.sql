-- how many horror movies does Dave have rented?

/* SELECT COUNT(*) AS total
FROM customer
INNER JOIN rental
ON customer.customer_id = rental.customer_id
INNER JOIN inventory
ON rental.inventory_id = inventory.inventory_id
INNER JOIN film
ON inventory.film_id = film.film_id
INNER JOIN film_category
ON film.film_id = film_category.film_id
INNER JOIN category
ON film_category.category_id = category.category_id
WHERE customer.first_name = 'Dave' AND category.name = 'Horror'; */

-- how much does Dave have to pay for all movies he rented?

/* SELECT '$' || SUM(payment.amount) AS total_payment
FROM customer
INNER JOIN rental
ON customer.customer_id = rental.customer_id
INNER JOIN payment
ON rental.rental_id = payment.rental_id
WHERE customer.first_name = 'John'; */

-- how many filmes the actor called john has done?

/* SELECT COUNT(*) AS total FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
INNER JOIN language
WHERE actor.first_name = 'Lucille'; */

-- count how many films are in each language

SELECT language.name, COUNT(film.film_id) AS total
FROM language
LEFT JOIN film
ON language.language_id = film.language_id
GROUP BY language.name;
