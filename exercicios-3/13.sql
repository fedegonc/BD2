/*13. Retorne o nome do país e o total de idiomas que nele se falam. */

SELECT
country.Name,
countrylanguage.Language,
count(countrylanguage.Language) as cantidad_idiomas

FROM country

inner JOIN countrylanguage
ON country.Code = countrylanguage.CountryCode

group by country.Name;