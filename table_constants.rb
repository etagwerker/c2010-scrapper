DEPARTAMENTOS_TABLE_SQL = <<EOF

-- Table: departamentos

-- DROP TABLE departamentos;

CREATE TABLE departamentos
(
  id serial NOT NULL,
  nombre character varying(100),
  provincia character varying(100),
  total_mujeres integer,
  total_varones integer,
  edad integer,
  CONSTRAINT departamentos_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

-- Index: index_departamentos_nombre

-- DROP INDEX index_departamentos_cabecera;

CREATE INDEX index_departamentos_cabecera
  ON departamentos
  USING btree
  (nombre);

-- Index: index_departamentos_provincia

-- DROP INDEX index_departamentos_nombre;

CREATE INDEX index_departamentos_nombre
  ON departamentos
  USING btree
  (provincia);

-- Index: index_departamentos_edad

-- DROP INDEX index_departamentos_edad;

CREATE INDEX index_departamentos_edad
  ON departamentos
  USING btree
  (edad);

EOF

TIPOS_VIVIENDA_TABLE_SQL = <<EOF

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

EOF

TIPOS_COMBUSTIBLE_TABLE_SQL = <<EOF

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

EOF

TIPO_COMBUSTIBLE_X_TIPO_VIVIENDA_SQL = <<EOF

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

EOF
