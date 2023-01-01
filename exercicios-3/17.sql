
/*17. Retorne o nome do país em conjunto com a média de população das cidades (do país).
 Ordene da menor a maior pela média da população*/

SELECT
country.Name,
avg(city.population) as media_ciudades

FROM country

inner JOIN city
ON country.Code = city.CountryCode

group by country.Name
order by media_ciudades asc;
