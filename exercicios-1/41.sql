/*Utilizando a base de dados WORLD, resolva os seguintes exercícios.
41. Selecione todos os países cuja língua oficial seja o ‘Spanish’*/

SELECT * FROM country 

INNER JOIN countrylanguage
ON country.code = countrylanguage.CountryCode


WHERE language = 'Spanish';


