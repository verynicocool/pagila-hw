/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT
    film.title,
    sum(pay.amount) AS "profit"
FROM film
JOIN inventory inv USING (film_id)
JOIN rental r USING (inventory_id)
JOIN payment pay USING (rental_id)
GROUP BY film.title
ORDER BY PROFIT DESC;
