/*9. Retorne o nome do continente e a média da área dos países (que fazem parte do continente)*/
select Continent, avg(SurfaceArea) as media from country
group by Continent;