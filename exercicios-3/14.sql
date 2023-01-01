
/*14. Retorne o nome do país e o total de idiomas que nele se falam. Limite o resultado apenas aos
países nos quais se fala mais que 10 idiomas.*/

SELECT
country.Name,
countrylanguage.Language,
count(countrylanguage.Language) as cantidad_idiomas

FROM country

inner JOIN countrylanguage
ON country.Code = countrylanguage.CountryCode

group by country.Name
having cantidad_idiomas > 10;