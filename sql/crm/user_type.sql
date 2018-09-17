BEGIN;

CREATE TABLE IF NOT EXISTS crm.user_type (
	"id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	"name" character varying(150) DEFAULT NULL::character varying, -- USER TYPE NAME
	PRIMARY KEY(id)
);

COMMIT;