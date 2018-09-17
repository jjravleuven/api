CREATE OR REPLACE FUNCTION "acl"."login"("_email" varchar, "_passwd" varchar)
  RETURNS "pg_catalog"."json" AS $BODY$
SELECT row_to_json(t2)
FROM (
	SELECT *
	FROM acl.login AS a 
	LEFT OUTER JOIN crm.user AS b ON b.id::text = a.u_id 
	WHERE (
		a.email = _email AND a.passwd = _passwd
	)
) t2
$BODY$
  LANGUAGE sql VOLATILE
  COST 100