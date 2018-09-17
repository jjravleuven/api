 SELECT a.id,
    a.fname,
    a.lname,
    COALESCE((((a.fname)::text || ' '::text) || (a.lname)::text)) AS fullname,
    b.email,
    a.org_id,
    a.type_id,
    a."group" AS group_id,
    a.role AS role_id,
    d.name AS type,
    e.name AS "group",
    c.name AS role,
    f.name AS organisation,
    a.created
   FROM (((((crm."user" a
     LEFT JOIN crm.user_type d ON (((d.id)::text = a.type_id)))
     LEFT JOIN acl.login b ON ((b.u_id = (a.id)::text)))
     LEFT JOIN acl."group" c ON (((c.id)::text = a."group")))
     LEFT JOIN acl.role e ON (((e.id)::text = a.role)))
     LEFT JOIN crm.organization f ON (((f.id)::text = a.org_id)))
  ORDER BY a.lname;

  /**
CREATE OR REPLACE FUNCTION matview.getResources(
	_schema text,
	_alias text,
	_module text,
	_column text,
	_filter character varying
	_limit integer, 
	_offset integer, 
) RETURNS TABLE(result json)
LANGUAGE plpgsql
AS $function$ 

DECLARE 
_schema ALIAS FOR $1;
_alias ALIAS FOR $2;
_module ALIAS FOR $3;
_column ALIAS FOR $4;
_filter ALIAS FOR $5;
_limit ALIAS FOR $6;
_offset ALIAS for $7;
sql character varying;

	BEGIN

		-- REFRESH REQUESTED MATERIALIZED VIEW 
		sql := 'REFRESH MATERIALIZED VIEW CONCURRENTLY matview.' || _alias || ' WITH DATA;';
		
		-- 
		
		-- IS FILTER
    IF _filter IS NOT NULL THEN
			sql := sql || ' ' 
				|| _filter
				|| ' ORDER BY a.id Desc OFFSET '
				|| _offset
				|| ' FETCH NEXT '
				|| _limit
				|| ' ROWS ONLY) t;';
				
		-- NULL FILTER
    ELSE
			sql := sql || ' ORDER BY a.id Desc OFFSET '
				|| _offset
				|| ' FETCH NEXT '
				|| _limit
				|| ' ROWS ONLY) t;';
    END IF;

		RETURN QUERY EXECUTE sql;
	END;

$function$;

SELECT * FROM rtn_products_filter('10', '0', '362', '1', ' AND a.products ILIKE ''%hef%'' ');
  */