/* Section 6: Advanced SQL Commands */


/* Timestamp and Extract */
/* EXTRACT() is used to extract or obtain a sub component of a date value.
   AGE() is used to calculates and returns the current age given a timestamp. 
   TO_CHAR() is general function to convert data types to text. */
/* Example of EXTRACT() */
SELECT EXTRACT(YEAR FROM payment_date) FROM payment;

/* Example of AGE() */
SELECT AGE(payment_date) FROM payment;

/* Example of TO_CHAR() */
SELECT TO_CHAR(payment_date, 'DD-MM-YYYY') FROM payment;


/* Mathematical Functions and Operators */
/* Use for doing mathematical expression through the column. */
SELECT ROUND(rental_rate/replacement_cost,2)*100 AS percent_cost FROM film;


/* String Functions and Operators */
/* Use for edit, combine, and alter text data columns. */
SELECT first_name || ' ' || last_name AS full_name FROM customer;


/* SubQuery */
/* Allows us to construct complex queries, doing query inside query. */
SELECT film_id,title FROM film
WHERE film_id IN
(SELECT inventory.film_id FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30');


/* Self-Join */
/* Join of two copies of the same table. */
SELECT f1.title, f2.title,f1.length
FROM film AS f1
INNER JOIN film AS f2 
ON f1.film_id = f2.film_id 
AND f1.length = f2.length;
