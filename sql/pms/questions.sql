BEGIN;

CREATE TABLE IF NOT EXISTS pms.question (
	id uuid DEFAULT uuid_generate_v4() NOT NULL,
	project_id text DEFAULT(0) NOT NULL,
	type_id text DEFAULT(0) NOT NULL,
	question jsonb DEFAULT '{}'::jsonb NOT NULL,
	created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
	modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PRIMARY KEY(id)
);

COMMIT;