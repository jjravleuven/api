BEGIN;

CREATE TABLE IF NOT EXISTS acl."group" (
	"id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	"group" character varying(255) DEFAULT NULL::character varying, -- GROUP NAME
	"ordinal" integer DEFAULT 0 NOT NULL, -- GROUP ORDINAL POSITION IN ARRAY
	PRIMARY KEY(id)
);

COMMIT;