/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT 
    c.name,
    count(film.film_id) AS "sum"
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film ON film.film_id = fc.film_id
JOIN language lang ON film.language_id = lang.language_id
WHERE lang.name = 'English'
GROUP BY (c.name)
ORDER BY (name);


