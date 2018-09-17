BEGIN;

CREATE TABLE IF NOT EXISTS pms.question_type (
	id uuid DEFAULT uuid_generate_v4() NOT NULL,
	"name" character varying(255) DEFAULT NULL::character varying,
	PRIMARY KEY(id)
);

COMMIT;