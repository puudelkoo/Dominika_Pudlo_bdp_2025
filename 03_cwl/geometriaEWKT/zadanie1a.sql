--Utworzenie tabeli
CREATE TABLE obiekty (
    nazwa text,
    geom geometry
);

--a 
INSERT INTO obiekty (nazwa, geom)
VALUES (
    'obiekt1',
    ST_GeomFromText(
        'COMPOUNDCURVE(
            (0 1, 1 1),            
            CIRCULARSTRING(1 1, 2 0, 3 1), 
            CIRCULARSTRING(3 1, 4 2, 5 1), 
            (5 1, 6 1)              
        )', 
        0
    )
);
