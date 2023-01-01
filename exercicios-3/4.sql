/*4. Retorne o nome dos continentes e o total de países que nele existem. Filtre os continentes que
possuem mais que 50 países*/

SELECT cast(Continent as char(30)) as Continent, count(name) as cantidad FROM country
group by Continent
having cantidad > 50
order by Continent;
