/* Section 2: SQL Statement Fundamentals */


/* SELECT Statement */
/* Use for Selecting all column or specific column from table */
SELECT * FROM actor; /* This will resulting all column from actor's table */
SELECT first_name from actor; /* This will resulting just first_name column from actor's table */


/* SELECT DISTINCT */
/* Use for showing unique value from column */
SELECT DISTINCT release_year FROM film;


/* SELECT WHERE */
/* WHERE is used to making condition to filter the rows returned from SELECT statement. 
   You can use Boolean Operators such as AND and OR for making condintions. */
SELECT * FROM film
WHERE rental_rate > 1 AND replacement_cost >= 4.99;


/* ORDER BY and LIMIT */
/* ORDER BY is used to sort rows based on a column value (add DESC or ASC after column name).  
   LIMIT is used to limit the number of rows returned for a query */
SELECT * FROM customer
ORDER BY customer_id DESC
LIMIT 5; /* This will resulting just 5 rows in descending order */


/* BETWEEN */
/* Use for selects values within a given range */
SELECT * FROM payment
WHERE amount BETWEEN 1 AND 5; /* This will resulting amount column with values range from 1-5 */


/* IN */
/* Use for specify multiple values from a column in a WHERE clause */
SELECT * FROM payment
WHERE amount IN (0.99,1.99,2.99); /* If just 2 options you can also use OR in WHERE statement */


/* LIKE and ILIKE */
/* Allows us to perform pattern matching against string data.
You can use '%'(matches any sequence of characters) and '_'(just matches any single character). */
SELECT * FROM customer
WHERE first_name LIKE 'J%'; /* It will resulting value that starts with J. You can also use ILIKE to get the opposite result */
