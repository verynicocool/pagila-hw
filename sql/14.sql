/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT film.title
FROM film
JOIN film_category fc ON fc.film_id = film.film_id
JOIN category c ON c.category_id = fc.category_id
WHERE c.name = 'Family'
ORDER BY film.title;
