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

 Date: 14/08/2018 20:27:29
*/


-- ----------------------------
-- Table structure for connector
-- ----------------------------
DROP TABLE IF EXISTS "acl"."connector";
CREATE TABLE "acl"."connector" (
  "id" int4 NOT NULL DEFAULT nextval('"acl".connector_id_seq'::regclass),
  "uuid" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "l_id" text COLLATE "pg_catalog"."default",
  "u_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "g_id" text COLLATE "pg_catalog"."default",
  "r_id" text COLLATE "pg_catalog"."default",
  "o_id" text COLLATE "pg_catalog"."default",
  "route" text[] COLLATE "pg_catalog"."default" DEFAULT '{}'::uuid[]
)
;
ALTER TABLE "acl"."connector" OWNER TO "postgres";

-- ----------------------------
-- Records of connector
-- ----------------------------
BEGIN;
INSERT INTO "acl"."connector" VALUES (1, '4a0994f3-dedd-41b9-bff8-f71b27ea73d1', '93141eaf-7c23-473d-9398-66b88840140b', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', 'b85d1869-29ab-442f-a680-e63f0cd51be9', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}');
INSERT INTO "acl"."connector" VALUES (2, '7f5c7237-e44d-4251-8bd2-19d437cfff42', '84636f7b-ffe7-4943-9ef0-1ebd3811280f', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', '8ff7b605-686b-42be-88d3-b5f3dbb2fb74', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}');
INSERT INTO "acl"."connector" VALUES (3, '0813e282-4909-4b7b-9e89-0aab89812fb4', 'e2609f01-b3a8-4e2c-89c2-0833ea4e847d', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', 'da2d93f2-a7fb-4ff8-8eda-6c78dad6b4b6', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}');
INSERT INTO "acl"."connector" VALUES (4, '9f77aab1-b3b7-409f-a6e0-35187f5c91df', '224da9a7-def4-49f3-84fd-33b08bc30213', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', 'd6be7e79-b303-4911-adfe-ee4afde8f75f', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}');
INSERT INTO "acl"."connector" VALUES (5, 'e57d0752-c0f5-4bc5-97f6-6434ea35c729', '3ca0eb5d-74cb-40d9-ac86-1d2946eeeb99', 'f512c662-b8dc-45c0-a2d0-310181455ebf', '239237ca-0e7b-40ee-87af-0bb547a7b700', 'b62ae5ef-c124-4a44-b098-4bc67ef8de13', '04e36057-a21e-4897-bf07-cbbbb5ef10c8', '{c06f7428-1354-4a1b-bb02-edefb1efa362,5006a75a-fe11-40e3-93ce-e446d39a865e,0eca981c-17c1-4380-9f69-ca75bc334a67,d934a01f-8a03-4ded-b277-d874fa3f28ae}');
COMMIT;

-- ----------------------------
-- Primary Key structure for table connector
-- ----------------------------
ALTER TABLE "acl"."connector" ADD CONSTRAINT "connector_pkey" PRIMARY KEY ("id");
