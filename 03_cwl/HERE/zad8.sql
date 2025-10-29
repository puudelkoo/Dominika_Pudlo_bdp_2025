--8. Znajdź punkty przecięcia torów kolejowych (RAILWAYS) z ciekami (WATER_LINES). Zapisz
--znalezioną geometrię do osobnej tabeli o nazwie ‘T2019_KAR_BRIDGES’.

CREATE TABLE IF NOT EXISTS public.t2019_kar_bridges AS
SELECT 
    ST_Intersection(
        ST_Transform(r.geom, 3068),
        ST_Transform(w.geom, 3068)
    ) AS geom
FROM public.t2019_kar_railways r
JOIN public.t2019_kar_water_lines w
    ON ST_Intersects(
        ST_Transform(r.geom, 3068),
        ST_Transform(w.geom, 3068)
    )
WHERE 
    NOT ST_IsEmpty(
        ST_Intersection(
            ST_Transform(r.geom, 3068),
            ST_Transform(w.geom, 3068)
        )
    );
SELECT COUNT(*) AS liczba_mostow FROM t2019_kar_bridges;
