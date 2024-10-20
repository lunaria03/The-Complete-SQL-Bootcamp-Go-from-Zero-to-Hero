/* Section 6: Advanced SQL Commands */
/* Challenge #1: During which months did payments occur? 
   Format your answer to return back the full month name. */
SELECT DISTINCT(TO_CHAR(payment_date,'MONTH')) AS month FROM payment;

/* Challenge #2: How many payments occured on a Monday? */
SELECT COUNT(payment_id) 
FROM payment
WHERE (TO_CHAR(payment_date,'FMDAY')) = 'MONDAY';
