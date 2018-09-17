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
  COST 100