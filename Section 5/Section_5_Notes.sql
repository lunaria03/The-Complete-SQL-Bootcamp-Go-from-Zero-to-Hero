/* Section 5: JOINS */


/* AS Statement */
/* Use for aliasing for a column or result. */
SELECT amount AS rental_price FROM payment; /* This will resulting the amount column name will change into rental_price */


/* Inner Joins */
/* Use for selects records that have matching values in both tables */
SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id; /* This resulting just the matches values in customer_id from both tables */


/* Full Outer Joins */
/* This will returns all records when there is a match in left both table records. */
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id


/* Left Outer Join */
/* This will returns all records from left table and the matching records from the right table.  */
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory 
ON inventory.film_id = film.film_id /* There is Right Joins that have effect of the opposite of this statement */


/* UNION */
/* This operator is used to combine the result of two or more SELECT statements. Every SELECT statement within UNION
   must have the same number of column. */
SELECT * FROM customer
UNION
SELECT * FROM film;
