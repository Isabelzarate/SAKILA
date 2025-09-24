USE sakila;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;

SELECT DISTINCT name AS language FROM language;

SELECT COUNT(*) AS store_count FROM store;

SELECT COUNT(*) AS employee_count FROM staff;

SELECT first_name, last_name FROM staff;

SELECT * FROM actor
WHERE first_name = 'Scarlett';

SELECT * FROM actor
WHERE last_name = 'Johansson';

SELECT COUNT(*) AS available_films FROM inventory;
SELECT COUNT(*) AS rented_films FROM rental;

SELECT 
  MIN(rental_duration) AS min_rental_period,
  MAX(rental_duration) AS max_rental_period
FROM film;
🔹 ¿Cuál es la duración más corta y más larga de una película?
SELECT 
  MIN(length) AS min_duration,
  MAX(length) AS max_duration
FROM film;

SELECT 
  ROUND(AVG(length), 2) AS avg_duration
FROM film;

SELECT 
  FLOOR(AVG(length) / 60) AS avg_hours,
  ROUND(AVG(length) % 60) AS avg_minutes
FROM film;

SELECT COUNT(*) AS over_3_hours
FROM film
WHERE length > 180;
SELECT 
  CONCAT(first_name, ' ', UPPER(last_name), ' - ', email) AS formatted_contact
FROM customer;

SELECT 
  MAX(CHAR_LENGTH(title)) AS max_title_length
FROM film;
 