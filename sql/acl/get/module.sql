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
  COST 100