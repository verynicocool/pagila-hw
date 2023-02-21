/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT
   film.title,
   film.film_id,
   count(fa.film_id) AS "actor_count"
FROM
    film
JOIN film_actor fa ON film.film_id=fa.film_id
GROUP BY (film.title, film.film_id)
ORDER BY actor_count, title;
   
