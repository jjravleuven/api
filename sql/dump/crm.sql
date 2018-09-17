/**
	Navicat Premium Data Transfer

	Source Server         : Ubuntu [development]
	Source Server Type    : PostgreSQL
	Source Server Version : 100001
	Source Host           : booktportal.cloudapp.net:5432
	Source Catalog        : booktportal
	Source Schema         : crm

	Target Server Type    : PostgreSQL
	Target Server Version : 100001
	File Encoding         : 65001

	Date: 26/04/2018 17:48:05
 */


-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS "crm"."organization";
CREATE TABLE "crm"."organization" (
	"id" uuid NOT NULL DEFAULT uuid_generate_v4(),
	"name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
	"group" text COLLATE "pg_catalog"."default",
	"role" text COLLATE "pg_catalog"."default",
	"created" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"street" varchar(150) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
	"suite" varchar(150) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
	"city" text COLLATE "pg_catalog"."default",
	"state" text COLLATE "pg_catalog"."default",
	"zipcode" text COLLATE "pg_catalog"."default",
	"country" text COLLATE "pg_catalog"."default",
	"geoip" text[] COLLATE "pg_catalog"."default" NOT NULL DEFAULT '{}'::text[],
	"lang" text[] COLLATE "pg_catalog"."default" NOT NULL DEFAULT '{en}'::text[]
)
;
ALTER TABLE "crm"."organization" OWNER TO "postgres";

-- ----------------------------
-- Records of organization
-- ----------------------------
BEGIN;
INSERT INTO "crm"."organization" VALUES ('b62ae5ef-c124-4a44-b098-4bc67ef8de13', 'Bookt In', NULL, NULL, '2018-03-13 16:58:00.711168', NULL, NULL, NULL, NULL, NULL, NULL, '{}', '{en}');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "crm"."user";
CREATE TABLE "crm"."user" (
	"id" uuid NOT NULL DEFAULT uuid_generate_v4(),
	"fname" varchar(150) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
	"lname" varchar(150) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
	"created" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"org_id" text COLLATE "pg_catalog"."default",
	"type_id" text COLLATE "pg_catalog"."default",
	"group" text COLLATE "pg_catalog"."default",
	"role" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "crm"."user" OWNER TO "postgres";

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO "crm"."user" VALUES ('224da9a7-def4-49f3-84fd-33b08bc30213', 'Corina', 'Wong', '2018-03-13 17:00:58.694875', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', '1b6e33ed-f31e-49ea-88dd-693878098f7b', '69e2b296-7c59-4712-968e-4141dfdae5ee', 'a2bab7ed-b1df-4ec3-84aa-38cefa8142cf');
INSERT INTO "crm"."user" VALUES ('3ca0eb5d-74cb-40d9-ac86-1d2946eeeb99', 'Donald', 'Duck', '2018-03-13 17:14:50.77116', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', '1b6e33ed-f31e-49ea-88dd-693878098f7b', '69e2b296-7c59-4712-968e-4141dfdae5ee', 'a2bab7ed-b1df-4ec3-84aa-38cefa8142cf');
INSERT INTO "crm"."user" VALUES ('84636f7b-ffe7-4943-9ef0-1ebd3811280f', 'Edward', 'Marinescu', '2018-03-13 17:00:58.694875', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', '1b6e33ed-f31e-49ea-88dd-693878098f7b', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700');
INSERT INTO "crm"."user" VALUES ('93141eaf-7c23-473d-9398-66b88840140b', 'Dmitri', 'Bombine', '2018-03-13 17:00:58.694875', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', '1b6e33ed-f31e-49ea-88dd-693878098f7b', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700');
INSERT INTO "crm"."user" VALUES ('e2609f01-b3a8-4e2c-89c2-0833ea4e847d', 'James', 'Van Leuven', '2018-03-13 17:00:58.694875', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', '1b6e33ed-f31e-49ea-88dd-693878098f7b', '69e2b296-7c59-4712-968e-4141dfdae5ee', '239237ca-0e7b-40ee-87af-0bb547a7b700');
COMMIT;

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS "crm"."user_type";
CREATE TABLE "crm"."user_type" (
	"id" uuid NOT NULL DEFAULT uuid_generate_v4(),
	"name" varchar(150) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
ALTER TABLE "crm"."user_type" OWNER TO "postgres";

-- ----------------------------
-- Records of user_type
-- ----------------------------
BEGIN;
INSERT INTO "crm"."user_type" VALUES ('1301e98f-b7d4-4673-be3e-d2acc6abd0cc', 'vip');
INSERT INTO "crm"."user_type" VALUES ('1b6e33ed-f31e-49ea-88dd-693878098f7b', 'system');
INSERT INTO "crm"."user_type" VALUES ('c64bbfd6-414d-4b15-a3eb-a2ea30cb3d7c', 'guest');
INSERT INTO "crm"."user_type" VALUES ('e43eb4f1-cdd0-46b6-b577-700d028a9c52', 'client');
COMMIT;

-- ----------------------------
-- Function structure for user
-- ----------------------------
DROP FUNCTION IF EXISTS "crm"."user"("_id" text);
CREATE OR REPLACE FUNCTION "crm"."user"("_id" text)
RETURNS "pg_catalog"."json" AS $BODY$

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

$BODY$
LANGUAGE sql VOLATILE
COST 100;

-- ----------------------------
-- Function structure for users
-- ----------------------------
DROP FUNCTION IF EXISTS "crm"."users"("_org_id" text);
CREATE OR REPLACE FUNCTION "crm"."users"("_org_id" text)
RETURNS "pg_catalog"."json" AS $BODY$

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

$BODY$
LANGUAGE sql VOLATILE
COST 100;

-- ----------------------------
-- Primary Key structure for table organization
-- ----------------------------
ALTER TABLE "crm"."organization" ADD CONSTRAINT "organization_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "crm"."user" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user_type
-- ----------------------------
ALTER TABLE "crm"."user_type" ADD CONSTRAINT "user_type_pkey" PRIMARY KEY ("id");
