/*8. Retorne a média da área dos países da Europa.*/
SELECT avg(SurfaceArea) as media FROM country
where Continent = 'Europe';