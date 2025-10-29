--2. Znajdź ile nowych POI pojawiło się w promieniu 500 m od wyremontowanych lub
--wybudowanych budynków, które znalezione zostały w zadaniu 1. Policz je wg ich kategorii.

WITH new_poi AS (
    SELECT p19.poi_id, p19.type, p19.poi_name, p19.geom
    FROM public.t2019_kar_poi_table p19
    LEFT JOIN public.t2018_kar_poi_table p18
        ON p19.poi_id = p18.poi_id
    WHERE p18.poi_id IS NULL
),
changed_buildings AS (
    SELECT 
        b19.geom,
        CASE 
            WHEN b18.polygon_id IS NULL THEN 'NOWY'
            ELSE 'ZMIENIONY'
        END AS status
    FROM public.t2019_kar_buildings b19
    LEFT JOIN public.t2018_kar_buildings b18
        ON b19.polygon_id = b18.polygon_id
    WHERE b18.polygon_id IS NULL
       OR NOT ST_Equals(b19.geom, b18.geom)
       OR b19.height <> b18.height
)
SELECT 
    n.type AS poi_type,
    COUNT(*) AS liczba_nowych_poi
FROM new_poi n
JOIN changed_buildings b
    ON ST_DistanceSphere(n.geom, b.geom) <= 500
WHERE b.status IN ('NOWY', 'ZMIENIONY')
GROUP BY n.type
ORDER BY liczba_nowych_poi DESC;
