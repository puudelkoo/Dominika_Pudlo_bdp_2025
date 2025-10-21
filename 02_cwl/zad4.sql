--4. Na podstawie poniższej mapy utwórz trzy tabele: 
--buildings (id, geometry, name), roads (id, geometry, name), poi (id, geometry, name).

CREATE TABLE buildings (
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(40)
);

CREATE TABLE roads (
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(40)
);

CREATE TABLE poi (
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(40)
);
