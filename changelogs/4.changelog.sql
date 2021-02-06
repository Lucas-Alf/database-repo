-- Diff code generated with pgModeler (PostgreSQL Database Modeler)
-- pgModeler version: 0.9.3
-- Diff date: 2021-02-05 17:19:46
-- Source model: liquibase
-- Database: liquibase
-- PostgreSQL version: 12.0

-- [ Diff summary ]
-- Dropped objects: 0
-- Created objects: 0
-- Changed objects: 0
-- Truncated tables: 0


-- [ Dropped objects ] --
ALTER TABLE public.animal DROP COLUMN IF EXISTS apelido CASCADE;
-- ddl-end --
