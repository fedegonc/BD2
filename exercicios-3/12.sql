/*12. Retorne o nome do continente e a área do maior país (do continente). Ordene o resultado pela
a área de maior a menor. */
select Continent, max(SurfaceArea) as max from country
group by Continent
order by max desc;