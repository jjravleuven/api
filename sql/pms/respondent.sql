BEGIN;

CREATE TABLE IF NOT EXISTS pms.respondent (
	"id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	"u_id" text DEFAULT NULL, -- CRM.USER_ID
	"project_id" TEXT DEFAULT NULL, -- PROJECT UUID ASSIGNMENT 
	"ip_address" TEXT DEFAULT NULL, -- USER DEVICE IP ADDRESS
	"host_name" TEXT DEFAULT NULL, -- SYSTEM PROJECT HOSTNAME
	"completed" BOOLEAN DEFAULT(false) NOT NULL, -- SURVEY IS COMPLETED (TRUE|FALSE)
	"terminated" BOOLEAN DEFAULT(false) NOT NULL, -- SURVEY IS STALLED (TRUE|FALSE)
	"created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL, -- CREATION DATE
	PRIMARY KEY(id)
);

COMMIT;