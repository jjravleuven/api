/*
 Navicat Premium Data Transfer

 Source Server         : Ubuntu [development]
 Source Server Type    : PostgreSQL
 Source Server Version : 100001
 Source Host           : localhost:5432
 Source Catalog        : booktportal
 Source Schema         : cms

 Target Server Type    : PostgreSQL
 Target Server Version : 100001
 File Encoding         : 65001

 Date: 27/04/2018 12:24:10
*/


-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS "cms"."route";
CREATE TABLE "cms"."route" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "ordinal" int4 NOT NULL DEFAULT 0
)
;
ALTER TABLE "cms"."route" OWNER TO "postgres";

-- ----------------------------
-- Records of route
-- ----------------------------
BEGIN;
INSERT INTO "cms"."route" VALUES ('c06f7428-1354-4a1b-bb02-edefb1efa362', 'Dashboard', 0);
INSERT INTO "cms"."route" VALUES ('5006a75a-fe11-40e3-93ce-e446d39a865e', 'GuestList', 1);
INSERT INTO "cms"."route" VALUES ('0eca981c-17c1-4380-9f69-ca75bc334a67', 'Employees', 2);
INSERT INTO "cms"."route" VALUES ('d934a01f-8a03-4ded-b277-d874fa3f28ae', 'Promoters', 3);
COMMIT;

INSERT INTO "cms"."route"(name, ordinal) VALUES ('Users', 4);

-- ----------------------------
-- Primary Key structure for table route
-- ----------------------------
ALTER TABLE "cms"."route" ADD CONSTRAINT "route_pkey" PRIMARY KEY ("id");
