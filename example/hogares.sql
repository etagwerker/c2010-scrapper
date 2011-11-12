
-- Table: tipos_vivienda

-- DROP TABLE tipos_vivienda;

CREATE TABLE tipos_vivienda
(
  id integer NOT NULL,
  nombre character varying(100),
  CONSTRAINT tipos_vivienda_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

INSERT INTO tipos_vivienda (id, nombre) values (1, 'Casa');
INSERT INTO tipos_vivienda (id, nombre) values (2, 'Rancho');
INSERT INTO tipos_vivienda (id, nombre) values (3, 'Casilla');
INSERT INTO tipos_vivienda (id, nombre) values (4, 'Departamento');
INSERT INTO tipos_vivienda (id, nombre) values (5, 'Pieza/s en inquilinato');
INSERT INTO tipos_vivienda (id, nombre) values (6, 'Pieza/s en hotel o pensión');
INSERT INTO tipos_vivienda (id, nombre) values (7, 'Local no construido para habitación');
INSERT INTO tipos_vivienda (id, nombre) values (8, 'Vivienda móvil');


-- Table: tipos_combustible

-- DROP TABLE tipos_combustible;

CREATE TABLE tipos_combustible
(
  id integer NOT NULL,
  nombre character varying(100),
  CONSTRAINT tipos_combustible_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

INSERT INTO tipos_combustible (id, nombre) values (1, 'Gas de red');
INSERT INTO tipos_combustible (id, nombre) values (2, 'Gas a granel (zeppelin)');
INSERT INTO tipos_combustible (id, nombre) values (3, 'Gas en tubo');
INSERT INTO tipos_combustible (id, nombre) values (4, 'Gas en garrafa');
INSERT INTO tipos_combustible (id, nombre) values (5, 'Electricidad');
INSERT INTO tipos_combustible (id, nombre) values (6, 'Leña o carbón');
INSERT INTO tipos_combustible (id, nombre) values (7, 'Otro');


-- Table: tipo_combustible_x_tipo_vivienda

-- DROP TABLE tipo_combustible_x_tipo_vivienda;

CREATE TABLE tipo_combustible_x_tipo_vivienda
(
  tipo_combustible_id integer NOT NULL,
  tipo_vivienda_id integer NOT NULL,
  cantidad integer,
  provincia_id integer,
  CONSTRAINT tipo_combustible_x_tipo_vivienda_pkey PRIMARY KEY (tipo_combustible_id, tipo_vivienda_id, provincia_id)
)
WITH (
  OIDS=FALSE
);

-- Index: index_tipo_combustible_x_tipo_vivienda_provincia_id

-- DROP INDEX index_tipo_combustible_x_tipo_vivienda_provincia_id

CREATE INDEX index_tipo_combustible_x_tipo_vivienda_provincia_id
  ON tipo_combustible_x_tipo_vivienda
  USING btree
  (provincia_id);

INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 40707, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 14, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 13, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 5172, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 201, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 46, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 12, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 176, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 3, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 3, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 2709, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 72, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 7, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 25, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 2, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 3, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 6, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 6, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 118781, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 5264, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 731, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 1062, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 355, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 50, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 169, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 146, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 134, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 2, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 13, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 6, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 2, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 22227, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 18984, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 483, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 8, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 27, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 3, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 54, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 87, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 198, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 33, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 8, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 5, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 5, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 5, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 6, 86);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 230708, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 86, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 478, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 794063, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 14694, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 18848, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 1337, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 34, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 222, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 5, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 4, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 211, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 36, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 15, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 6, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 1, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 780, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 10, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 21, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 321, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 179, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 49, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 17, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 0, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 46593, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 522, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 1624, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 10599, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 9995, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 1137, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 781, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 24, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 1486, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 26, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 60, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 12662, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 320, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 116, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 156, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 21, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 74, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 41, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 99, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 64, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 5, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 0, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 15, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 5, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 451, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 18, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 22, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 421, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 329, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 183, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 146, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 14, 02);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 187, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 5, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 5, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 976, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 1, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 2, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 1, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 1, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 18370, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 442, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 455, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 1606, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 130, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 31, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 33, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 10, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 189312, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 4280, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 4547, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 12662, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 2645, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 316, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 306, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 172, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 762, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 52, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 79, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 163, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 68, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 4, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 7, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 0, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 17097, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 8814, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 3478, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 8, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 38, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 8, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 67, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 48, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 355, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 67, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 57, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 40, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 52, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 1, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 18, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 19, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 18);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 119190, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 228, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 491, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 22315, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 1686, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 80, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 178, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 16, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 1009, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 6, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 5, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 28, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 11, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 0, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 2, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 4, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 1026, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 29, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 50, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 10, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 8, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 0, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 2, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 12, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 16268, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 1268, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 2982, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 180, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 222, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 20, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 53, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 75, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 107, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 1, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 13, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 44, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 1, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 0, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 0, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 5, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 1550, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 550, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 141, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 0, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 5, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 0, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 5, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 12, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 97, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 14, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 21, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 12, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 15, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 2, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 5, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 3, 58);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 457, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 6, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 3, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 1051, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 10, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 8919, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 40, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 132, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 1279, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 43, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 1, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 15, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 1, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 188892, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 2804, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 6511, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 15067, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 3506, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 80, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 459, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 51, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 421, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 23, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 48, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 150, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 37, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 3, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 6, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 0, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 61290, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 5281, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 5386, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 25, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 59, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 3, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 80, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 104, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 366, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 77, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 115, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 56, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 70, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 3, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 20, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 3, 54);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 973, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 4, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 2, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 8, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 3, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 3, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 1658, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 6, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 11, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 15, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 2, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 5, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 7, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 11547, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 343, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 131, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 457, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 145, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 75, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 60, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 35, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 1, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 8, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 1, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 2, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 217, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 47, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 11, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 1, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 1, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 3, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 33, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 2, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 1, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 9, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 6, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 1, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 2, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 42);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 2564299, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 2752, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 11235, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 521688, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 5525, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 1921, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 2942, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 82, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 19849, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 80, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 169, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 369, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 36, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 15, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 46, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 14, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 89963, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 630, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 2098, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 2487, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 315, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 35, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 205, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 89, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 1335452, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 29624, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 109815, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 43872, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 16001, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 1416, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 5149, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 1111, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 4638, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 120, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 419, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 2536, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 115, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 18, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 109, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 19, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 4018, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 1700, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 1446, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 46, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 28, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 1, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 55, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 169, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 2883, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 268, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 697, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 274, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 260, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 39, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 295, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 47, 06);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 1341, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 12, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 9, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 20, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 3, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 6, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 2, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 2318, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 25, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 89, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 28, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 9, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 7, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 6, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 24636, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 1416, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 2832, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 367, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 269, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 16, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 78, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 57, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 111, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 2, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 11, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 36, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 1, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 3, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 2959, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 557, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 352, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 8, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 8, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 1, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 7, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 16, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 135, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 19, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 23, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 21, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 5, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 2, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 7, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 62);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 151, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 2, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 4, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 1296, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 2, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 22594, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 311, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 391, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 2080, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 131, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 21, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 19, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 9, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 207042, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 3279, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 4479, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 9468, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 2238, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 171, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 336, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 151, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 343, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 18, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 16, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 121, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 19, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 2, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 4, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 4, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 21934, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 9825, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 1166, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 6, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 54, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 1, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 94, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 84, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 350, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 71, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 41, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 20, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 40, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 9, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 18, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 7, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 22);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 59418, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 12, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 9, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 7749, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 132, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 72, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 31, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 14, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 783, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 4, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 1, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 27, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 1, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 4, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 6, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 3, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 4232, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 14, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 17, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 301, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 20, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 12, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 16, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 10, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 46378, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 746, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 455, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 3332, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 730, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 33, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 161, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 95, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 118, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 1, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 0, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 38, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 6, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 0, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 3, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 0, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 1343, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 430, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 27, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 1, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 3, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 0, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 6, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 10, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 69, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 1, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 6, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 18, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 14, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 3, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 5, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 2, 74);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 202, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 1, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 38, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 2, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 844, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 20, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 986, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 5, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 1, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 4, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 508, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 34, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 805, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 3, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 5, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 1, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 11, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 39, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 6, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 23, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 2, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 71, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 5, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 41, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 9, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 5, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 2, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 2, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 1, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 94);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 116033, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 73, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 293, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 30090, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 475, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 249, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 74, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 5, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 370, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 3, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 8, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 10, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 1, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 1, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 2, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 1, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 2971, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 16, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 53, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 81, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 2, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 2, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 4, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 4, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 186511, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 3088, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 10182, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 2055, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 730, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 127, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 228, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 80, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 124, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 4, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 14, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 27, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 5, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 0, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 3, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 0, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 9992, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 2099, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 1613, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 4, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 20, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 3, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 31, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 23, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 515, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 47, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 113, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 21, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 30, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 4, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 20, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 4, 90);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 942, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 21, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 5, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 33, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 10, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 1, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 6, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 1054, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 81, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 96, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 23, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 8, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 2, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 7, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 11, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 770, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 126, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 341, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 32, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 18, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 2, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 25, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 48, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 4, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 6, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 37, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 2, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 2, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 2, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 459, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 76, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 44, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 2, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 3, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 3, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 2, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 56, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 8, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 9, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 10, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 15, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 1, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 7, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 78);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 10484, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 8, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 18, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 161, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 11, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 12, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 9, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 4, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 61212, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 111, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 88, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 2167, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 113, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 25, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 63, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 38, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 393993, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 4211, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 2483, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 19096, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 2443, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 528, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 813, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 373, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 1880, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 125, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 114, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 326, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 56, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 12, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 32, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 1, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 4530, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 1717, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 200, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 23, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 21, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 2, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 30, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 51, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 861, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 74, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 56, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 111, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 82, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 17, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 36, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 10, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 14);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 1761, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 2, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 2, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 159, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 3, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 19162, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 48, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 109, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 1236, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 18, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 17, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 22, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 7, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 226713, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 2567, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 6735, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 10282, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 636, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 154, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 417, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 173, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 145, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 4, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 7, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 31, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 2, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 2, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 2, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 5433, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 1388, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 779, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 3, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 11, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 2, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 26, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 41, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 247, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 32, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 56, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 17, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 9, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 4, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 13, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 6, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 30);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 414, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 9, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 14, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 6, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 6, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 1, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 2, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 1768, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 34, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 56, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 38, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 15, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 1, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 7, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 7, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 117106, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 4695, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 6611, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 1267, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 3343, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 116, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 335, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 164, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 364, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 20, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 23, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 79, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 76, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 2, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 8, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 2, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 20896, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 10998, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 4336, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 12, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 119, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 5, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 85, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 144, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 806, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 103, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 115, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 34, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 216, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 9, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 22, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 11, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 66);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 153, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 1, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 2, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 3, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 1, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 4688, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 8, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 9, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 144, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 7, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 3, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 5, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 1, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 62609, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 773, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 287, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 1169, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 399, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 17, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 73, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 24, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 177, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 14, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 3, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 21, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 9, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 2, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 1, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 5648, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 1437, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 104, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 2, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 12, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 1, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 11, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 14, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 164, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 13, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 8, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 8, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 23, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 2, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 4, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 5, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 10);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 172, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 8, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 1, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 22, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 1131, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 48, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 14, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 30, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 13, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 3, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 4, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 1, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 79212, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 3853, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 1710, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 971, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 2952, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 90, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 164, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 60, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 172, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 15, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 5, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 32, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 40, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 6, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 2, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 11234, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 4122, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 989, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 7, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 133, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 6, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 48, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 25, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 524, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 67, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 72, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 21, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 161, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 7, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 17, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 1, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 38);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 75132, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 567, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 105, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 13629, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 126, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 30, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 39, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 5, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 247, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 4, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 1, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 11, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 0, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 0, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 0, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 0, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 3800, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 171, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 24, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 115, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 8, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 2, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 6, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 1, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 67211, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 10665, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 1011, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 1319, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 347, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 20, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 143, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 15, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 194, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 46, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 7, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 44, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 5, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 1, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 4, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 0, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 886, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 1016, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 59, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 1, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 9, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 0, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 6, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 3, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 67, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 21, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 6, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 9, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 10, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 6, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 1, 70);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 172, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 6, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 1, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 41, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 7, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 10463, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 323, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 67, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 344, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 178, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 3, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 23, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 4, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 94049, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 2931, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 796, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 4012, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 2474, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 45, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 171, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 53, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 238, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 18, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 11, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 55, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 54, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 1, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 6, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 13061, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 9526, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 749, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 11, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 43, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 1, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 44, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 56, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 148, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 32, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 8, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 10, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 55, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 2, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 10, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 1, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 34);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 963, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 3, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 7, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 10, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 7, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 1, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 1518, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 31, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 71, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 28, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 4, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 7, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 10128, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 796, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 1257, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 212, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 64, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 6, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 43, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 93, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 132, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 9, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 19, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 33, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 1, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 4, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 9, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 2862, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 421, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 159, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 6, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 9, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 1, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 8, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 9, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 85, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 10, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 18, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 11, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 3, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 4, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 7, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 26);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 480, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 3, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 44, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 1, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 5356, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 10, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 24, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 218, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 11, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 4, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 8, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 62364, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 1038, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 1480, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 2778, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 631, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 45, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 80, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 39, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 243, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 3, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 7, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 123, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 13, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 2, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 2332, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 946, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 118, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 2, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 9, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 4, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 7, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 7, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 162, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 19, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 8, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 14, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 11, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 3, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 4, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 46);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 1359, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 8, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 3, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 45, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 3, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 2, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 5, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 8503, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 93, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 29, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 329, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 37, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 2, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 17, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 1, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 134439, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 7023, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 1725, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 5856, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 1354, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 57, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 430, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 83, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 505, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 97, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 20, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 154, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 5, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 1, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 11, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 1, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 1645, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 829, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 149, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 17, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 28, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 20, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 11, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 218, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 49, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 23, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 36, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 38, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 1, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 13, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 2, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 50);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 1, 6380, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 2, 10, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 3, 15, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 4, 253, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 5, 2, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 6, 1, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 7, 7, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(1, 8, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 1, 52433, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 2, 207, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 3, 230, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 4, 1195, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 5, 44, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 6, 24, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 7, 49, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(2, 8, 10, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 1, 424007, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 2, 9676, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 3, 9263, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 4, 15417, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 5, 1816, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 6, 516, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 7, 818, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(3, 8, 168, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 1, 524, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 2, 49, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 3, 43, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 4, 168, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 5, 16, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 6, 10, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 7, 6, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(4, 8, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 1, 3054, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 2, 2187, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 3, 526, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 4, 8, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 5, 12, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 6, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 7, 27, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(5, 8, 35, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 1, 621, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 2, 89, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 3, 95, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 4, 56, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 5, 48, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 6, 22, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 7, 26, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(6, 8, 12, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 1, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 2, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 3, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 4, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 5, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 6, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 7, 0, 82);
INSERT INTO tipo_combustible_x_tipo_vivienda (tipo_combustible_id, tipo_vivienda_id, cantidad, provincia_id) 
VALUES(7, 8, 0, 82);
