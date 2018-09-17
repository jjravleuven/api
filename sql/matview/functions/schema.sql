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

SELECT * FROM "matview"."schema"( 'users'::text );