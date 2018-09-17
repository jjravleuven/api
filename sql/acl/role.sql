BEGIN;

CREATE TABLE IF NOT EXISTS acl."role" (
	"id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	"name" character varying(255) DEFAULT NULL::character varying, -- ROLE NAME
	"ordinal" integer DEFAULT 0 NOT NULL, -- ROLE ORDINAL POSITION IN ARRAY
	PRIMARY KEY(id)
);

COMMIT;