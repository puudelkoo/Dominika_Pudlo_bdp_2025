-- 3. Utwórz nową tabelę o nazwie ‘streets_reprojected’, która zawierać będzie dane z tabeli
-- przetransformowane do układu współrzędnych DHDN.Berlin/Cassini.
CREATE TABLE IF NOT EXISTS public.streets_reprojected AS
SELECT 
    *,
    ST_Transform(geom, 3068) AS geom_reprojected
FROM public.t2019_kar_streets;
