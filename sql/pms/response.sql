BEGIN;

CREATE TABLE IF NOT EXISTS pms.response (
	id uuid DEFAULT uuid_generate_v4() NOT NULL,
	respondent_id text,
	question_id text,
	subset_id text,
	type_id text,
	result jsonb DEFAULT '{}'::jsonb NOT NULL,
	created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PRIMARY KEY(id)
);

COMMIT;