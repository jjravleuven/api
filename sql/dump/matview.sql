/*
 Navicat Premium Data Transfer

 Source Server         : Ubuntu [development]
 Source Server Type    : PostgreSQL
 Source Server Version : 100001
 Source Host           : booktportal.cloudapp.net:5432
 Source Catalog        : booktportal
 Source Schema         : matview

 Target Server Type    : PostgreSQL
 Target Server Version : 100001
 File Encoding         : 65001

 Date: 27/04/2018 12:24:54
*/


-- ----------------------------
-- Function structure for schema
-- ----------------------------
DROP FUNCTION IF EXISTS "matview"."schema"("_module" text);
CREATE OR REPLACE FUNCTION "matview"."schema"("_module" text)
  RETURNS "pg_catalog"."json" AS $BODY$

SELECT array_to_json(array_agg(row_to_json(t))) AS "Schema"
FROM (
	SELECT 
    a.attname AS "name",
    pg_catalog.format_type(a.atttypid, a.atttypmod) AS "type",
    a.attnotnull AS "required"
	FROM pg_attribute a
    LEFT OUTER JOIN pg_class t on a.attrelid = t.oid
    LEFT OUTER JOIN pg_namespace s on t.relnamespace = s.oid
	WHERE a.attnum > 0 
    AND NOT a.attisdropped
    AND t.relname = _module
    AND s.nspname = 'matview'
	ORDER BY a.attnum
) t
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;
