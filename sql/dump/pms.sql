/*
 Navicat Premium Data Transfer

 Source Server         : Ubuntu [development]
 Source Server Type    : PostgreSQL
 Source Server Version : 100001
 Source Host           : booktportal.cloudapp.net:5432
 Source Catalog        : booktportal
 Source Schema         : pms

 Target Server Type    : PostgreSQL
 Target Server Version : 100001
 File Encoding         : 65001

 Date: 27/04/2018 12:25:39
*/


-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS "pms"."project";
CREATE TABLE "pms"."project" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "org_id" text COLLATE "pg_catalog"."default",
  "owner_id" text COLLATE "pg_catalog"."default",
  "author" text[] COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "details" text COLLATE "pg_catalog"."default",
  "created" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "modified" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "pms"."project" OWNER TO "postgres";

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS "pms"."question";
CREATE TABLE "pms"."question" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "project_id" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "type_id" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "question" jsonb NOT NULL DEFAULT '{}'::jsonb,
  "created" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "modified" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "pms"."question" OWNER TO "postgres";

-- ----------------------------
-- Table structure for question_type
-- ----------------------------
DROP TABLE IF EXISTS "pms"."question_type";
CREATE TABLE "pms"."question_type" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
ALTER TABLE "pms"."question_type" OWNER TO "postgres";

-- ----------------------------
-- Table structure for respondent
-- ----------------------------
DROP TABLE IF EXISTS "pms"."respondent";
CREATE TABLE "pms"."respondent" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "u_id" text COLLATE "pg_catalog"."default",
  "project_id" text COLLATE "pg_catalog"."default",
  "ip_address" text COLLATE "pg_catalog"."default",
  "host_name" text COLLATE "pg_catalog"."default",
  "completed" bool NOT NULL DEFAULT false,
  "terminated" bool NOT NULL DEFAULT false,
  "created" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "pms"."respondent" OWNER TO "postgres";

-- ----------------------------
-- Table structure for response
-- ----------------------------
DROP TABLE IF EXISTS "pms"."response";
CREATE TABLE "pms"."response" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "respondent_id" text COLLATE "pg_catalog"."default",
  "question_id" text COLLATE "pg_catalog"."default",
  "subset_id" text COLLATE "pg_catalog"."default",
  "type_id" text COLLATE "pg_catalog"."default",
  "result" jsonb NOT NULL DEFAULT '{}'::jsonb,
  "created" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "pms"."response" OWNER TO "postgres";

-- ----------------------------
-- Table structure for response_type
-- ----------------------------
DROP TABLE IF EXISTS "pms"."response_type";
CREATE TABLE "pms"."response_type" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
ALTER TABLE "pms"."response_type" OWNER TO "postgres";

-- ----------------------------
-- Table structure for subset
-- ----------------------------
DROP TABLE IF EXISTS "pms"."subset";
CREATE TABLE "pms"."subset" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "question_id" text COLLATE "pg_catalog"."default",
  "question" jsonb NOT NULL DEFAULT '{}'::jsonb,
  "created" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "modified" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "pms"."subset" OWNER TO "postgres";

-- ----------------------------
-- Primary Key structure for table project
-- ----------------------------
ALTER TABLE "pms"."project" ADD CONSTRAINT "project_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table question
-- ----------------------------
ALTER TABLE "pms"."question" ADD CONSTRAINT "question_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table question_type
-- ----------------------------
ALTER TABLE "pms"."question_type" ADD CONSTRAINT "question_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table respondent
-- ----------------------------
ALTER TABLE "pms"."respondent" ADD CONSTRAINT "respondent_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table response
-- ----------------------------
ALTER TABLE "pms"."response" ADD CONSTRAINT "response_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table response_type
-- ----------------------------
ALTER TABLE "pms"."response_type" ADD CONSTRAINT "response_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table subset
-- ----------------------------
ALTER TABLE "pms"."subset" ADD CONSTRAINT "subset_pkey" PRIMARY KEY ("id");
