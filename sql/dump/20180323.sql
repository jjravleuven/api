--
-- postgresQL database dump
--

-- Dumped from database version 10.2
-- Dumped by pg_dump version 10.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: acl; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA acl;


ALTER SCHEMA acl OWNER TO postgres;

--
-- Name: cms; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cms;


ALTER SCHEMA cms OWNER TO postgres;

--
-- Name: crm; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA crm;


ALTER SCHEMA crm OWNER TO postgres;

--
-- Name: pms; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pms;


ALTER SCHEMA pms OWNER TO postgres;

--
-- Name: postgraphile_watch; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA postgraphile_watch;


ALTER SCHEMA postgraphile_watch OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgjwt; Type: EXTENSION; Schema: -; Owner: 
--

-- CREATE EXTENSION IF NOT EXISTS pgjwt WITH SCHEMA public;


--
-- Name: EXTENSION pgjwt; Type: COMMENT; Schema: -; Owner: 
--

-- COMMENT ON EXTENSION pgjwt IS 'JSON Web Token API for postgresql';


--
-- Name: pgtap; Type: EXTENSION; Schema: -; Owner: 
--

-- CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA public;


--
-- Name: EXTENSION pgtap; Type: COMMENT; Schema: -; Owner: 
--

-- COMMENT ON EXTENSION pgtap IS 'Unit testing for postgresQL';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = acl, pg_catalog;

--
-- Name: group(text); Type: FUNCTION; Schema: acl; Owner: postgres
--

CREATE FUNCTION "group"(_id text) RETURNS json
    LANGUAGE sql
    AS $$
SELECT row_to_json(t)
FROM (
	SELECT 
		a.id
		, a.name
	FROM acl."group" a 
	WHERE a.id::text = _id::text
) t
$$;


ALTER FUNCTION acl."group"(_id text) OWNER TO postgres;

--
-- Name: jwtSign(json, text); Type: FUNCTION; Schema: acl; Owner: postgres
--
/*
CREATE FUNCTION "jwtSign"(_payload json DEFAULT '{}'::json, _secret text DEFAULT NULL::text) RETURNS TABLE(results text)
    LANGUAGE plpgsql
    AS $_$

/**
 * select sign(_payload::json, _secret::text, 'HS256');
 *

DECLARE 
	_payload ALIAS FOR $1;
	_secret ALIAS FOR $2;
	sql character varying;
	
BEGIN 

	/**
	 * CREATE JWT TOKEN	
	 *
	sql := 'SELECT sign('
		|| quote_literal($1::json)
		|| ', '
		|| quote_literal($2::text)
		|| ', ''HS512'');';
		
	RETURN QUERY EXECUTE sql;
	
END;

$_$;


ALTER FUNCTION acl."jwtSign"(_payload json, _secret text) OWNER TO postgres;

--
-- Name: jwtVerify(text, text); Type: FUNCTION; Schema: acl; Owner: postgres
--

CREATE FUNCTION "jwtVerify"(_token text DEFAULT NULL::text, _secret text DEFAULT NULL::text) RETURNS TABLE(result json)
    LANGUAGE plpgsql
    AS $_$

/**
 * select * FROM verify(_token::text, _secret::text, 'HS256');
 *

DECLARE 
	_token ALIAS FOR $1;
	_secret ALIAS FOR $2;
	sql character varying;
	
BEGIN 

	/**
	 * RETRIEVE JWT TOKEN
	 *
	sql := 'SELECT row_to_json(v) "token" FROM ('
		|| 'SELECT * from verify('
		|| quote_literal($1::text)
		|| ', '
		|| quote_literal($2::text)
		|| ', ''HS512'')) v;';
		
	RETURN QUERY EXECUTE sql;
	
END;

$_$;


ALTER FUNCTION acl."jwtVerify"(_token text, _secret text) OWNER TO postgres;
*/
--
-- Name: login(character varying, character varying); Type: FUNCTION; Schema: acl; Owner: postgres
--

CREATE FUNCTION login(_email character varying, _passwd character varying) RETURNS json
    LANGUAGE sql
    AS $$
SELECT row_to_json(t) AS "profile"
FROM (
	SELECT 
		(SELECT * FROM crm."user"(a.u_id::text))
	FROM acl."login" AS a 
	LEFT OUTER JOIN crm.user AS b ON b.id::text = a.u_id 
	WHERE (
		a.email = _email AND a.passwd = _passwd
	)
) t
$$;


ALTER FUNCTION acl.login(_email character varying, _passwd character varying) OWNER TO postgres;

--
-- Name: module(text); Type: FUNCTION; Schema: acl; Owner: postgres
--

CREATE FUNCTION module(_id text) RETURNS json
    LANGUAGE sql
    AS $$
	SELECT 
		(
			SELECT array_to_json(array_agg(row_to_json(m))) 
			FROM (
				SELECT 
					id.id
					, c.name
					, c.ordinal
				FROM UNNEST(ARRAY[a.route]::text[]) id(id) 
				LEFT OUTER JOIN cms.route c ON c.id::text = id.id::text 
				ORDER BY c.ordinal
			) m
		)
	FROM acl.connector a 
	lEFT OUTER JOIN crm."user" b ON b.id::text = _id::text 
	WHERE b.id::text = _id::text;
$$;


ALTER FUNCTION acl.module(_id text) OWNER TO postgres;

--
-- Name: role(text); Type: FUNCTION; Schema: acl; Owner: postgres
--

CREATE FUNCTION role(_id text) RETURNS json
    LANGUAGE sql
    AS $$
SELECT row_to_json(t)
FROM (
	SELECT 
		a.id
		, a.name
	FROM acl."role" a 
	WHERE a.id::text = _id::text
) t
$$;


ALTER FUNCTION acl.role(_id text) OWNER TO postgres;

SET search_path = crm, pg_catalog;

--
-- Name: user(text); Type: FUNCTION; Schema: crm; Owner: postgres
--

CREATE FUNCTION "user"(_id text) RETURNS json
    LANGUAGE sql
    AS $$

	SELECT row_to_json(a)
	FROM (
		SELECT 
			(
				SELECT row_to_json(b)
				FROM (
					SELECT 
/*
						(
							SELECT row_to_json(c)
							FROM (
								SELECT
									b.id::text
									, b.email::text "email"
									, b.passwd::text "password"
							) c
						) AS "credentials"
*/
						(
							SELECT row_to_json(p) 
							FROM (
								SELECT 
									(SELECT * FROM acl.role(a.role::text))
									, (SELECT * FROM acl.group(a.group::text))
							) p
						) AS "permissions"
						, (
							SELECT row_to_json(d) 
							FROM (
								SELECT 
									bb.id
									, bb.name
								FROM crm.organization bb 
								WHERE bb.id::text = a.org_id::text
							) d
						) AS "organization"
						, (
							SELECT row_to_json(c) 
							FROM (
								SELECT 
									aa.id
									, aa.name
								FROM crm."user_type" aa 
								WHERE aa.id::text = a.type_id::text
							) c 
						) AS "type"
						, (
								SELECT 
									(
										SELECT array_to_json(array_agg(row_to_json(m))) 
										FROM (
											SELECT 
												id.id
												, cc.name
												, cc.ordinal
											FROM UNNEST(ARRAY[x.route]::text[]) id(id) 
											LEFT OUTER JOIN cms.route cc ON cc.id::text = id.id::text 
											ORDER BY cc.ordinal
										) m
									)
								FROM acl.connector x 
								WHERE x.u_id::text = a.id::text
						) AS "modules"
						,(
							SELECT row_to_json(p) 
							FROM (
								SELECT 
									a.id::text
									, a.fname::text "firstName"
									, a.lname::text "lastName"
									, COALESCE(a.fname || ' ' || a.lname)::text "fullName"
									, b.email::text "email"
							) p 
						) AS "profile"
				) b
			)
		FROM crm."user" a 
		LEFT OUTER JOIN acl.login b ON b.u_id::text = a.id::text
		WHERE a.id::text = _id::text
	) a;

$$;


ALTER FUNCTION crm."user"(_id text) OWNER TO postgres;

--
-- Name: users(text); Type: FUNCTION; Schema: crm; Owner: postgres
--

CREATE FUNCTION users(_org_id text) RETURNS json
    LANGUAGE sql
    AS $$

	SELECT array_to_json(array_agg(row_to_json(a)))
	FROM (
		SELECT 
			c.id::text "org_id"
			, (
				SELECT count(a.*) 
				FROM crm.user a 
				WHERE a.org_id::text = _org_id::text
			) as "count"
			, (
				SELECT row_to_json(b)
				FROM (
					SELECT 
						a.id::text
						, a.fname::text "firstName"
						, a.lname::text "lastName"
						, COALESCE(a.fname || ' ' || a.lname)::text "fullName"
						, (
							SELECT row_to_json(c)
							FROM (
								SELECT
									b.id::text
									, b.email::text "email"
									, b.passwd::text "password"
							) c
						) AS "credentials"
				) b
			) AS "user"
		FROM crm."user" a 
		LEFT OUTER JOIN acl.login b ON b.u_id::text = a.id::text
		LEFT OUTER JOIN crm.organization c ON c.id::text = a.org_id::text
		WHERE c.id::text = _org_id::text
	) a;

$$;


ALTER FUNCTION crm.users(_org_id text) OWNER TO postgres;

SET search_path = postgraphile_watch, pg_catalog;

--
-- Name: notify_watchers_ddl(); Type: FUNCTION; Schema: postgraphile_watch; Owner: postgres
--

CREATE FUNCTION notify_watchers_ddl() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
begin
	perform pg_notify(
    	'postgraphile_watch',
    	json_build_object(
			'type',
			'ddl',
			'payload',
			(select json_agg(json_build_object('schema', schema_name, 'command', command_tag)) from pg_event_trigger_ddl_commands() as x)
    	)::text
	);
end;
$$;


ALTER FUNCTION postgraphile_watch.notify_watchers_ddl() OWNER TO postgres;

--
-- Name: notify_watchers_drop(); Type: FUNCTION; Schema: postgraphile_watch; Owner: postgres
--

CREATE FUNCTION notify_watchers_drop() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
begin
	perform pg_notify(
		'postgraphile_watch',
		json_build_object(
			'type',
			'drop',
			'payload',
			(select json_agg(distinct x.schema_name) from pg_event_trigger_dropped_objects() as x)
		)::text
	);
end;
$$;


ALTER FUNCTION postgraphile_watch.notify_watchers_drop() OWNER TO postgres;

SET search_path = acl, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: connector; Type: TABLE; Schema: acl; Owner: postgres
--

CREATE TABLE connector (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    l_id text,
    u_id text,
    g_id text,
    r_id text,
    route text[] DEFAULT '{}'::uuid[],
    o_id text
);


ALTER TABLE connector OWNER TO postgres;

--
-- Name: group; Type: TABLE; Schema: acl; Owner: postgres
--

CREATE TABLE "group" (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    ordinal integer DEFAULT 0 NOT NULL
);


ALTER TABLE "group" OWNER TO postgres;

--
-- Name: login; Type: TABLE; Schema: acl; Owner: postgres
--

CREATE TABLE login (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    u_id text,
    email character varying(150) DEFAULT NULL::character varying,
    passwd character varying(150) DEFAULT NULL::character varying,
    hashpwd text,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "login" OWNER TO postgres;

--
-- Name: COLUMN login.id; Type: COMMENT; Schema: acl; Owner: postgres
--

COMMENT ON COLUMN login.id IS 'Primary Key for Login Table';


--
-- Name: COLUMN login.u_id; Type: COMMENT; Schema: acl; Owner: postgres
--

COMMENT ON COLUMN login.u_id IS 'Foreign key for arm.users table';


--
-- Name: COLUMN login.email; Type: COMMENT; Schema: acl; Owner: postgres
--

COMMENT ON COLUMN login.email IS 'User login email address';


--
-- Name: COLUMN login.passwd; Type: COMMENT; Schema: acl; Owner: postgres
--

COMMENT ON COLUMN login.passwd IS 'User login Plain Text Password';


--
-- Name: COLUMN login.hashpwd; Type: COMMENT; Schema: acl; Owner: postgres
--

COMMENT ON COLUMN login.hashpwd IS 'User login serialised hash password';


--
-- Name: COLUMN login.created; Type: COMMENT; Schema: acl; Owner: postgres
--

COMMENT ON COLUMN login.created IS 'User ID creation Date';


--
-- Name: role; Type: TABLE; Schema: acl; Owner: postgres
--

CREATE TABLE "role" (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    ordinal integer DEFAULT 0 NOT NULL
);


ALTER TABLE "role" OWNER TO postgres;

SET search_path = cms, pg_catalog;

--
-- Name: route; Type: TABLE; Schema: cms; Owner: postgres
--

CREATE TABLE "route" (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    ordinal integer DEFAULT 0 NOT NULL
);


ALTER TABLE "route" OWNER TO postgres;

SET search_path = crm, pg_catalog;

--
-- Name: organization; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE "organization" (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    "group" text,
    role text,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    street character varying(150) DEFAULT NULL::character varying,
    suite character varying(150) DEFAULT NULL::character varying,
    city text,
    state text,
    zipcode text,
    country text,
    geoip text[] DEFAULT '{}'::text[] NOT NULL,
    lang text[] DEFAULT '{en}'::text[] NOT NULL
);


ALTER TABLE "organization" OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE "user" (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    fname character varying(150) DEFAULT NULL::character varying,
    lname character varying(150) DEFAULT NULL::character varying,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    org_id text,
    type_id text,
    "group" text,
    role text
);


ALTER TABLE "user" OWNER TO postgres;

--
-- Name: user_type; Type: TABLE; Schema: crm; Owner: postgres
--

CREATE TABLE "user_type" (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(150) DEFAULT NULL::character varying
);


ALTER TABLE "user_type" OWNER TO postgres;

SET search_path = pms, pg_catalog;

--
-- Name: project; Type: TABLE; Schema: pms; Owner: postgres
--

CREATE TABLE "project" (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    org_id text,
    owner_id text,
    author text[],
    name character varying(255) DEFAULT NULL::character varying,
    details text,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "project" OWNER TO postgres;

--
-- Name: question; Type: TABLE; Schema: pms; Owner: postgres
--

CREATE TABLE question (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    pro_id text,
    question jsonb DEFAULT '{}'::jsonb NOT NULL,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE question OWNER TO postgres;

--
-- Name: respondent; Type: TABLE; Schema: pms; Owner: postgres
--

CREATE TABLE respondent (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    u_id text,
    project_id text,
    ip_address text,
    host_name text,
    completed boolean DEFAULT false NOT NULL,
    manual_invalid boolean DEFAULT false NOT NULL,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE respondent OWNER TO postgres;

--
-- Name: response; Type: TABLE; Schema: pms; Owner: postgres
--

CREATE TABLE response (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    respondent_id text,
    question_id text,
    subset_id text,
    type_id text,
    result jsonb DEFAULT '{}'::jsonb NOT NULL,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE response OWNER TO postgres;

--
-- Name: response_type; Type: TABLE; Schema: pms; Owner: postgres
--

CREATE TABLE response_type (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE response_type OWNER TO postgres;

--
-- Name: subset; Type: TABLE; Schema: pms; Owner: postgres
--

CREATE TABLE subset (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    question_id text,
    question jsonb DEFAULT '{}'::jsonb NOT NULL,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE subset OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE city (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    s_id text,
    name character varying(255) DEFAULT NULL::character varying,
    province character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE city OWNER TO postgres;

--
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE country (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    iso character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE country OWNER TO postgres;

--
-- Name: state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE state (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    iso character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE state OWNER TO postgres;

SET search_path = acl, pg_catalog;

--
-- Data for Name: connector; Type: TABLE DATA; Schema: acl; Owner: postgres
--

COPY connector (id, l_id, u_id, g_id, r_id, route, o_id) FROM stdin;
91c58562-1e92-4730-a184-9b9b7aa5a2a3	4a0994f3-dedd-41b9-bff8-f71b27ea73d1	93141eaf-7c23-473d-9398-66b88840140b	f512c662-b8dc-45c0-a2d0-310181455ebf	239237ca-0e7b-40ee-87af-0bb547a7b700	{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}	b62ae5ef-c124-4a44-b098-4bc67ef8de13
52c67838-592a-4b8e-9473-3e5a867b9253	7f5c7237-e44d-4251-8bd2-19d437cfff42	84636f7b-ffe7-4943-9ef0-1ebd3811280f	f512c662-b8dc-45c0-a2d0-310181455ebf	239237ca-0e7b-40ee-87af-0bb547a7b700	{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}	b62ae5ef-c124-4a44-b098-4bc67ef8de13
1aa80d1a-d5db-45a8-b6bf-19353a5f90dd	0813e282-4909-4b7b-9e89-0aab89812fb4	e2609f01-b3a8-4e2c-89c2-0833ea4e847d	f512c662-b8dc-45c0-a2d0-310181455ebf	239237ca-0e7b-40ee-87af-0bb547a7b700	{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}	b62ae5ef-c124-4a44-b098-4bc67ef8de13
14569c14-664b-4cbd-a95e-74fc687d50bd	9f77aab1-b3b7-409f-a6e0-35187f5c91df	224da9a7-def4-49f3-84fd-33b08bc30213	f512c662-b8dc-45c0-a2d0-310181455ebf	239237ca-0e7b-40ee-87af-0bb547a7b700	{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}	b62ae5ef-c124-4a44-b098-4bc67ef8de13
c5ff5f67-73e6-40eb-be28-0fae13f47f88	e57d0752-c0f5-4bc5-97f6-6434ea35c729	3ca0eb5d-74cb-40d9-ac86-1d2946eeeb99	f512c662-b8dc-45c0-a2d0-310181455ebf	239237ca-0e7b-40ee-87af-0bb547a7b700	{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}	b62ae5ef-c124-4a44-b098-4bc67ef8de13
\.


--
-- Data for Name: group; Type: TABLE DATA; Schema: acl; Owner: postgres
--

COPY "group" (id, name, ordinal) FROM stdin;
f512c662-b8dc-45c0-a2d0-310181455ebf	System	0
69e2b296-7c59-4712-968e-4141dfdae5ee	Development	1
f5d76597-db54-4a64-b98c-90459446c9e0	Managers	2
e5707eaf-e4fd-4112-af0f-2b65e931b0b3	Users	3
2c4d51ce-a208-4cd6-98ac-0a29baa032f2	Respondents	4
0b61ec28-f71e-4386-8668-561724b0020d	Guests	5
\.


--
-- Data for Name: login; Type: TABLE DATA; Schema: acl; Owner: postgres
--

COPY login (id, u_id, email, passwd, hashpwd, created) FROM stdin;
4a0994f3-dedd-41b9-bff8-f71b27ea73d1	93141eaf-7c23-473d-9398-66b88840140b	kathy@bookt.in	kathy#1	\N	2018-03-13 16:53:42.829698
7f5c7237-e44d-4251-8bd2-19d437cfff42	84636f7b-ffe7-4943-9ef0-1ebd3811280f	xiyang@bookt.in	xiyang#1	\N	2018-03-13 16:53:42.829698
9f77aab1-b3b7-409f-a6e0-35187f5c91df	224da9a7-def4-49f3-84fd-33b08bc30213	corina@bookt.in	corina#1	\N	2018-03-13 16:53:42.829698
0813e282-4909-4b7b-9e89-0aab89812fb4	e2609f01-b3a8-4e2c-89c2-0833ea4e847d	james@bookt.in	james#1	\N	2018-03-13 16:53:42.829698
e57d0752-c0f5-4bc5-97f6-6434ea35c729	3ca0eb5d-74cb-40d9-ac86-1d2946eeeb99	max@bookt.in	max#1	\N	2018-03-13 16:53:42.829698
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: acl; Owner: postgres
--

COPY role (id, name, ordinal) FROM stdin;
239237ca-0e7b-40ee-87af-0bb547a7b700	System Administrator	0
a2bab7ed-b1df-4ec3-84aa-38cefa8142cf	Administrator	1
3a763157-4688-46d2-9f21-668274d77b05	Comptroller	2
03c2ec52-301a-4888-aaad-1522457c7890	Manager	3
94d47733-3c4b-4cad-8367-bbf8a2cf9f7f	Author	4
28cfe039-2001-4bfc-861c-846fb0d76108	User	5
09bf7a26-35e9-47c6-b438-3338dc36c550	Guest	6
\.


SET search_path = cms, pg_catalog;

--
-- Data for Name: route; Type: TABLE DATA; Schema: cms; Owner: postgres
--

COPY route (id, name, ordinal) FROM stdin;
c06f7428-1354-4a1b-bb02-edefb1efa362	Dashboard	0
5006a75a-fe11-40e3-93ce-e446d39a865e	Clients	1
0eca981c-17c1-4380-9f69-ca75bc334a67	Projects	2
d934a01f-8a03-4ded-b277-d874fa3f28ae	Users	3
\.


SET search_path = crm, pg_catalog;

--
-- Data for Name: organization; Type: TABLE DATA; Schema: crm; Owner: postgres
--

COPY organization (id, name, "group", role, created, street, suite, city, state, zipcode, country, geoip, lang) FROM stdin;
b62ae5ef-c124-4a44-b098-4bc67ef8de13	Bookt In	\N	\N	2018-03-13 16:58:00.711168	\N	\N	\N	\N	\N	\N	{}	{en}
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: crm; Owner: postgres
--

COPY "user" (id, fname, lname, created, org_id, type_id, "group", role) FROM stdin;
93141eaf-7c23-473d-9398-66b88840140b	Kathy	Cheng	2018-03-13 17:00:58.694875	b62ae5ef-c124-4a44-b098-4bc67ef8de13	1b6e33ed-f31e-49ea-88dd-693878098f7b	f512c662-b8dc-45c0-a2d0-310181455ebf	239237ca-0e7b-40ee-87af-0bb547a7b700
84636f7b-ffe7-4943-9ef0-1ebd3811280f	Xiyang	Chen	2018-03-13 17:00:58.694875	b62ae5ef-c124-4a44-b098-4bc67ef8de13	1b6e33ed-f31e-49ea-88dd-693878098f7b	f512c662-b8dc-45c0-a2d0-310181455ebf	239237ca-0e7b-40ee-87af-0bb547a7b700
e2609f01-b3a8-4e2c-89c2-0833ea4e847d	James	Mendham	2018-03-13 17:00:58.694875	b62ae5ef-c124-4a44-b098-4bc67ef8de13	1b6e33ed-f31e-49ea-88dd-693878098f7b	69e2b296-7c59-4712-968e-4141dfdae5ee	239237ca-0e7b-40ee-87af-0bb547a7b700
224da9a7-def4-49f3-84fd-33b08bc30213	Corina	Wong	2018-03-13 17:00:58.694875	b62ae5ef-c124-4a44-b098-4bc67ef8de13	1b6e33ed-f31e-49ea-88dd-693878098f7b	69e2b296-7c59-4712-968e-4141dfdae5ee	a2bab7ed-b1df-4ec3-84aa-38cefa8142cf
3ca0eb5d-74cb-40d9-ac86-1d2946eeeb99	Max	Huang	2018-03-13 17:14:50.77116	b62ae5ef-c124-4a44-b098-4bc67ef8de13	1b6e33ed-f31e-49ea-88dd-693878098f7b	69e2b296-7c59-4712-968e-4141dfdae5ee	a2bab7ed-b1df-4ec3-84aa-38cefa8142cf
\.


--
-- Data for Name: user_type; Type: TABLE DATA; Schema: crm; Owner: postgres
--

COPY user_type (id, name) FROM stdin;
1b6e33ed-f31e-49ea-88dd-693878098f7b	system
e43eb4f1-cdd0-46b6-b577-700d028a9c52	client
1301e98f-b7d4-4673-be3e-d2acc6abd0cc	respondent
c64bbfd6-414d-4b15-a3eb-a2ea30cb3d7c	guest
\.


SET search_path = pms, pg_catalog;

--
-- Data for Name: project; Type: TABLE DATA; Schema: pms; Owner: postgres
--

COPY project (id, org_id, owner_id, author, name, details, created, modified) FROM stdin;
\.


--
-- Data for Name: question; Type: TABLE DATA; Schema: pms; Owner: postgres
--

COPY question (id, pro_id, question, created, modified) FROM stdin;
\.


--
-- Data for Name: respondent; Type: TABLE DATA; Schema: pms; Owner: postgres
--

COPY respondent (id, u_id, project_id, ip_address, host_name, completed, manual_invalid, created) FROM stdin;
\.


--
-- Data for Name: response; Type: TABLE DATA; Schema: pms; Owner: postgres
--

COPY response (id, respondent_id, question_id, subset_id, type_id, result, created) FROM stdin;
\.


--
-- Data for Name: response_type; Type: TABLE DATA; Schema: pms; Owner: postgres
--

COPY response_type (id, name) FROM stdin;
1bd0ace8-b20f-48a1-91c0-949a023df0e3	open
290565bc-d97f-470d-aa5a-442d4f84ac10	option
8968d79f-862d-4c54-9ab7-9bd6b70e86bd	swipe
85820ba0-8a78-40a1-b32b-36d7e2167202	boolean
\.


--
-- Data for Name: subset; Type: TABLE DATA; Schema: pms; Owner: postgres
--

COPY subset (id, question_id, question, created, modified) FROM stdin;
\.


SET search_path = public, pg_catalog;

--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY city (id, s_id, name, province) FROM stdin;
2f1e607e-fa70-4dcd-b041-3bc739445a34	14e195ad-be6e-42e2-be2d-65a8d4d47fec	Yellowknife	Northwest Territories
c558f9d6-bf59-4e36-9f7a-bd20f8d931c3	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Abbotsford	British Columbia
132b09fc-1cdb-47d2-b2fc-109ba69488ae	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Armstrong	British Columbia
6a30bf31-48d2-4cb3-b978-b5ae3002879a	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Burnaby	British Columbia
48159379-8d11-4702-b5f7-10a3bd67047a	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Campbell River	British Columbia
39428b80-c335-43c5-9082-498da3ca6fc1	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Castlegar	British Columbia
a28448da-047d-4e86-b86e-8253d722a690	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Chilliwack	British Columbia
36e199cc-0ad2-4eb5-b74a-83c73bcbca9e	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Colwood	British Columbia
3bff8ceb-a5b9-4f98-b9f2-b5e6ba12af4e	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Coquitlam	British Columbia
ca25523d-b825-469e-8e52-18dde9f3107b	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Courtenay	British Columbia
f53bcfe4-ebb4-485b-aaca-73fdc424fdbe	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Cranbrook	British Columbia
2bbbb928-d349-4828-8895-5d21addfb5fc	e948de86-6106-450d-bda1-11b9c54b0e6c	Brandon	Manitoba
a98d2155-39a7-4dc9-be04-9e9b5b419964	e948de86-6106-450d-bda1-11b9c54b0e6c	Dauphin	Manitoba
c287e5ba-84bd-472d-90bb-d4f94dfe6431	e948de86-6106-450d-bda1-11b9c54b0e6c	Flin Flon (part)	Manitoba
8c5dd992-4ddb-4fa6-ad5f-820a8927d54e	e948de86-6106-450d-bda1-11b9c54b0e6c	Morden	Manitoba
19b50ee2-e7d7-4b72-966a-fbd2da385512	e948de86-6106-450d-bda1-11b9c54b0e6c	Portage la Prairie	Manitoba
a24abe6c-52fc-41cb-9094-6c247d9e3479	e948de86-6106-450d-bda1-11b9c54b0e6c	Selkirk	Manitoba
92fb8c47-29b7-4f20-86c6-5b4e49153e9f	e948de86-6106-450d-bda1-11b9c54b0e6c	Steinbach	Manitoba
44a82864-0fbb-4c95-8270-78fdbbb23ab0	e948de86-6106-450d-bda1-11b9c54b0e6c	Thompson	Manitoba
3e2c07ac-4bc9-4776-9cbd-00919a341d41	e948de86-6106-450d-bda1-11b9c54b0e6c	Winkler	Manitoba
09844137-42df-4705-9d6d-18395ebef1d3	e948de86-6106-450d-bda1-11b9c54b0e6c	Winnipeg	Manitoba
6f105d2a-99bf-47f8-939f-59e5977d4373	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Dawson Creek	British Columbia
01123d95-4219-4b87-91f5-b174df5aa9f0	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Duncan	British Columbia
ca5e1e57-818d-4288-b2af-2a40fe6c96dd	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Enderby	British Columbia
2ede0d58-9046-4c67-9d88-a781682feb45	09bf5fed-67c6-43f1-a13c-d0ee7129e671	Bathurst	New Brunswick
052d6bb9-cec9-4aa4-b35a-32e868e8697b	09bf5fed-67c6-43f1-a13c-d0ee7129e671	Campbellton	New Brunswick
5f50f97e-af9b-41f4-8473-48fafc017e5b	09bf5fed-67c6-43f1-a13c-d0ee7129e671	Dieppe	New Brunswick
2d2abe8d-3784-40eb-8095-8180cf254c10	09bf5fed-67c6-43f1-a13c-d0ee7129e671	Edmundston	New Brunswick
48b6930f-db52-4378-98f8-304d2be9d33e	09bf5fed-67c6-43f1-a13c-d0ee7129e671	Fredericton	New Brunswick
344a70d3-e5cb-46a6-9f11-9f9f9dfbd9c6	09bf5fed-67c6-43f1-a13c-d0ee7129e671	Miramichi	New Brunswick
1cbf1b8c-1c04-480b-9906-1a4374278b89	09bf5fed-67c6-43f1-a13c-d0ee7129e671	Moncton	New Brunswick
b9a9e327-fa6d-4784-8080-b1b33a824caa	09bf5fed-67c6-43f1-a13c-d0ee7129e671	Saint John	New Brunswick
11acf94c-599f-4043-8f61-5f5e7153ae9d	bf747443-b54c-4191-a8ce-49435c261397	Corner Brook	Newfoundland and Labrador
370f10a9-59fb-4ec9-9532-2417ec91f2de	bf747443-b54c-4191-a8ce-49435c261397	Mount Pearl	Newfoundland and Labrador
81abbe4a-5b9b-44a3-8d00-da91b60d7b87	bf747443-b54c-4191-a8ce-49435c261397	St. John's	Newfoundland and Labrador
284c3817-182e-4750-8dd0-95d4350df6fc	188ea6f2-3111-4121-926c-cae8bb522b43	Airdrie	Alberta
e91856d6-8cb4-471e-b9d4-7fd59995daa2	188ea6f2-3111-4121-926c-cae8bb522b43	Brooks	Alberta
86136750-adc2-444d-b520-ddb1b051281c	188ea6f2-3111-4121-926c-cae8bb522b43	Calgary	Alberta
45fa5f9b-63cd-421a-842c-095a4af1bfd3	188ea6f2-3111-4121-926c-cae8bb522b43	Camrose	Alberta
a95cae5c-c8d6-4aef-8b14-fd0ab08501de	188ea6f2-3111-4121-926c-cae8bb522b43	Chestermere	Alberta
b2b01ed2-a0aa-4938-8183-15831a1246c8	188ea6f2-3111-4121-926c-cae8bb522b43	Cold Lake	Alberta
585fc070-f46d-4ce8-a9a3-a91e65f2d877	188ea6f2-3111-4121-926c-cae8bb522b43	Edmonton	Alberta
9ffeaa94-f275-46e2-b34e-c8d2e2084798	188ea6f2-3111-4121-926c-cae8bb522b43	Fort Saskatchewan	Alberta
d4da021b-56f5-414c-b977-1c260c202058	188ea6f2-3111-4121-926c-cae8bb522b43	Grande Prairie	Alberta
865293f7-6b8f-4201-a530-c007a8f6647e	188ea6f2-3111-4121-926c-cae8bb522b43	Lacombe	Alberta
4ea84412-85bf-4d64-823f-867c6004be28	188ea6f2-3111-4121-926c-cae8bb522b43	Leduc	Alberta
86a683eb-f71a-4032-9468-af04fb4a8dbb	188ea6f2-3111-4121-926c-cae8bb522b43	Lethbridge	Alberta
daacaaed-3b74-414b-8a9f-024d9e0d1ecb	188ea6f2-3111-4121-926c-cae8bb522b43	Lloydminster (part)	Alberta
731082d8-2144-4e68-8ebe-b8423b3c8238	188ea6f2-3111-4121-926c-cae8bb522b43	Medicine Hat	Alberta
9c500384-0dbd-4a75-a48b-ed9df3041371	188ea6f2-3111-4121-926c-cae8bb522b43	Red Deer	Alberta
82f41aba-c3a3-45d5-a3f2-0b51973b3675	188ea6f2-3111-4121-926c-cae8bb522b43	Spruce Grove	Alberta
b9720715-347e-4c01-84a8-690bf5e9bc8f	188ea6f2-3111-4121-926c-cae8bb522b43	St. Albert	Alberta
65ca35ab-c3af-4daa-9b64-f0d0c8eb5a1b	188ea6f2-3111-4121-926c-cae8bb522b43	Wetaskiwin	Alberta
bd78f5c5-07ff-4530-b445-aec725cd5444	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Fernie	British Columbia
dfdf079f-07c8-4a45-8da2-d6b431ba10e5	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Fort St. John	British Columbia
d791a1fb-9d4b-4422-a09c-916786f41d1e	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Grand Forks	British Columbia
5c48fe72-1e3f-474f-a694-e13328ba26b9	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Greenwood	British Columbia
e10518e6-56a0-47e0-bc1f-2da228ce80e1	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Kamloops	British Columbia
b054876e-876d-47a7-8ccd-88db1c6b4c0b	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Kelowna	British Columbia
dd05d45d-45ac-41c7-abe1-f04afc6f0aeb	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Kimberley	British Columbia
290d5023-a229-42c0-a042-2499ecbe7b14	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Langford	British Columbia
4f11f7d1-3ece-4543-9627-3a0a74575f67	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Langley	British Columbia
fd67c2ee-fc89-4118-9845-5e0f483c91da	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Maple Ridge	British Columbia
0d6e29b8-73f3-46fa-b503-bd080259b346	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Merritt	British Columbia
89eb6c4e-e33c-4142-82f2-51f9db0b0ded	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Nanaimo	British Columbia
9ea80d60-b8be-4f40-a3b9-012c0b35ab16	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Nelson	British Columbia
413ce664-3fbc-419e-bf9e-f8d42dfd6330	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	New Westminster	British Columbia
b53d745e-0ef3-4338-9554-8f0479bd32df	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	North Vancouver	British Columbia
a369b4eb-fdb7-4a08-944a-80d62f07ae80	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Parksville	British Columbia
aa3c8769-9e2e-4d77-a44a-bd584a4b9a82	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Penticton	British Columbia
0617f440-252c-49ce-94bd-aa5db8d1b4f6	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Pitt Meadows	British Columbia
10dfd3f7-1379-4f84-97b7-4f7fd3c48d96	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Port Alberni	British Columbia
3ccb4e32-7504-45be-ad2a-df9629e9b9d1	1a3cf21f-9648-4de3-9966-857014de2305	Iqaluit	Nunavut
b0cc51dc-cb6c-4738-a7ca-6bf4ab76f4ea	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Acton Vale	Quebec
bb5b2e65-3ac7-459e-9b2e-5c8ecce3984b	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Alma	Quebec
9c8c9bc1-0299-4d56-8916-be946db15301	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Amos	Quebec
04cf90cf-7c36-49cd-a434-de6f2865821a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Amqui	Quebec
4e7211e1-45ba-4da0-be29-7225173ef643	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Asbestos	Quebec
9af17607-1c48-44bf-b4a3-8097c19bcd56	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Baie-Comeau	Quebec
3de64e81-75ad-4445-a751-857e2d670cbc	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Baie-D'Urfé	Quebec
29225dfb-5776-4cee-880a-4394185a283b	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Baie-Saint-Paul	Quebec
47480040-cfb9-4037-8337-c14cb08de3dd	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Barkmere	Quebec
14d0171b-3660-46de-8bac-d367551ed3f1	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Beaconsfield	Quebec
3ba2741d-7229-498c-bf4d-b518959f64f3	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Beauceville	Quebec
113519de-6327-4ff9-b15a-cdbb2bbfa460	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Beauharnois	Quebec
5593ecfb-250a-4c0b-a3e2-0fb15132dacd	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Beaupré	Quebec
28cccb29-46b9-485f-8c98-61f0f75dbda6	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Bécancour	Quebec
2065b5f4-3ae4-4296-8a9a-2133bfd6ee1d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Bedford	Quebec
2abed40e-6b84-4fb3-bf39-7676e3a87421	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Belleterre	Quebec
3075bf22-ec6c-4bfa-a0a6-bd4ce6522652	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Beloeil	Quebec
e5359e68-3d0b-4a2f-b1f1-4a58a2aa47cc	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Berthierville	Quebec
d9e8f7a8-38a2-4bc8-804a-87b97e2df04d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Blainville	Quebec
7d755334-8dbf-4fb5-aad2-f31b2826284c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Boisbriand	Quebec
2893b637-9086-43d8-a701-8da9dda23dd7	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Bois-des-Filion	Quebec
55fa0b14-ea9c-4413-b348-511feae9a1e9	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Bonaventure	Quebec
008a8e7d-829d-4ff9-b149-e578614c9e3a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Boucherville	Quebec
12c42eb9-fb9e-4bf8-adf2-3aacca5f854b	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Brome Lake	Quebec
55816cb5-9fe1-4336-8986-4bff7bba73e5	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Bromont	Quebec
a204498d-ccc9-4730-a77c-35341d2dcbf6	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Brossard	Quebec
c0136070-8fca-4a74-aca9-7231d8fdd590	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Brownsburg-Chatham	Quebec
c936393d-dcb4-4bdc-ae83-3eb216d9ca3a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Candiac	Quebec
784449bd-f5e2-4f9a-8e6c-8d71d5dcc087	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Cap-Chat	Quebec
d55d8ff3-9625-4b59-9f66-207ec7b12e03	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Cap-Santé	Quebec
e1baae4e-8460-4c71-a59e-af76c69c4560	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Carignan	Quebec
ad12ac0e-2667-411b-9421-cc114f1e390e	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Carleton-sur-Mer	Quebec
8b2d8d79-4f74-4d08-aa11-99e2b2641d38	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Causapscal	Quebec
0fd773cd-2682-4bef-b61a-d7069c9343db	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Chambly	Quebec
3241b368-9f6e-4431-aceb-8eaf4f8a8b56	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Chandler	Quebec
940958f3-fc73-4ffb-b67a-d4b632bd006e	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Chapais	Quebec
0fd63b8c-dc4d-4c10-8663-2d666fddec79	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Charlemagne	Quebec
282123ac-b6da-45df-9644-f972ab7b89a0	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Châteauguay	Quebec
3d35b13e-90d5-44f4-8d80-551115a34d0a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Château-Richer	Quebec
f4a10245-1528-4a36-94c1-eb16d684240a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Chibougamau	Quebec
1bb3eb28-559e-4054-9e72-d1a5a0a1527c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Clermont	Quebec
779c747f-bc24-48d6-8465-f895517e5b38	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Coaticook	Quebec
c1765641-4206-4774-bb8c-7a63b5fa30b0	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Port Coquitlam	British Columbia
47657ae8-c6e9-4dbf-a93c-83b70147b530	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Port Moody	British Columbia
83d66785-9522-43fd-b05c-ae5df36642e6	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Powell River	British Columbia
1b88b490-f358-4608-b8c0-2afd33133937	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Prince George	British Columbia
fa267970-cb25-4757-87ce-f7c7bdd34d01	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Prince Rupert	British Columbia
e3dd8924-c890-48df-adb6-e54270251d24	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Quesnel	British Columbia
285d1825-9856-4688-9305-044259e867e4	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Revelstoke	British Columbia
63500dc5-ab91-46fe-a82e-3650e2535484	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Richmond	British Columbia
1bff02d5-d18e-437b-adb9-60b0360005c0	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Rossland	British Columbia
bc9b0934-9ed2-4bd9-b98a-15ad9b38ff57	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Salmon Arm	British Columbia
c4797d4c-7f70-4888-9138-ed70d85fff7f	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Surrey	British Columbia
3fd2a2d3-f9e5-42cc-b485-5f4b59f23d83	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Terrace	British Columbia
d8203512-c76a-4a9d-ae91-95a82753fc4d	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Trail	British Columbia
0d4ef18b-ff40-40fa-b1ec-c83c37cf4906	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Vancouver	British Columbia
bddd0758-28b7-4340-8323-8b54c5c4db4b	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Vernon	British Columbia
ef2d45c6-0f70-480f-9f78-4867a2c7ef6e	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Victoria	British Columbia
ca256035-fa08-4720-8926-d4f03b93b0fa	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	White Rock	British Columbia
284fcea8-6ed2-4ea0-a7d7-23db71470a1b	bf3ade63-c9cf-40ae-96cd-c2208af9ac98	Williams Lake	British Columbia
f4617ed8-b9e3-4865-bd43-799cb3d0a0f8	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Quinte West	Ontario
18eef208-b145-4c82-8710-558b22c556d4	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Sarnia	Ontario
dd74e6a5-fa99-4b69-81ea-210e4ccb72ee	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Sault Ste. Marie	Ontario
41a94326-053d-4b3d-ba81-622685b7e93b	bbfaa09d-bc87-44ac-b035-caa87ec6a584	St. Catharines	Ontario
ab925a0c-9ee7-44e6-bd1d-bf41f9d4de1f	bbfaa09d-bc87-44ac-b035-caa87ec6a584	St. Thomas	Ontario
269c7c0e-d999-4627-b16a-a8f27f540921	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Stratford	Ontario
d84e0c73-906f-4709-978f-d39414819f65	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Temiskaming Shores	Ontario
a7f290d4-e230-4dc8-8f09-a93e1d158266	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Thorold	Ontario
d17d3f4f-da67-4567-97cc-0626608d3d66	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Thunder Bay	Ontario
93922fc6-8fde-4c20-86ef-301cdd796015	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Timmins	Ontario
0818398a-afb0-449f-9b6f-229f2a3f35ab	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Toronto	Ontario
ef0073ac-0876-428c-9590-b0ddb3a0a3d8	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Vaughan	Ontario
06cad5e1-905b-4cb3-a9b2-3b4bcdbf6e8f	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Waterloo	Ontario
ba060375-ea09-4c95-b249-08908f241b97	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Welland	Ontario
26b7d2a7-0bab-4851-94fb-347eb8af1fe7	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Windsor	Ontario
e8649aa2-4127-48fa-b52f-eeb79c3bcc4d	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Woodstock	Ontario
9a909675-cb5d-4385-b1a1-8d998a09808a	352ab45d-8553-4262-a8e2-512d2db4ad95	Charlottetown	Prince Edward Island
55cb253c-6601-4fb7-969d-e292735f2e85	352ab45d-8553-4262-a8e2-512d2db4ad95	Summerside	Prince Edward Island
c9eaf10a-b6a8-488b-9da0-4624a3faa37a	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Estevan	Saskatchewan
1d4a18ee-cbb6-48e6-88f7-fdea6828ffb8	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Flin Flon (part)	Saskatchewan
633ff636-e2e3-4492-a626-9b31b20ffa1c	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Humboldt	Saskatchewan
cac5aef1-65f5-45e8-8230-be86f7aec94d	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Lloydminster (part)	Saskatchewan
fac89703-4204-4298-802b-1675eb774338	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Martensville	Saskatchewan
78214b6e-1001-49f6-8015-3c8b996a5341	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Meadow Lake	Saskatchewan
c5d6b27b-5f82-4db6-ae9a-04307e434f4c	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Melfort	Saskatchewan
48021b9c-fbab-443e-9add-707ddf9cd46e	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Melville	Saskatchewan
5d81feaf-4128-41e0-966c-f6ead3459043	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Moose Jaw	Saskatchewan
b6625e22-4acf-415e-86bb-1679cba5b240	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	North Battleford	Saskatchewan
e0402a52-3224-4d68-86fe-05d8f88155d7	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Prince Albert	Saskatchewan
9ef86889-0f85-4775-9223-c83548bc461c	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Regina	Saskatchewan
acca8fa8-f2a5-40ee-8971-cd4e25fa1a7f	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Barrie	Ontario
53b47ae5-2dc4-426b-9f14-3b9a92602ce2	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Belleville	Ontario
ba80c24f-85c7-43c8-ad8e-c9ce53b21c23	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Brampton	Ontario
d6229f58-681c-4618-a522-b961deaf69fa	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Brant	Ontario
9c48cd7f-b62f-4f1a-90c7-2f9bcdd43e2f	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Brantford	Ontario
ba866f9f-c793-4a2b-a881-ab555a055ea1	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Brockville	Ontario
be1c9797-3df4-4161-b252-b6cedd34d3ed	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Burlington	Ontario
836a9bb1-44ae-43ef-9230-96eb124ed82e	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Cambridge	Ontario
df05932d-6c99-4b69-bb7c-89a5d4c8ce3a	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Clarence-Rockland	Ontario
0f600a32-4095-4aff-8634-c1981c5f3a22	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Cornwall	Ontario
6ab8ca9e-a379-4a2a-a52f-e2f6eb6212c5	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Dryden	Ontario
cfa93f35-0b34-4d53-b8ce-c26b51d3e247	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Elliot Lake	Ontario
19632e1c-1eb1-4925-9ac9-7b5c72ac7382	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Greater Sudbury	Ontario
a2d2b452-bb5e-4f00-8a62-ff48098a8c83	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Guelph	Ontario
8dd2b909-3e3b-442b-9403-32bd64b82904	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Haldimand County	Ontario
16dbb4b8-1082-47b4-9ecd-d9de028abe2f	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Hamilton	Ontario
094cd456-b298-475a-b419-d3d6332dfe49	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Kawartha Lakes	Ontario
2741c925-f585-4ecd-87e2-15b89b9d99e4	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Kenora	Ontario
f6604bff-a3b3-4184-900a-729350e0b348	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Kingston	Ontario
30c5406f-59b5-4097-9ddc-f72c8bb19107	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Kitchener	Ontario
c4ce24fe-1c87-47d8-bf7c-76e9d96cd3ac	bbfaa09d-bc87-44ac-b035-caa87ec6a584	London	Ontario
38535a0b-578c-482d-b2e7-56b9ef25dfb6	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Markham	Ontario
39552289-be37-40d5-a1d7-408c94c113b1	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Mississauga	Ontario
5a20c974-e26d-4ddf-89fb-c6f7f4736c18	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Saskatoon	Saskatchewan
df62fc3c-25ac-4b1b-a2de-57246c844130	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Swift Current	Saskatchewan
af009646-e0cb-4931-89b6-c92807f88a95	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Warman	Saskatchewan
a1c10b72-f9c9-4a47-8eb7-c929812b6b3c	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Weyburn	Saskatchewan
9ec3d0c4-8b3f-49c2-8939-92f92c6e9c37	bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Yorkton	Saskatchewan
c06a8ce2-b64e-468d-8ffa-f6ff03c03ec4	4996fee8-f6c7-451a-a073-5c6cd4b10efc	Whitehorse	Yukon
b9215084-7340-40e0-904e-a47504e05ccc	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Contrecoeur	Quebec
10bf80c2-66e7-4b2d-88d8-7738cfb4114b	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Cookshire-Eaton	Quebec
51431138-7644-4289-b22d-27357ab68b7a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Côte Saint-Luc	Quebec
0bdd3173-3442-4149-9f67-d45817a73596	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Coteau-du-Lac	Quebec
55ec0a89-dfe9-4782-94b2-5717334459a1	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Cowansville	Quebec
a19fd39b-5431-4d5a-9b02-a2df479f4f89	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Danville	Quebec
ec368982-9d1b-4a4d-9b60-2e8212782d93	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Daveluyville	Quebec
b5c1d4ef-f02a-43ca-a17f-7523f25ee55f	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Dégelis	Quebec
ed52d51e-3cf7-4f11-85d0-80f97e0e0778	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Delson	Quebec
daa3ce6f-957d-4e3c-9370-8e1ab41b3048	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Desbiens	Quebec
163f8259-7eff-4733-8568-c8de08ec89fb	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Deux-Montagnes	Quebec
84486cec-86ae-4fcc-a141-eaa84c35940c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Disraeli	Quebec
1653135d-9467-44e5-a45a-b8d811c0d05d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Dolbeau-Mistassini	Quebec
7c7f0986-fa5e-45a1-83bb-7a4462553d7d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Dollard-des-Ormeaux	Quebec
a60135d4-cf0c-4801-9992-3243d327b5d5	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Donnacona	Quebec
0a0bb493-d62a-4785-9389-109ec7d6579b	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Dorval	Quebec
196b40f3-5135-4c0d-909b-4e6ce36bd76c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Drummondville	Quebec
dbdb2d0d-0d0d-4a44-962c-1a306ca33737	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Dunham	Quebec
d4160202-2d90-430b-bee2-c6bdf43242fd	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Duparquet	Quebec
2192c6ef-74b1-41c6-85ba-031161dc0d2a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	East Angus	Quebec
00197824-e72c-4242-8046-2615fd803612	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Estérel	Quebec
adff1d65-5a7d-4bff-bac6-98d1a9e5f4fe	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Farnham	Quebec
2e5e79b5-cbd0-4bc6-97e5-454090ece078	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Fermont	Quebec
b9dea8d9-d9be-44f5-98c6-d7b2cc9a523d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Forestville	Quebec
2fb4ff1a-6d1f-4a15-8d1f-46b048848309	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Fossambault-sur-le-Lac	Quebec
e04e27bf-5483-4605-ae9b-bcfd45eda826	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Gaspé	Quebec
d2d43ce8-3dfe-4ec0-833d-19b9972077d1	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Gatineau	Quebec
28b60754-20d7-427e-9bbf-dacdd13a0fd1	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Gracefield	Quebec
98580d04-b786-445f-9810-14179d6441ef	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Granby	Quebec
56868c24-e128-4e21-9d24-e2b11892ad7b	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Grande-Rivière	Quebec
67558c91-8acd-4b20-87da-c6c567ef96c3	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Hampstead	Quebec
ab9c601a-4c18-4d1b-ad8d-48e910c85823	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Hudson	Quebec
e759730e-ac73-4310-8158-6f874d73476a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Huntingdon	Quebec
3bd76e06-f423-449a-9b1a-f73f4f02ab32	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Joliette	Quebec
8152cdac-df84-43ba-b3cd-345dd401cecd	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Kingsey Falls	Quebec
8e2d82d6-657e-46b5-8b21-9e3db86bce4b	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Kirkland	Quebec
c9cd1298-bde8-4b29-a95d-69435d68b1ac	de8482cc-4abc-4dd3-a377-ef5489f3cc42	La Malbaie	Quebec
513a557f-5cde-4246-b5e2-7db47a62a777	de8482cc-4abc-4dd3-a377-ef5489f3cc42	La Pocatière	Quebec
1e051508-efa2-4e7a-a530-90503b28b838	de8482cc-4abc-4dd3-a377-ef5489f3cc42	La Prairie	Quebec
db6788e6-77b1-4a22-9c60-1a625916365a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	La Sarre	Quebec
77551224-c043-4cc5-8257-13eb41b89217	de8482cc-4abc-4dd3-a377-ef5489f3cc42	La Tuque	Quebec
f8601659-7bc4-46ba-a640-2c3741674ad7	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Lac-Delage	Quebec
082dd503-4262-489a-ba95-e1e6b969dd4e	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Lachute	Quebec
160fa404-95bd-43f8-89ea-e40d4bab0951	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Lac-Mégantic	Quebec
a2b2596a-0fa7-4e84-adba-3eae004ec951	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Lac-Saint-Joseph	Quebec
709883e6-10ad-498a-bca6-158eba190847	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Lac-Sergent	Quebec
d7b10f65-b0f4-40f0-8a41-45f6eb319a7f	de8482cc-4abc-4dd3-a377-ef5489f3cc42	L'Ancienne-Lorette	Quebec
bbbd6436-26a8-4b63-969f-484689f3acb4	de8482cc-4abc-4dd3-a377-ef5489f3cc42	L'Assomption	Quebec
bf4572d1-add1-43d8-99ce-9c4bcb35d852	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Laval	Quebec
91d24251-1163-43e7-8afa-bc3eb7f32c06	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Lavaltrie	Quebec
90660adc-8f51-4c6c-b8da-e460811afe45	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Lebel-sur-Quévillon	Quebec
dd20f3b6-64a3-4633-b55b-ae3bff30dc95	de8482cc-4abc-4dd3-a377-ef5489f3cc42	L'Épiphanie	Quebec
21da3474-9dc4-4c80-81d5-9281cbcd8279	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Léry	Quebec
86e140b9-fea6-448d-b669-6f0db8768706	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Lévis	Quebec
2f92b3f6-d60d-4119-a4fb-11de5cbfa16f	de8482cc-4abc-4dd3-a377-ef5489f3cc42	L'Île-Cadieux	Quebec
b47a225e-44af-4df3-9cd6-d6459b0dd634	de8482cc-4abc-4dd3-a377-ef5489f3cc42	L'Île-Dorval	Quebec
4b1370fe-8662-4182-9161-cf59a9e4f326	de8482cc-4abc-4dd3-a377-ef5489f3cc42	L'Île-Perrot	Quebec
63ce1295-ca8f-4a9d-9129-eb7298d36712	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Longueuil	Quebec
10e277b3-cf3b-42f8-a9c5-8ca898edf85c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Lorraine	Quebec
eafc9716-d304-4a25-b63b-56816126eb8e	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Louiseville	Quebec
a5300501-71df-46df-aec6-f0072e9e68d7	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Macamic	Quebec
dda1b6d8-317f-4abd-a479-a27a17c44664	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Magog	Quebec
8ccf43ac-6d93-4072-a1f8-686d9192cf4a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Malartic	Quebec
9c69a44e-ecf7-43b3-9633-6b1f80b1aefa	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Maniwaki	Quebec
7b85c37c-67ba-4213-ba6b-91f87c51f32f	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Marieville	Quebec
24ae29de-6530-4a7a-a83b-1656dc8cc028	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Mascouche	Quebec
15f4197e-59a9-4a35-9d21-a05c27a4074c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Matagami	Quebec
036964be-0fbb-4d5b-8c6d-21f1f4290989	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Matane	Quebec
c13cceb7-27ea-4bc9-9a45-f59029c59c3a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Mercier	Quebec
64d4b413-dbd0-4c40-8a56-2f3f2e03ee20	de8482cc-4abc-4dd3-a377-ef5489f3cc42	MétabetchouanLac-à-la-Croix	Quebec
30c92746-95dd-4ede-9d2e-69a745505178	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Métis-sur-Mer	Quebec
b7a4485f-345e-4157-ab50-2f4addb4103e	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Mirabel	Quebec
8df289f3-b0c3-4ea0-952a-624f9e545060	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Mont-Joli	Quebec
ca4f49a4-5c5a-4c52-9221-bccc5e2bc4cb	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Mont-Laurier	Quebec
7a6c47dc-d30a-4e57-a850-f295e458ba97	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Montmagny	Quebec
794d33c5-1360-4c93-b4ca-300f636c963d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Montreal	Quebec
d82601a7-5c29-457c-9a6c-2d485cb64f97	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Montreal West	Quebec
ec9d2a68-e301-4da5-8aa3-621d2400432c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Montréal-Est	Quebec
8d2a6cb4-f4a4-4538-8a6f-3292296d926a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Mont-Saint-Hilaire	Quebec
e16f6623-b73d-47f9-8863-18c4a5389843	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Mont-Tremblant	Quebec
b9007cab-922f-4015-9b84-0468f96c0638	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Mount Royal	Quebec
94b52c64-099b-496c-8827-b3843861c8e9	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Murdochville	Quebec
bc98bec6-f18f-450c-8fae-b979b8b16a34	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Neuville	Quebec
72128f4c-9623-4ef7-8bc5-cf988dca59fb	de8482cc-4abc-4dd3-a377-ef5489f3cc42	New Richmond	Quebec
ead77998-b4b4-4ac0-b9e2-21f0f779cbca	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Nicolet	Quebec
97c7d160-647e-4c30-a758-de34ca327b56	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Normandin	Quebec
3f9f7258-f3f6-47f4-8838-091b02b98e6a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Notre-Dame-de-l'Île-Perrot	Quebec
f32e2344-5135-47b3-97bf-81a54f411754	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Notre-Dame-des-Prairies	Quebec
727f27c8-7ed2-4140-99f9-677f161a7bb9	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Otterburn Park	Quebec
92414df3-3ae7-4ace-a766-d08b0f0c1ada	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Paspébiac	Quebec
35a67b9b-1c91-4d3a-be78-afb58a68ff39	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Percé	Quebec
1a2ac1a1-010d-47b5-97c8-93ea244073a9	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Pincourt	Quebec
e4c80c0f-da38-45e9-a0af-daa6aa814b9f	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Plessisville	Quebec
237cab92-e3f2-49bd-9980-e9bcefcadb26	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Pohénégamook	Quebec
f4a3f236-8b0d-44c0-91e2-aa5a6c2b8919	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Pointe-Claire	Quebec
1200292a-5ff2-4ff8-a83c-abc12f60f22d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Pont-Rouge	Quebec
02136d00-59f2-438f-99f7-6acf59af78c4	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Port-Cartier	Quebec
d5367ebc-2eb1-4d98-8d2e-8dc165fc21c8	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Portneuf	Quebec
1502ff12-8fbd-418b-9d7c-decc246d0a18	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Prévost	Quebec
36123f4e-ac51-45ed-80cd-5353339f22ae	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Princeville	Quebec
b7bd9e82-cea3-4d0b-b65d-273c0128c51a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Québec	Quebec
4e33b395-aad0-4f9c-b135-56703b625ca5	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Repentigny	Quebec
fbc6f084-a374-4b13-ac0e-835bc0e674ff	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Richelieu	Quebec
81ce9237-9fc1-4990-9464-6cd0af15d5d6	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Richmond	Quebec
29ddad6c-a39c-40dd-aa53-0acda0c34245	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Rimouski	Quebec
84319bb1-5bff-4ea2-b8bb-63bd880bf944	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Rivière-du-Loup	Quebec
b8b551e8-e000-491e-9228-5520e397ec3c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Rivière-Rouge	Quebec
f4ccb578-5fab-41ae-8bf0-0ebd0b24191d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Roberval	Quebec
39150f65-7bd0-418f-886a-d2549e0056a6	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Rosemère	Quebec
d48b1523-07a7-4a26-850e-f59e92f35323	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Rouyn-Noranda	Quebec
9ae80095-a91b-4c45-b4ae-727daac5f178	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saguenay	Quebec
043e3986-b1d7-4fbc-a04c-aa97fbb05af5	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Augustin-de-Desmaures	Quebec
046019b0-a55b-46f2-b6ab-b4bfe82f9e82	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Basile	Quebec
bdb419c9-70f4-4b09-86f9-0ad56bf5b3b3	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Basile-le-Grand	Quebec
4fa43011-8c61-4075-9f4f-443456677c44	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Bruno-de-Montarville	Quebec
f702b19a-7852-421d-a522-48b4268e5ca5	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Césaire	Quebec
f3900813-2a4e-42f1-b42c-a7689b415b2e	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Colomban	Quebec
b8b2efe7-9fee-447c-8082-949c37f977ed	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Constant	Quebec
01565cfd-22e7-46c6-afc4-fd6262fc3156	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Adèle	Quebec
dd491ee7-01bd-4c83-8bfe-6a42bd865015	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Agathe-des-Monts	Quebec
3ca5ec11-8476-4be0-8ac1-7187437ae569	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Anne-de-Beaupré	Quebec
2b0cdbc2-1af7-4214-a6aa-b5b24fca1f9d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Anne-de-Bellevue	Quebec
f5d06fbc-3922-477b-b331-f445264ddce6	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Anne-des-Monts	Quebec
150f29bf-be9c-4c31-9e5c-2233a144a955	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Anne-des-Plaines	Quebec
156b5f52-6558-442f-afcf-9935ecb4283c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Catherine	Quebec
3ad8f671-c433-4e34-a2c2-c32081965de8	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Catherine-de-la-Jacques-Cartier	Quebec
d5b0956a-fb60-48a7-98a9-95d38a899eb4	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Julie	Quebec
f0c7af74-4fde-4ba6-a901-0e5e15d853f8	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Marguerite-du-Lac-Masson	Quebec
2c4c093a-709a-4bbe-80dd-15a90b883c6c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Marie	Quebec
f2867512-0bbe-4e9e-b3ae-ea2c8fddab88	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Marthe-sur-le-Lac	Quebec
7711f7de-4efc-4852-963f-ec1b890133e7	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sainte-Thérèse	Quebec
b013c5c6-ae3e-41cd-b42b-7a8afb268c2d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Eustache	Quebec
1ebf6104-ff49-47bc-b45b-871d498e8a9a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Félicien	Quebec
e40de152-1228-41a6-ab0b-40a26d767e1d	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Gabriel	Quebec
6113b2c6-757e-48a9-985e-3eb4d034be69	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Georges	Quebec
667b38a0-c5d6-4ff3-a797-f9cc551e6442	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Hyacinthe	Quebec
992da887-6c6b-4f7e-9a77-5d268c19d99f	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Jean-sur-Richelieu	Quebec
929ce1c3-1403-42ab-9474-4b7ccd8dcfe7	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Jérôme	Quebec
b72995aa-4c2b-449f-bd07-92c6174ee62a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Joseph-de-Beauce	Quebec
54ce6168-b675-4ce1-b84c-70105a1012c9	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Joseph-de-Sorel	Quebec
3f1a64d5-f8ca-4b12-8d60-65947e5baae0	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Lambert	Quebec
becebd05-e438-444a-93b3-ef881020ae22	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Lazare	Quebec
aec4545d-16dd-4623-86a2-b8c539052428	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Lin-Laurentides	Quebec
0c141e6d-ea7a-4983-b712-87da5b743032	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Marc-des-Carrières	Quebec
7fe79355-df83-4d91-96fc-e46def335fa8	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Ours	Quebec
e18109bb-a40e-4bc3-877c-b5f9da91a697	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Pamphile	Quebec
6c01b1ce-1341-4a50-be19-1c7c80ecc90c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Pascal	Quebec
6991655e-8168-4d51-9c6e-349189e1dec4	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Pie	Quebec
9d3ee127-597f-4658-990e-0e8f2cd218b7	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Raymond	Quebec
bf1bfbc9-9d6f-4aa0-8427-586f844b9271	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Rémi	Quebec
4ed6056a-a4b9-4d84-b96c-31fc0cab0286	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Sauveur	Quebec
db2908c8-7a27-49de-b063-e9da4031e366	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Saint-Tite	Quebec
67401707-0f6e-4d48-b7e7-637582ac0b12	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Salaberry-de-Valleyfield	Quebec
c06b1da5-5e13-4346-bba0-231378757ca7	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Schefferville	Quebec
59cbe932-d106-4ab9-b81a-85c8e06cdc6e	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Scotstown	Quebec
e0de68aa-5639-4736-9d7f-7304428c8a87	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Senneterre	Quebec
045c7e44-c22f-464b-8ace-7a1e3d14fd3f	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sept-Îles	Quebec
7c273609-8aef-4d60-aedc-cfbba79e5932	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Shawinigan	Quebec
02d9cae0-4e40-4398-a3f1-d4ca21805193	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sherbrooke	Quebec
9fb5cd22-b829-4c30-83d6-2dc7b77f9062	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sorel-Tracy	Quebec
ee522b2c-1fa7-4949-ad2b-f1146d245dd1	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Stanstead	Quebec
c409a458-cd81-4d76-a51e-3c65dfbc70ae	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Sutton	Quebec
6fd2b9c0-7b08-45df-843a-8fd42b6fd3f6	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Témiscaming	Quebec
df4403f7-3b77-411f-877a-a42df4cf6027	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Témiscouata-sur-le-Lac	Quebec
7c2f6d1d-76ea-497c-ac8c-d36b6e4a0a55	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Terrebonne	Quebec
2139a626-1090-4e79-8d30-1cfadb8f3f8b	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Thetford Mines	Quebec
98951a7e-988f-414f-a31c-e3d15f15721a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Thurso	Quebec
f5949a81-dd86-480a-ba6c-54ddea96eb2b	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Trois-Pistoles	Quebec
fbc7e004-8115-4798-8f67-312fb4054663	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Trois-Rivières	Quebec
418c4bf8-0ffe-4085-b8f7-e50a88e120bb	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Valcourt	Quebec
135bf3d8-b79a-4ad7-a764-fbb4c34020ec	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Val-d'Or	Quebec
a8a87a22-c49e-4222-8637-ea5a900a858a	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Varennes	Quebec
7f63021c-316a-490a-a2c1-2eeadfe1f05c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Vaudreuil-Dorion	Quebec
5096be87-792f-47e4-8f9a-9ddb34687aa4	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Victoriaville	Quebec
4d764d94-9aca-4304-ae7a-9e68d5f3f27c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Ville-Marie	Quebec
b969e2ac-0fa9-4d9a-a5fd-3da52b3cff1e	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Warwick	Quebec
bfe47f38-a269-4a1b-adab-3f8bbe73971c	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Waterloo	Quebec
71282264-2a92-457d-bf27-7369f8e92d77	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Waterville	Quebec
6eed02c0-fa00-45cc-a4eb-5960228e4425	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Westmount	Quebec
70a0b273-3d35-42c4-9421-774fd7eab4e8	de8482cc-4abc-4dd3-a377-ef5489f3cc42	Windsor	Quebec
f36597b5-167a-4974-a31d-99c50a2eb1d4	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Niagara Falls	Ontario
b43b9305-723a-4ef0-aa33-d461922c43e2	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Norfolk County	Ontario
1a3ee83c-2d68-4182-bd97-f5ff28f1d9d3	bbfaa09d-bc87-44ac-b035-caa87ec6a584	North Bay	Ontario
fe10a201-9766-40f0-9b07-b8ea997df9bb	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Orillia	Ontario
c05c3a05-9ee1-4a26-88e2-d9a2417d80f6	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Oshawa	Ontario
13a927fe-811b-415d-b37f-233b10d52c46	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Ottawa	Ontario
1002eefe-e2b5-4536-a25a-18837a1684f3	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Owen Sound	Ontario
22aec08a-93a7-4cdb-adad-eb1f5e924ae4	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Pembroke	Ontario
e870ffc2-7b53-404d-aa33-cf99f6c623d8	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Peterborough	Ontario
b3f398b0-82de-4186-96d4-72d8c0c02823	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Pickering	Ontario
a55d4d2a-a0aa-4d72-8663-63a4d2214443	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Port Colborne	Ontario
daef3172-a0f3-414c-9e75-5ae269416985	bbfaa09d-bc87-44ac-b035-caa87ec6a584	Prince Edward County	Ontario
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY country (id, name, iso) FROM stdin;
\.


--
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY state (id, name, iso) FROM stdin;
188ea6f2-3111-4121-926c-cae8bb522b43	Alberta	AB
352ab45d-8553-4262-a8e2-512d2db4ad95	Prince Edward Island	PE
de8482cc-4abc-4dd3-a377-ef5489f3cc42	Quebec	QC
bf3ade63-c9cf-40ae-96cd-c2208af9ac98	British Columbia	BC
e948de86-6106-450d-bda1-11b9c54b0e6c	Manitoba	MB
bf747443-b54c-4191-a8ce-49435c261397	Newfoundland and Labrador	NL
09bf5fed-67c6-43f1-a13c-d0ee7129e671	New Brunswick	NB
b54ea8ee-7ba5-4d51-91c1-cf574494cdf5	Nova Scotia	NS
bbfaa09d-bc87-44ac-b035-caa87ec6a584	Ontario	ON
bdbcb343-7017-4c45-bbd6-92641c0c8e7a	Saskatchewan	SK
1a3cf21f-9648-4de3-9966-857014de2305	Nunavut	NU
14e195ad-be6e-42e2-be2d-65a8d4d47fec	Northwest Territories	NT
4996fee8-f6c7-451a-a073-5c6cd4b10efc	Yukon	YT
\.


SET search_path = acl, pg_catalog;

--
-- Name: connector connector_pkey; Type: CONSTRAINT; Schema: acl; Owner: postgres
--

ALTER TABLE ONLY connector
    ADD CONSTRAINT connector_pkey PRIMARY KEY (id);


--
-- Name: group groups_pkey; Type: CONSTRAINT; Schema: acl; Owner: postgres
--

ALTER TABLE ONLY "group"
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: login login_pkey; Type: CONSTRAINT; Schema: acl; Owner: postgres
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_pkey PRIMARY KEY (id);


--
-- Name: role roles_pkey; Type: CONSTRAINT; Schema: acl; Owner: postgres
--

ALTER TABLE ONLY role
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


SET search_path = cms, pg_catalog;

--
-- Name: route modules_pkey; Type: CONSTRAINT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY route
    ADD CONSTRAINT modules_pkey PRIMARY KEY (id);


SET search_path = crm, pg_catalog;

--
-- Name: organization organization_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (id);


--
-- Name: user_type user_type_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (id);


--
-- Name: user users_pkey; Type: CONSTRAINT; Schema: crm; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


SET search_path = pms, pg_catalog;

--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: pms; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: question question_pkey; Type: CONSTRAINT; Schema: pms; Owner: postgres
--

ALTER TABLE ONLY question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);


--
-- Name: respondent respondent_pkey; Type: CONSTRAINT; Schema: pms; Owner: postgres
--

ALTER TABLE ONLY respondent
    ADD CONSTRAINT respondent_pkey PRIMARY KEY (id);


--
-- Name: response response_pkey; Type: CONSTRAINT; Schema: pms; Owner: postgres
--

ALTER TABLE ONLY response
    ADD CONSTRAINT response_pkey PRIMARY KEY (id);


--
-- Name: response_type response_type_pkey; Type: CONSTRAINT; Schema: pms; Owner: postgres
--

ALTER TABLE ONLY response_type
    ADD CONSTRAINT response_type_pkey PRIMARY KEY (id);


--
-- Name: subset subset_pkey; Type: CONSTRAINT; Schema: pms; Owner: postgres
--

ALTER TABLE ONLY subset
    ADD CONSTRAINT subset_pkey PRIMARY KEY (id);


SET search_path = public, pg_catalog;

--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Name: state state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY state
    ADD CONSTRAINT state_pkey PRIMARY KEY (id);


--
-- Name: postgraphile_watch_ddl; Type: EVENT TRIGGER; Schema: -; Owner: postgres
--

CREATE EVENT TRIGGER postgraphile_watch_ddl ON ddl_command_end
         WHEN TAG IN ('ALTER DOMAIN', 'ALTER FOREIGN TABLE', 'ALTER FUNCTION', 'ALTER SCHEMA', 'ALTER TABLE', 'ALTER TYPE', 'ALTER VIEW', 'COMMENT', 'CREATE DOMAIN', 'CREATE FOREIGN TABLE', 'CREATE FUNCTION', 'CREATE SCHEMA', 'CREATE TABLE', 'CREATE TABLE AS', 'CREATE VIEW', 'DROP DOMAIN', 'DROP FOREIGN TABLE', 'DROP FUNCTION', 'DROP SCHEMA', 'DROP TABLE', 'DROP VIEW', 'GRANT', 'REVOKE', 'SELECT INTO')
   EXECUTE PROCEDURE postgraphile_watch.notify_watchers_ddl();


ALTER EVENT TRIGGER postgraphile_watch_ddl OWNER TO postgres;

--
-- Name: postgraphile_watch_drop; Type: EVENT TRIGGER; Schema: -; Owner: postgres
--

CREATE EVENT TRIGGER postgraphile_watch_drop ON sql_drop
   EXECUTE PROCEDURE postgraphile_watch.notify_watchers_drop();


ALTER EVENT TRIGGER postgraphile_watch_drop OWNER TO postgres;

--
-- Name: SCHEMA acl; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA acl TO PUBLIC;
GRANT CREATE ON SCHEMA acl TO "postgres";


--
-- Name: SCHEMA cms; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA cms TO PUBLIC;
GRANT CREATE ON SCHEMA cms TO "postgres";


--
-- Name: SCHEMA crm; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA crm TO PUBLIC;
GRANT CREATE ON SCHEMA crm TO "postgres";


--
-- Name: SCHEMA pms; Type: ACL; Schema: -; Owner: postgres
--

GRANT CREATE ON SCHEMA pms TO "postgres";


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT CREATE ON SCHEMA public TO "postgres";


SET search_path = crm, pg_catalog;

--
-- Name: TABLE user_type; Type: ACL; Schema: crm; Owner: postgres
--

GRANT SELECT ON TABLE user_type TO PUBLIC;


SET search_path = pms, pg_catalog;

--
-- Name: TABLE project; Type: ACL; Schema: pms; Owner: postgres
--

GRANT SELECT ON TABLE project TO PUBLIC;


--
-- Name: TABLE question; Type: ACL; Schema: pms; Owner: postgres
--

GRANT SELECT ON TABLE question TO PUBLIC;


--
-- Name: TABLE respondent; Type: ACL; Schema: pms; Owner: postgres
--

GRANT SELECT ON TABLE respondent TO PUBLIC;


--
-- Name: TABLE response; Type: ACL; Schema: pms; Owner: postgres
--

GRANT SELECT ON TABLE response TO PUBLIC;


--
-- Name: TABLE response_type; Type: ACL; Schema: pms; Owner: postgres
--

GRANT SELECT ON TABLE response_type TO PUBLIC;


--
-- Name: TABLE subset; Type: ACL; Schema: pms; Owner: postgres
--

GRANT SELECT ON TABLE subset TO PUBLIC;


SET search_path = acl, pg_catalog;

--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: acl; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA acl REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA acl GRANT SELECT ON TABLES  TO PUBLIC;


SET search_path = cms, pg_catalog;

--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: cms; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA cms REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA cms GRANT SELECT ON TABLES  TO PUBLIC;


SET search_path = crm, pg_catalog;

--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: crm; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA crm REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA crm GRANT SELECT ON TABLES  TO PUBLIC;


SET search_path = pms, pg_catalog;

--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: pms; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA pms REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA pms GRANT SELECT ON TABLES  TO PUBLIC;


--
-- postgresQL database dump complete
--

