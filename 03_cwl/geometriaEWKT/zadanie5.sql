--5. Wyznacz pole powierzchni wszystkich buforów o wielkości 5 jednostek, które zostały utworzone
--wokół obiektów nie zawierających łuków.

SELECT 
    SUM(ST_Area(ST_Buffer(geom, 5))) AS suma_pol_buforow_5
FROM geometria.obiekty
WHERE NOT ST_HasArc(geom);
