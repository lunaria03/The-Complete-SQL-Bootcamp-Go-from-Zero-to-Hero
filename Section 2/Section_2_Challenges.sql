/* Section 2: SQL Statement Fundamentals */


/* Challenge: SELECT */
/* We want to send out a promotional email to our existing customers.
   Use a SELECT statement to grab the first and last names of every customer and their email addresses. */
SELECT first_name,last_name,email FROM customer;


/* Challenge: SELECT DISTINCT */
/* An Australian visitor isn't familiar with MPAA movie ratings (e.g. PG< PG-13, R, etc.)
   We want to know the types of ratings we have in our database.
   What ratings fo we have available? */
SELECT DISTINCT rating FROM film;


