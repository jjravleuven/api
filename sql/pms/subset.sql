BEGIN;

CREATE TABLE IF NOT EXISTS pms.subset (
	id uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	question_id text, -- QUESTION PARENT UUID KEY
	question jsonb DEFAULT '{}'::jsonb NOT NULL, -- SINGLE JSON SUBSET QUESTION
	created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL, -- CREATION DATE
	modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL, -- LAST MODIFIED DATE
	PRIMARY KEY(id)
);

COMMIT;