/*3. Retorne o nome dos continentes e o total de países que neles existem. Ordene o resultado em
ordem alfabética pelo nome do continente. */

SELECT cast(Continent as char(30)) as Continent , count(*) FROM country
group by Continent
order by Continent;