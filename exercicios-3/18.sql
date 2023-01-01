/*18. Retorne o nome do país em conjunto com a média de população das cidades (do país). 
Limite o resultado apenas pelos países cuja média de população das cidades seja maior que 70000.
Ordene o resultado de forma ascendente.
*/

SELECT
country.Name,
avg(city.population) as media_ciudades

FROM country

inner JOIN city
ON country.Code = city.CountryCode

group by country.Name
having media_ciudades > 70000
order by media_ciudades asc
;