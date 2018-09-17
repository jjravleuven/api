BEGIN;

CREATE TABLE IF NOT EXISTS pms.project (
	id uuid DEFAULT uuid_generate_v4() NOT NULL,
	org_id text,
	owner_id text,
	author text[],
	"name" character varying(255) DEFAULT NULL::character varying,
	details text,
	created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
	modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PRIMARY KEY(id)
);

COMMIT;