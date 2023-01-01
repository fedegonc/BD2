/*2. Retorne o nome dos continentes e o total de países que neles existem.*/

SELECT Continent, count(*) FROM country
group by Continent;