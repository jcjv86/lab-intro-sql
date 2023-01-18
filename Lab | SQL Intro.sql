-- 1.Use sakila database.
use sakila;

-- 2.Get all the data from tables actor, film and customer.
SELECT * FROM actor, film, customer;

-- 3.Get film titles.
SELECT title FROM film;

-- 4.Get unique list of film languages under the alias language.
SELECT distinct(language_id), name AS language FROM language;

-- Bonus: language per each film (Joining tables film and language by language ID).
SELECT film.title, film.language_id, language.language_id, language.name AS language_name
FROM film
INNER JOIN language on film.language_id;

-- 5.1 Find out how many stores does the company have?
SELECT count(store_id) FROM store;
-- OR (since they share the same info)
SELECT count(store_id) FROM staff;


-- 5.2 Find out how many employees staff does the company have?
SELECT count(staff_id) FROM staff;

-- 5.3 5.3 Return a list of employee first names only?
SELECT first_name FROM staff;