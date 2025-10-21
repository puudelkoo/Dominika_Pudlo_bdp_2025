--f. Wypisz pole powierzchni tej części budynku BuildingC, która znajduje się w odległości
--większej niż 0.5 od budynku BuildingB.

SELECT 
    ST_Area(
        ST_Difference(c.geometry, ST_Buffer(b.geometry, 0.5))
    ) AS area_outside_buffer
FROM buildings c, buildings b
WHERE c.name = 'BuildingC' AND b.name = 'BuildingB';
