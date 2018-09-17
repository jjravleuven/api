BEGIN;

CREATE TABLE IF NOT EXISTS acl.login (
	"id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	"u_id" text, -- USER ID
	"eml" character varying(150) DEFAULT NULL::character varying, -- EMAIL LOGIN
	"pwd" character varying(150) DEFAULT NULL::character varying, -- PLAIN TEXT PASSWORD
	"hashpwd" text, -- UPDATED UUID HASH PASSWORD -> UDF
	"created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL, -- DATE CREATED
	PRIMARY KEY(id)
);

COMMIT;