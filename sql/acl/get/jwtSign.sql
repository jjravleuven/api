CREATE OR REPLACE FUNCTION "acl"."jwtSign"(
	"_payload" json = '{}'
	, "_secret" text = null
) RETURNS TABLE ( 
	results text 
) LANGUAGE plpgsql
AS $function$

/**
 * select sign(_payload::json, _secret::text, 'HS256');
 */

DECLARE 
	_payload ALIAS FOR $1;
	_secret ALIAS FOR $2;
	sql character varying;
	
BEGIN 

	/**
	 * CREATE JWT TOKEN	
	 */
	sql := 'SELECT sign('
		|| quote_literal($1::json)
		|| ', '
		|| quote_literal($2::text)
		|| ', ''HS512'');';
		
	RETURN QUERY EXECUTE sql;
	
END;

$function$;

/**
 * TEST: CREATE JWT TOKEN 
 */
SELECT * FROM "acl"."jwtSign"(
    '{"iss": {"id": "b62ae5ef-c124-4a44-b098-4bc67ef8de13","name": "Bookt In Inc."},"user": {"name": "Cathy Cheng","id": "93141eaf-7c23-473d-9398-66b88840140b"},"role":"System"}'::JSON 
    , 'secret'::TEXT
);