/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT DISTINCT(film.title) 
FROM category, film_category, film
WHERE film_category.film_id = film.film_id
AND film_category.category_id = 8
ORDER BY film.title ASC;
