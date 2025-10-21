--d. Wypisz nazwy i obwody 2 budynków o największej powierzchni. 

SELECT 
    name,
    ST_Perimeter(geometry) AS perimeter,
    ST_Area(geometry) AS area
FROM buildings
ORDER BY area DESC
LIMIT 2;
