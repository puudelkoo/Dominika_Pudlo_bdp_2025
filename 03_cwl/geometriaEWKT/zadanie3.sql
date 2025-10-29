--3. Zamień obiekt4 na poligon. Jaki warunek musi być spełniony, aby można było wykonać to
--zadanie? Zapewnij te warunki.

-- Warunek: linia musi być zamknięta (pierwszy i ostatni punkt muszą być takie same)
INSERT INTO geometria.obiekty (nazwa, geom)
SELECT 
    'obiekt4_poligon',
    ST_MakePolygon(
        ST_AddPoint(
            ST_LineMerge(geom),                 -- scala w jedną linię
            ST_StartPoint(ST_LineMerge(geom))   -- dodaje pierwszy punkt na koniec (zamyka)
        )
    )
FROM geometria.obiekty
WHERE nazwa = 'obiekt4';
