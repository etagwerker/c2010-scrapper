DEPARTAMENTOS_TABLE_SQL = <<EOF

-- Table: departamentos

-- DROP TABLE departamentos;

CREATE TABLE departamentos
(
  id serial NOT NULL,
  nombre character varying(50),
  provincia character varying(50),
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
