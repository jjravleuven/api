CREATE OR REPLACE FUNCTION "crm"."user"("_id" text)
  RETURNS "pg_catalog"."json" AS $BODY$

	SELECT row_to_json(a)
	FROM (
		SELECT 
			(
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
						, (
							SELECT row_to_json(p) 
							FROM (
								SELECT 
									(SELECT * FROM acl.role(a.role::text))
									, (SELECT * FROM acl.group(a.group::text))
							) p
						) AS "permissions"
						, (
							SELECT row_to_json(d) 
							FROM (
								SELECT 
									bb.id
									, bb.name
								FROM crm.organization bb 
								WHERE bb.id::text = a.org_id::text
							) d
						) AS "organization"
						, (
							SELECT row_to_json(c) 
							FROM (
								SELECT 
									aa.id
									, aa.name
								FROM crm."user_type" aa 
								WHERE aa.id::text = a.type_id::text
							) c 
						) AS "type"
						, (
								SELECT 
									(
										SELECT array_to_json(array_agg(row_to_json(m))) 
										FROM (
											SELECT 
												id.id
												, cc.name
												, cc.ordinal
											FROM UNNEST(ARRAY[x.route]::text[]) id(id) 
											LEFT OUTER JOIN cms.route cc ON cc.id::text = id.id::text 
											ORDER BY cc.ordinal
										) m
									)
								FROM acl.connector x 
								WHERE x.u_id::text = a.id::text
						) AS "modules"
				) b
			)
		FROM crm."user" a 
		LEFT OUTER JOIN acl.login b ON b.u_id::text = a.id::text
		WHERE a.id::text = _id::text
	) a;

$BODY$
  LANGUAGE sql VOLATILE
  COST 100