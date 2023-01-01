/*Utilizando a base de dados WORLD, resolva os seguintes exercícios.
39. Selecione todos os países nos quais se fala a língua ‘Dutch’.*/

SELECT * FROM country 
INNER JOIN countrylanguage
ON country.code = countrylanguage.CountryCode
WHERE language = 'Dutch';

