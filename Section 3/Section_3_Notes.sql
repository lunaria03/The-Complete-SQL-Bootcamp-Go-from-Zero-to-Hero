/* Section 3: GROUP BY statements */


/* Aggregation Functions */
/* Use for take multiple inputs and return a single output.
   You can use AVG(), COUNT(), MAX(), MIN(), and SUM().*/
SELECT AVG(replacement_cost) FROM film; /* This will resulting average number of this column.
   You can also adding ROUND() operator to specify how many number behind the comma. */
SELECT ROUND(AVG(replacement_cost), 2) FROM film; /* This will resulting 2 number behind comma */

/* GROUP BY */
/* Use for groups rows that have the same values into summary rows. This Statement is often used
   with aggregate functions. */
SELECT customer_id,staff_id,SUM(amount) FROM payment
GROUP BY staff_id,customer_id; /* This will resulting 3 column from SELECT statement and grouping
   by staff_id and customer_id where the amount is being sum by the group by statement. */


/* HAVING */
/* Use for aggregate result as a filter along with GROUP BY. */
SELECT customer_id, SUM(amount), FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100; /* This will resulting a filter that just the summing amount more than 100 by the 
GROUP BY statement is being shown. */
