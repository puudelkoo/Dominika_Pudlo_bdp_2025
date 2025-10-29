-- 6. Znajdź wszystkie skrzyżowania, które znajdują się w odległości 200 m od linii zbudowanej
--z punktów w tabeli ‘input_points’. Wykorzystaj tabelę T2019_STREET_NODE. Dokonaj
--reprojekcji geometrii, aby była zgodna z resztą tabel.


CREATE TABLE street_node_reprojected AS
SELECT *,
       ST_Transform(geom, 3068) AS geom_3068
FROM t2019_kar_street_node;

WITH line AS (
    SELECT ST_MakeLine(geom ORDER BY id) AS geom
    FROM input_points
),
buffer AS (
    SELECT ST_Buffer(geom, 200) AS geom
    FROM line
)
SELECT sn.*
FROM street_node_reprojected sn
JOIN buffer b
  ON ST_Intersects(sn.geom_3068, b.geom);
