BEGIN;

CREATE TABLE IF NOT EXISTS public.country (
	"id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	"name" character varying(255) DEFAULT NULL::character varying, -- COUNTRY NAME
	"iso" character varying(10) DEFAULT NULL::character varying, -- COUNTRY INTERNATIONAL ISO CODE
	PRIMARY KEY(id)
);

COMMIT;