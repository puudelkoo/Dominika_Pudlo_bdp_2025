--2. Wyznacz pole powierzchni bufora o wielkości 5 jednostek, który został utworzony wokół
--najkrótszej linii łączącej obiekt 3 i 4.
SELECT ST_Area(
  ST_Buffer(
    ST_ShortestLine(
      (SELECT geom FROM obiekty WHERE nazwa = 'obiekt3'),
      (SELECT geom FROM obiekty WHERE nazwa = 'obiekt4')
    ), 
    5
  )
) AS pole_bufora_5;
