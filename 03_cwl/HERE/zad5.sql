--5. Zaktualizuj dane w tabeli ‘input_points’ tak, aby punkty te były w układzie współrzędnych
--DHDN.Berlin/Cassini.

ALTER TABLE public.input_points
ALTER COLUMN geom TYPE geometry(Point, 3068)
USING ST_Transform(geom, 3068);
