-- Diff code generated with pgModeler (PostgreSQL Database Modeler)
-- pgModeler version: 0.9.3
-- Diff date: 2021-02-05 17:16:27
-- Source model: liquibase
-- Database: liquibase
-- PostgreSQL version: 12.0

-- [ Diff summary ]
-- Dropped objects: 0
-- Created objects: 1
-- Changed objects: 0
-- Truncated tables: 0

SET search_path=public,pg_catalog;
-- ddl-end --


-- [ Created objects ] --
-- object: apelido | type: COLUMN --
-- ALTER TABLE public.animal DROP COLUMN IF EXISTS apelido CASCADE;
ALTER TABLE public.animal ADD COLUMN apelido varchar(250);
-- ddl-end --


