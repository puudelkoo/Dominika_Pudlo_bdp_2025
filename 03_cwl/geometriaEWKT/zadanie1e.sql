--e
INSERT INTO obiekty (nazwa, geom)
VALUES (
    'obiekt5',
    ST_GeomFromText(
        'MULTIPOINT Z((30 30 59), (38 32 234))'
    )
);
