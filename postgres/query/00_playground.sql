--- Get number of movies by actors

SELECT actor.first_name AS actors, COUNT(film) AS number_of_movies
FROM actor
INNER JOIN film_actor
  ON actor.actor_id = film_actor.actor_id
INNER JOIN film
  ON film.film_id = film_actor.film_id
GROUP BY actor.first_name
ORDER BY actor.first_name ASC;

