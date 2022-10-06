/* SELECT */
/* Basic Syntax for SELECT Statement
   SELECT column_name FROM table_name */
SELECT first_name FROM actor 

SELECT first_name, last_name FROM actor 

SELECT last_name, first_name FROM actor 

/* To select all the columns from a table
   SELECT * FROM Table_name */
SELECT * FROM actor 

/* DISTINCT */
/* Basic Syntax for DISTINCT Statement
   SELECT DISTINCT column_name FROM table_name */
SELECT * FROM film

SELECT DISTINCT release_year FROM film

SELECT DISTINCT(release_year) FROM film

SELECT DISTINCT rental_rate FROM film

/* COUNT */
/* Basic Syntax for COUNT Statement
   SELECT COUNT(column_name) FROM table_name */
/* COUNT is verry useful when combined with DISTINCT 
   SELECT COUNT(DISTNCT column_name) FROM table_name */
SELECT * FROM payment

SELECT COUNT(*) FROM payment

SELECT amount FROM payment

SELECT DISTINCT amount FROM payment

SELECT COUNT(DISTINCT amount) FROM payment

/* WHERE */
/* Basic syntax for WHERE Statement
   SELECT column 1, column 2
   FROM table
   WHERE conditions */
   
SELECT * FROM customer

SELECT * FROM customer
WHERE first_name = 'Jared'

SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R'

SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R'

SELECT * FROM film
WHERE rating = 'R' OR rating = 'PG-13'


SELECT * FROM film
WHERE rating != 'R'

/* ORDER BY */
/* Basic Syntax for ORDER BY Statement
   SELECT column 1, column 2
   FROM table
   ORDER BY column 1 ASC/DESC */

SELECT * FROM customer
ORDER BY first_name

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id,first_name

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id DESC,first_name ASC

/* LIMIT */
/* Basic Syntax for LIMIT Statement
   SELECT column 1 
   FROM table
   ORDER BY column 2 
   LIMIT n */

SELECT * FROM payment
LIMIT 1

SELECT * FROM payment
WHERE amount != 0
ORDER BY payment_date DESC
LIMIT 5

/* BETWEEN */
SELECT * FROM payment
WHERE amount BETWEEN 8 and 9

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15'

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-14'

/* IN */
/* Basic syntax of IN Statement
   SELECT column 1 
   FROM table
   WHERE column 1 IN (value 1, value 2) */
   
SELECT * FROM payment

SELECT DISTINCT amount FROM payment
ORDER BY amount

SELECT * FROM payment
WHERE amount IN(0.99,1.99,1.98)

SELECT * FROM customer
WHERE first_name IN('John','Jake','Julie')

SELECT count(amount) FROM payment
WHERE amount>5

SELECT * FROM actor
where first_name LIKE 'P%'

SELECT * FROM address
SELECT COUNT(DISTINCT(district)) from address
  
SELECT * FROM film


/*LIKE AND ILIKE STATEMENT*/
SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE '%s'

SELECT * from customer
WHERE first_name LIKE '%er%'

SELECT * from customer
WHERE first_name NOT LIKE '_er%'

SELECT * from film
WHERE title LIKE 'Mission%'

/*AGGREGATE*/
SELECT * FROM film
SELECT MAX(replacement_cost) FROM film

select max(replacement_cost),min(replacement_cost) from film

select avg(replacement_cost) from film
select ROUND(avg(replacement_cost),4) from film

select sum(replacement_cost) from film

SELECT COUNT(*) from film

/*Group By*/

SELECT customer_id, sum(amount) from payment
GROUP BY customer_id
order by sum(amount)

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount)

SELECT DATE(payment_date),sum(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC


/*HAVING*/
 SELECT customer_id,sum(amount) from payment
 where customer_id in (184,87,477)
 GROUP BY customer_id
 
 
select customer_id,sum(amount) from payment
GROUP by customer_id
HAVING SUM(amount)>100
 
 