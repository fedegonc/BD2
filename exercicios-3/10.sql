/*10. Retorne o nome do continente e a média da área dos países (que fazem parte do continente).
Ordene pela média da área de maior a menor. */

select Continent, avg(SurfaceArea) as media from country
group by Continent
order by media asc;