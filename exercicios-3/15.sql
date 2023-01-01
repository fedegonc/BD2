
/*15. Retorne o nome do país e o total de cidades que nele existem.*/

SELECT
country.Name,
count(city.name) as cantidad_ciudades

FROM country

inner JOIN city
ON country.Code = city.CountryCode

group by country.Name
;
