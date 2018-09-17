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
  COST 100