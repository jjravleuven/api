/*
 Navicat Premium Data Transfer

 Source Server         : (local)
 Source Server Type    : PostgreSQL
 Source Server Version : 100002
 Source Host           : localhost:5432
 Source Catalog        : booktapi
 Source Schema         : acl

 Target Server Type    : PostgreSQL
 Target Server Version : 100002
 File Encoding         : 65001

 Date: 14/08/2018 20:09:54
*/


-- ----------------------------
-- Table structure for connector
-- ----------------------------
DROP TABLE IF EXISTS "acl"."connector";
CREATE TABLE "acl"."connector" (
  "id" int4 NOT NULL DEFAULT nextval('"acl".connector_id_seq'::regclass),
  "uuid" uuid NOT NULL DEFAULT uuid_generate_v4(),
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
-- Primary Key structure for table connector
-- ----------------------------
ALTER TABLE "acl"."connector" ADD CONSTRAINT "connector_pkey" PRIMARY KEY ("id", "uuid");
