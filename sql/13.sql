/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */
SELECT
    film.film_id,
    film.title,
    film.language_id,
    lang.name
FROM film
JOIN language lang on film.language_id = lang.language_id
WHERE film.title SIMILAR TO '(K|Q)%'
ORDER BY film.title;
