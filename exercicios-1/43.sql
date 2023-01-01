/*Utilizando a base de dados WORLD, resolva os seguintes exercícios.
43. Selecione todas as cidades cujo código de pais seja ‘BRA’ e a população maior que 1000.000.*/

SELECT city.name as nombre_ciudad, city.Population as cantidad_habitantes FROM country 

INNER JOIN city
ON country.code = city.CountryCode


WHERE Code = 'BRA' and city.Population >= '1000.000'  ;


