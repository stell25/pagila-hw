/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT category.name, count(film.film_id) AS sum
FROM category
JOIN film_category ON film_category.category_id = category.category_id
JOIN film ON film.film_id = film_category.film_id
JOIN language ON film.language_id = language.language_id
WHERE language.name = 'English'
GROUP BY category.name
ORDER BY category.name ASC;
