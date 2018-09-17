BEGIN;

CREATE TABLE IF NOT EXISTS cms.route (
	"id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	"name" character varying(255) DEFAULT NULL::character varying, -- ROUTE NAME
	"ordinal" integer DEFAULT 0 NOT NULL, -- ROUTE ORDINAL POSITION IN ARRAY
	PRIMARY KEY(id)
);

COMMIT;