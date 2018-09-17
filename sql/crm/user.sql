BEGIN;

CREATE TABLE IF NOT EXISTS crm."user" (
	"id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	"fname" character varying(150) DEFAULT NULL::character varying, -- USER FIRSTNAME
	"lname" character varying(150) DEFAULT NULL::character varying, -- USER LASTNAME
	"org_id" text, -- ORGANIZATION UUID FOREIGN KEY
	"type_id" text, -- USER TYPE UUID ASSIGNMENT
	"group" text, -- ACL GROUP UUID ASSIGNMENT
	"role" text, -- ACL ROLE UUID ASSIGNMENT
	"created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL, -- CREATION DATE
	PRIMARY KEY(id)
);

COMMIT;