--7. Policz jak wiele sklepów sportowych (‘Sporting Goods Store’ - tabela POIs) znajduje się
--w odległości 300 m od parków (LAND_USE_A).

SELECT 
    COUNT(DISTINCT p.poi_id) AS liczba_sklepow_sportowych
FROM public.t2019_kar_poi_table p
JOIN public.t2019_kar_land_use_a l
    ON ST_DWithin(
        ST_Transform(p.geom, 3068),   -- punkty POI
        ST_Transform(l.geom, 3068),   -- poligony parków
        300                           -- 300 metrów
    )
WHERE p.type = 'Sporting Goods Store'
