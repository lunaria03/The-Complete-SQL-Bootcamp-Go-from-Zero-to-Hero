/* Section 10: Conditional Expressions and Procedures */


/* CASE */
/* To only execute SQL code when certain conditions are met.*/
SELECT 
SUM(CASE rental_rate
    WHEN 0.99 THEN 1
    ELSE 0
END) AS bargains,
SUM(CASE rental_rate
    WHEN 2.99 THEN 1
    ELSE 0
END) AS regular,
SUM(CASE rental_rate
    WHEN 4.99 THEN 1
    ELSE 0
END) AS premium
FROM film;


/* COALESCE */
/* This function accepts an unlimited number of arguments and returns the first argument that is not null.
   This argument only return null if all of the arguments are null. */
SELECT item,(price - COALESCE(discount,0)); /* This will resulting price - discount if not null, if null it will price - 0 */


/* CAST */
/* This operator lets you convert from one data type into another. */
SELECT CAST(inventory_id AS VARCHAR) FROM rental;


/* NULLIF */
/* This function takes in 2 inputs and returns NULL if both are equal, otherwise it returns the first argument passed. */
SELECT (
SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END),0)
) AS department_ratio
FROM depts ; /* Checking the second CASE if it = 0 it will resulting NULL */


/* Views */
/* It is a virtual table that not store data physically, it simply stores the query. */
CREATE VIEW customer_info AS
SELECT first_name,last_name,address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id; /* This is will creating a View table */

SELECT * FROM customer_info; /* This is will show the View table named customer_info */