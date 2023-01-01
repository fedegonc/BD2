/*5. Retorne a área do maior país.*/
SELECT max(SurfaceArea), Name as n FROM country
group by SurfaceArea desc
;

