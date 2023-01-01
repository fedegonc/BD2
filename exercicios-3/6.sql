/*6. Retorne a área do menor país.*/
SELECT min(SurfaceArea), Name as n FROM country
group by SurfaceArea asc
;

