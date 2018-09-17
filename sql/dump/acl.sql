/*
 Navicat Premium Data Transfer

 Source Server         : Ubuntu [development]
 Source Server Type    : PostgreSQL
 Source Server Version : 100001
 Source Host           : localhost:5432
 Source Catalog        : booktapi
 Source Schema         : acl

 Target Server Type    : PostgreSQL
 Target Server Version : 100001
 File Encoding         : 65001

 Date: 27/04/2018 12:25:13
*/


-- ----------------------------
-- Table structure for connector
-- ----------------------------
DROP TABLE IF EXISTS "acl"."connector";
CREATE TABLE "acl"."connector" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "l_id" text COLLATE "pg_catalog"."default",
  "u_id" text COLLATE "pg_catalog"."default",
  "g_id" text COLLATE "pg_catalog"."default",
  "r_id" text COLLATE "pg_catalog"."default",
  "route" text[] COLLATE "pg_catalog"."default" DEFAULT '{}'::uuid[],
  "o_id" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "acl"."connector" OWNER TO "postgres";

-- ----------------------------
-- Records of connector
-- ----------------------------
BEGIN;
INSERT INTO "acl"."connector" VALUES ('91c58562-1e92-4730-a184-9b9b7aa5a2a3', '4a0994f3-dedd-41b9-bff8-f71b27ea73d1', '93141eaf-7c23-473d-9398-66b88840140b', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13');
INSERT INTO "acl"."connector" VALUES ('52c67838-592a-4b8e-9473-3e5a867b9253', '7f5c7237-e44d-4251-8bd2-19d437cfff42', '84636f7b-ffe7-4943-9ef0-1ebd3811280f', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13');
INSERT INTO "acl"."connector" VALUES ('1aa80d1a-d5db-45a8-b6bf-19353a5f90dd', '0813e282-4909-4b7b-9e89-0aab89812fb4', 'e2609f01-b3a8-4e2c-89c2-0833ea4e847d', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13');
INSERT INTO "acl"."connector" VALUES ('14569c14-664b-4cbd-a95e-74fc687d50bd', '9f77aab1-b3b7-409f-a6e0-35187f5c91df', '224da9a7-def4-49f3-84fd-33b08bc30213', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13');
INSERT INTO "acl"."connector" VALUES ('c5ff5f67-73e6-40eb-be28-0fae13f47f88', 'e57d0752-c0f5-4bc5-97f6-6434ea35c729', '3ca0eb5d-74cb-40d9-ac86-1d2946eeeb99', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13');
COMMIT;

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS "acl"."group";
CREATE TABLE "acl"."group" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ordinal" int4 NOT NULL DEFAULT 0
)
;
ALTER TABLE "acl"."group" OWNER TO "postgres";

-- ----------------------------
-- Records of group
-- ----------------------------
BEGIN;
INSERT INTO "acl"."group" VALUES ('f512c662-b8dc-45c0-a2d0-310181455ebf', 'System', 0);
INSERT INTO "acl"."group" VALUES ('69e2b296-7c59-4712-968e-4141dfdae5ee', 'Development', 1);
INSERT INTO "acl"."group" VALUES ('f5d76597-db54-4a64-b98c-90459446c9e0', 'Managers', 2);
INSERT INTO "acl"."group" VALUES ('e5707eaf-e4fd-4112-af0f-2b65e931b0b3', 'Users', 3);
INSERT INTO "acl"."group" VALUES ('2c4d51ce-a208-4cd6-98ac-0a29baa032f2', 'Products', 4);
INSERT INTO "acl"."group" VALUES ('0b61ec28-f71e-4386-8668-561724b0020d', 'Guests', 5);
COMMIT;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS "acl"."login";
CREATE TABLE "acl"."login" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "u_id" text COLLATE "pg_catalog"."default",
  "email" varchar(150) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "passwd" varchar(150) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "hashpwd" text COLLATE "pg_catalog"."default",
  "created" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "acl"."login" OWNER TO "postgres";
COMMENT ON COLUMN "acl"."login"."id" IS 'Primary Key for Login Table';
COMMENT ON COLUMN "acl"."login"."u_id" IS 'Foreign key for arm.users table';
COMMENT ON COLUMN "acl"."login"."email" IS 'User login email address';
COMMENT ON COLUMN "acl"."login"."passwd" IS 'User login Plain Text Password';
COMMENT ON COLUMN "acl"."login"."hashpwd" IS 'User login serialised hash password';
COMMENT ON COLUMN "acl"."login"."created" IS 'User ID creation Date';

-- ----------------------------
-- Records of login
-- ----------------------------
BEGIN;
INSERT INTO "acl"."login" VALUES ('0813e282-4909-4b7b-9e89-0aab89812fb4', 'e2609f01-b3a8-4e2c-89c2-0833ea4e847d', 'james@bookt.in', 'james#1', NULL, '2018-03-13 16:53:42.829698');
INSERT INTO "acl"."login" VALUES ('4a0994f3-dedd-41b9-bff8-f71b27ea73d1', '93141eaf-7c23-473d-9398-66b88840140b', 'corina@bookt.in', 'corina#1', NULL, '2018-03-13 16:53:42.829698');
INSERT INTO "acl"."login" VALUES ('7f5c7237-e44d-4251-8bd2-19d437cfff42', '84636f7b-ffe7-4943-9ef0-1ebd3811280f', 'wayne@bookt.in', 'wayne#1', NULL, '2018-03-13 16:53:42.829698');
INSERT INTO "acl"."login" VALUES ('9f77aab1-b3b7-409f-a6e0-35187f5c91df', '224da9a7-def4-49f3-84fd-33b08bc30213', 'dima@bookt.in', 'dima#1', NULL, '2018-03-13 16:53:42.829698');
INSERT INTO "acl"."login" VALUES ('e57d0752-c0f5-4bc5-97f6-6434ea35c729', '3ca0eb5d-74cb-40d9-ac86-1d2946eeeb99', 'edward@bookt.in', 'edward#1', NULL, '2018-03-13 16:53:42.829698');
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS "acl"."role";
CREATE TABLE "acl"."role" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ordinal" int4 NOT NULL DEFAULT 0
)
;
ALTER TABLE "acl"."role" OWNER TO "postgres";

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO "acl"."role" VALUES ('239237ca-0e7b-40ee-87af-0bb547a7b700', 'System Administrator', 0);
INSERT INTO "acl"."role" VALUES ('a2bab7ed-b1df-4ec3-84aa-38cefa8142cf', 'Administrator', 1);
INSERT INTO "acl"."role" VALUES ('3a763157-4688-46d2-9f21-668274d77b05', 'Comptroller', 2);
INSERT INTO "acl"."role" VALUES ('03c2ec52-301a-4888-aaad-1522457c7890', 'Manager', 3);
INSERT INTO "acl"."role" VALUES ('94d47733-3c4b-4cad-8367-bbf8a2cf9f7f', 'Author', 4);
INSERT INTO "acl"."role" VALUES ('28cfe039-2001-4bfc-861c-846fb0d76108', 'User', 5);
INSERT INTO "acl"."role" VALUES ('09bf7a26-35e9-47c6-b438-3338dc36c550', 'Guest', 6);
COMMIT;

-- ----------------------------
-- Function structure for group
-- ----------------------------
DROP FUNCTION IF EXISTS "acl"."group"("_id" text);
CREATE OR REPLACE FUNCTION "acl"."group"("_id" text)
  RETURNS "pg_catalog"."json" AS $BODY$
SELECT row_to_json(t)
FROM (
	SELECT 
		a.id
		, a.name
	FROM acl."group" a 
	WHERE a.id::text = _id::text
) t
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for jwtSign
-- ----------------------------
/**
DROP FUNCTION IF EXISTS "acl"."jwtSign"("_payload" json=''::json, "_secret" text=NULL::text);
CREATE OR REPLACE FUNCTION "acl"."jwtSign"("_payload" json=''::json, "_secret" text=NULL::text)
  RETURNS TABLE("results" text) AS $BODY$


 * select sign(_payload::json, _secret::text, 'HS256');


DECLARE 
	_payload ALIAS FOR $1;
	_secret ALIAS FOR $2;
	sql character varying;
	
BEGIN 


	sql := 'SELECT sign('
		|| quote_literal($1::json)
		|| ', '
		|| quote_literal($2::text)
		|| ', ''HS512'');';
		
	RETURN QUERY EXECUTE sql;
	
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for jwtVerify
-- ----------------------------
DROP FUNCTION IF EXISTS "acl"."jwtVerify"("_token" text=NULL::text, "_secret" text=NULL::text);
CREATE OR REPLACE FUNCTION "acl"."jwtVerify"("_token" text=NULL::text, "_secret" text=NULL::text)
  RETURNS TABLE("result" json) AS $BODY$


select * FROM verify(_token::text, _secret::text, 'HS256');


DECLARE 
	_token ALIAS FOR $1;
	_secret ALIAS FOR $2;
	sql character varying;
	
BEGIN 


RETRIEVE JWT TOKEN

	sql := 'SELECT row_to_json(v) "token" FROM ('
		|| 'SELECT * from verify('
		|| quote_literal($1::text)
		|| ', '
		|| quote_literal($2::text)
		|| ', ''HS512'')) v;';
		
	RETURN QUERY EXECUTE sql;
	
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;
*/
-- ----------------------------
-- Function structure for login
-- ----------------------------
DROP FUNCTION IF EXISTS "acl"."login"("_email" varchar, "_passwd" varchar);
CREATE OR REPLACE FUNCTION "acl"."login"("_email" varchar, "_passwd" varchar)
  RETURNS "pg_catalog"."json" AS $BODY$
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
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for module
-- ----------------------------
DROP FUNCTION IF EXISTS "acl"."module"("_id" text);
CREATE OR REPLACE FUNCTION "acl"."module"("_id" text)
  RETURNS "pg_catalog"."json" AS $BODY$
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
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for role
-- ----------------------------
DROP FUNCTION IF EXISTS "acl"."role"("_id" text);
CREATE OR REPLACE FUNCTION "acl"."role"("_id" text)
  RETURNS "pg_catalog"."json" AS $BODY$
SELECT row_to_json(t)
FROM (
	SELECT 
		a.id
		, a.name
	FROM acl."role" a 
	WHERE a.id::text = _id::text
) t
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Primary Key structure for table connector
-- ----------------------------
ALTER TABLE "acl"."connector" ADD CONSTRAINT "connector_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table group
-- ----------------------------
ALTER TABLE "acl"."group" ADD CONSTRAINT "groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table login
-- ----------------------------
ALTER TABLE "acl"."login" ADD CONSTRAINT "login_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "acl"."role" ADD CONSTRAINT "roles_pkey" PRIMARY KEY ("id");
