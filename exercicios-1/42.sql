/*Utilizando a base de dados WORLD, resolva os seguintes exercícios.
42. Selecione todos os países cuja língua oficial seja o ‘Spanish’ e que a porcentagem da fala do idioma entre
a população seja maior que 96.00.*/

SELECT name as nombre, Percentage as porcentaje_de_hispanohablantes FROM country 

INNER JOIN countrylanguage
ON country.code = countrylanguage.CountryCode


WHERE language = 'Spanish' and Percentage >= 96.00 ;


