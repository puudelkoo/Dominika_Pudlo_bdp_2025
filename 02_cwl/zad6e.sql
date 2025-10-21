--e. Wyznacz najkrótszą odległość między budynkiem BuildingC a punktem K.

SELECT 
    ST_Distance(b.geometry, p.geometry) AS distance
FROM buildings b, poi p
WHERE b.name = 'BuildingC' AND p.name = 'K';
