/*29. Conte o total de filmes por categoria. .
*/
SELECT
category.name,
count(film.film_id) as total_peliculas

FROM category

inner JOIN film_category
ON film_category.category_id = category.category_id

inner join film
on film_category.category_id = film.film_id

group by film.film_id
;
