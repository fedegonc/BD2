/*27. Retorne o id, nome e sobrenome dos autores além do total de filmes dos quais cada um já
participou. Ordene pelo total de filme de menor a maior.
*/

SELECT
actor.actor_id,
actor.first_name,
actor.last_name,
count(film.film_id) as peliculas

FROM actor

inner JOIN film_actor
ON film_actor.actor_id = actor.actor_id

inner join film
on film_actor.film_id = film.film_id

group by actor.actor_id
order by peliculas asc
;