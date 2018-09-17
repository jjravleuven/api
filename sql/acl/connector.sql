BEGIN;

CREATE TABLE IF NOT EXISTS acl.connector (
	id uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
	l_id text, -- LOGIN ID
	u_id text, -- USER ID
	g_id text, -- GROUP ID
	r_id text, -- ROLE ID
	route text[] DEFAULT '{}'::uuid[], -- ARRAY JSON OBJECTS -> AVAILABLE ROUTES
	o_id text, -- ORGANIZATION ID
	PRIMARY KEY(id)
);

COMMIT;