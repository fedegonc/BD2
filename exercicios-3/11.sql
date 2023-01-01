/*11. Retorne o nome do continente e a área do maior país (do continente) */
select Continent, max(SurfaceArea) as max from country
group by Continent;
