/*1. Programe um comando SQL que retorne o código do cliente, nome, sobrenome e a soma do
total de pagamentos realizados. Filtre o nome do cliente cujo nome seja igual a ‘ELLEN’. Filtre
o total de pagamentos realizados para retornar apenas os valores entre 100 e 125 .*/

SELECT customer.customer_id, first_name, last_name, SUM(amount) AS total_payments
FROM customer INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE first_name = 'ELLEN'
GROUP BY customer_id, first_name, last_name
HAVING  total_payments >= 100 and total_payments <= 125;

/*2. Programe um comando SQL que retorne o cÃ³digo da categoria, o nome e a mÃ©dia de tempo
dos filmes que a ela pertencem .*/

select category.category_id, category.name, avg(film.length)  from category 
INNER JOIN film_category
ON  category.category_id = film_category.category_id
inner join film
on film.film_id = film_category.film_id
group by category.category_id
;

/*3.Programe um comando SQL para retornar o nome do país, nome da cidade, nome, sobrenome
e e-mail do cliente. Inclua também o endereço, o telefone e o código postal. Retorne apenas os
clientes cujo nome do país inicie com a letra ‘A’ ou que contenha o valor ‘nada’ em qualquer
lugar do nome (1 ponto).*/

SELECT country.country, city.city, customer.first_name, customer.last_name, customer.email,
       address.address, address.phone, address.postal_code
FROM customer
JOIN address on address.address_id = customer.address_id
JOIN city ON city.city_id = address.city_id
JOIN country ON country.country_id = city.country_id
WHERE country LIKE 'A%' OR customer.first_name LIKE '%nada%'
;

/*4. Programe um comando SQL para retornar do ator o código, nome, sobrenome e total de filmes
nos quais ele atuou. Retorne apenas o autor com o maior número de filmes. */

SELECT actor.actor_id, actor.first_name, actor.last_name, COUNT(*) AS film_count
FROM actor
inner JOIN film_actor
ON film_actor.actor_id = actor.actor_id
inner join film
on film_actor.film_id = film.film_id
group by actor.actor_id
ORDER BY film_count DESC
LIMIT 1;

/*5.Programe um comado SQL para retornar o nome do país, nome da cidade, nome, sobrenome e
email do cliente. Também retorne o endereço, telefone e código postal. Filtre os países que
iniciam com a letra ‘A’ ou que contém ‘nada’ em alguma parte do nome*/

SELECT country.country, city.city, customer.first_name, customer.last_name, customer.email,
       address.address, address.phone, address.postal_code

FROM customer

JOIN address on address.address_id = customer.address_id
JOIN city ON city.city_id = address.city_id
JOIN country ON country.country_id = city.country_id

WHERE country LIKE 'A%' OR customer.first_name LIKE '%nada%';

/*6.Programe um comando SQL que sem utilizar o comando inner join faça a junção das tabelas
country e city. Retorne o nome do país e o nome da cidade. Ordene o nome do país de forma
descendentes e o nome da cidade de forma ascendente.*/

SELECT country, city
FROM country, city
WHERE country.country_id = city.country_id
ORDER BY country.country DESC, city.city ASC;

/*7. Programe uma consulta SQL que retorne os seguintes campos respeitando a seguinte ordem:
distrito, endereço, nome e sobrenome do cliente, código postal e telefone. Filtre aos clientes
que moram nas distintas cidades dos Estados Unidos ('United States') registradas na base de
dados. Não utilize junções para formar a consulta e sim subqueries. Ordene o resultado da
consulta por distrito, endereço, nome e sobrenome (2 pontos). */

SELECT address.district, address.address,  customer.first_name, customer.last_name, address.postal_code, address.phone
FROM customer, address where customer.address_id in
	( 
    select address_id from address where address.city_id in (
		SELECT city.city_id FROM city where city.country_id = (SELECT country.country_id FROM country WHERE country.country = 'United States')
        ) 
    ) and customer.address_id = address.address_id 
    ORDER BY address.district, address.address, customer.first_name, customer.last_name
    ;

/*8. Programe uma consulta SQL que retorne o código do funcionário do staff, nome e o
sobrenome. Também deve ser retornado o total de aluguéis incluídos na base de dados por
cada um. Filtre a data dos aluguéis (rental_date) entre '2005-07-29' e '2021-07-30'.*/

SELECT
staff.staff_id,
staff.first_name,
staff.last_name,
count(rental.staff_id) as total

FROM staff

inner JOIN rental
ON rental.staff_id = staff.staff_id
where rental.rental_date between '2005-07-29' and '2021-07-30'
group by staff.staff_id
;


/*9. Programe uma consulta SQL que retorne o código e nome do filme assim como o total de
vezes que foi alugado. Ordene a consulta pelo campo total de forma descendente.*/

select film.film_id, film.title, count(rental_id) as total_rent

from film 
inner join inventory 
on film.film_id = inventory.film_id
inner join rental 
on rental.inventory_id = inventory.inventory_id
group by film.film_id, film.title
order by total_rent;
