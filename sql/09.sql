/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT
    staff.first_name,
    staff.last_name,
    sum(payment.amount) AS "sum"
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
WHERE CAST(payment.payment_date AS TEXT) LIKE '2020-01-%'
GROUP BY (staff.first_name, staff.last_name)
ORDER BY "sum" ASC;
