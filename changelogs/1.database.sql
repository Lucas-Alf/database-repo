-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.3
-- PostgreSQL version: 12.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: new_database | type: DATABASE --
-- DROP DATABASE IF EXISTS new_database;
-- CREATE DATABASE new_database;
-- ddl-end --


-- object: public.pessoa | type: TABLE --
-- DROP TABLE IF EXISTS public.pessoa CASCADE;
CREATE TABLE public.pessoa (
	id integer NOT NULL,
	nome varchar(250) NOT NULL,
	telefone varchar(11),
	CONSTRAINT pessoa_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.pessoa OWNER TO postgres;
-- ddl-end --

-- object: public.animal | type: TABLE --
-- DROP TABLE IF EXISTS public.animal CASCADE;
CREATE TABLE public.animal (
	id integer NOT NULL,
	nome varchar(250),
	id_raca integer NOT NULL,
	id_pessoa integer,
	CONSTRAINT animal_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.animal OWNER TO postgres;
-- ddl-end --

-- object: public.raca | type: TABLE --
-- DROP TABLE IF EXISTS public.raca CASCADE;
CREATE TABLE public.raca (
	id integer NOT NULL,
	nome varchar(250) NOT NULL,
	CONSTRAINT raca_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.raca OWNER TO postgres;
-- ddl-end --

-- object: raca_fk | type: CONSTRAINT --
-- ALTER TABLE public.animal DROP CONSTRAINT IF EXISTS raca_fk CASCADE;
ALTER TABLE public.animal ADD CONSTRAINT raca_fk FOREIGN KEY (id_raca)
REFERENCES public.raca (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: pessoa_fk | type: CONSTRAINT --
-- ALTER TABLE public.animal DROP CONSTRAINT IF EXISTS pessoa_fk CASCADE;
ALTER TABLE public.animal ADD CONSTRAINT pessoa_fk FOREIGN KEY (id_pessoa)
REFERENCES public.pessoa (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --
