/**
	legend.schema, // schema to search
	legend.alias // module alias
	legend.table, // table to search
	legend.param, // column
	payload.param.organization, // org_id
	legend.order, // return object order
	paging.limit, // number of records
	paging.offset, // starting at record position
	null // custom filter

    SELECT array_to_json(array_agg(row_to_json(a))) 
    FROM (
        SELECT 
            (
                SELECT  row_to_json(b)
                FROM (
                    SELECT count(*) FROM matview.users WHERE org_id = 'b62ae5ef-c124-4a44-b098-4bc67ef8de13'
                ) b
            ) AS "total"
            , (
                SELECT array_to_json(array_agg(row_to_json(c))) 
                FROM (
                    SELECT * FROM matview.users WHERE org_id = 'b62ae5ef-c124-4a44-b098-4bc67ef8de13'
                ) c
            ) AS "elements"
    ) a;

 */

CREATE OR REPLACE FUNCTION matview.getResources(
	_schema text,
	_alias text,
	_module text,
	_param text,
	_value text,
	_order character varying,
	_limit integer, 
	_offset integer, 
	_filter character varying
) RETURNS TABLE(result json)
LANGUAGE plpgsql
AS $function$ 

DECLARE 
_schema ALIAS FOR $1;
_alias ALIAS FOR $2;
_module ALIAS FOR $3;
_param ALIAS FOR $4;
_value ALIAS FOR $5;
_order ALIAS FOR $6;
_limit ALIAS for $7;
_offset ALIAS for $8;
_filter ALIAS for $9;
sql character varying;

	BEGIN

		-- REFRESH REQUESTED MATERIALIZED VIEW 
		sql := 'REFRESH MATERIALIZED VIEW CONCURRENTLY matview.' || _alias || ' WITH DATA;'
			|| ' SELECT array_to_json(array_agg(row_to_json(t)))'
			|| ' FROM (SELECT * FROM matview.'
			|| quote_literal(_alias)
			|| ' WHERE ('
			|| quote_literal(_param)
			|| ' = '''
			|| quote_literal(_value)
			|| ''')'
		
		-- IS FILTER
    IF _filter IS NOT NULL THEN
			sql := sql || ' ' 
				|| _filter
				|| _order
                || ' OFFSET '
				|| _offset
				|| ' FETCH NEXT '
				|| _limit
				|| ' ROWS ONLY) t;';
				
		-- NULL FILTER
    ELSE
			sql := sql || _order
				|| ' OFFSET '
				|| _offset
				|| ' FETCH NEXT '
				|| _limit
				|| ' ROWS ONLY) t;';
    END IF;

		RETURN QUERY EXECUTE sql;
	END;

$function$;