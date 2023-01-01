/*Utilizando a base de dados WORLD, resolva os seguintes exercícios.
44. Programe uma consulta que retorne o seguinte: da tabela pais o nome, continente, região e população.
Da tabela cidade o nome, o distrito e a população. 
Da tabela língua do país o nome do idioma. 
Selecione apenas países que se encontram no continente ‘Europe’.*/

SELECT country.name as pais, country.Continent as continente, country.Region as region, country.Population as poblacion,

city.Name as ciudad, city.District as distrito, city.Population as poblacion,

countrylanguage.Language as idioma

FROM country 

INNER JOIN city
ON country.code = city.CountryCode

INNER JOIN countrylanguage
ON country.code = countrylanguage.CountryCode


WHERE country.Continent = 'Europe'  ;


