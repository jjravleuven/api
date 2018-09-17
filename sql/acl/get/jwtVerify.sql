CREATE OR REPLACE FUNCTION "acl"."jwtVerify"(
	"_token" text = null
	, "_secret" text = null
) RETURNS TABLE ( 
	result json 
) LANGUAGE plpgsql
AS $function$

/**
 * select * FROM verify(_token::text, _secret::text, 'HS256');
 */

DECLARE 
	_token ALIAS FOR $1;
	_secret ALIAS FOR $2;
	sql character varying;
	
BEGIN 

	/**
	 * RETRIEVE JWT TOKEN
	 */	
	sql := 'SELECT row_to_json(v) "token" FROM ('
		|| 'SELECT * from verify('
		|| quote_literal($1::text)
		|| ', '
		|| quote_literal($2::text)
		|| ', ''HS512'')) v;';
		
	RETURN QUERY EXECUTE sql;
	
END;

$function$;

/**
 * TEST RETRIEVE JWT TOKEN
 */
SELECT * FROM "acl"."jwtVerify"(
	'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiB7ImlkIjogImI2MmFlNWVmLWMxMjQtNGE0NC1iMDk4LTRiYzY3ZWY4ZGUxMyIsIm5hbWUiOiAiTmV4eHQgSW50ZWxsaWdlbmNlIEluYy4ifSwidXNlciI6IHsibmFtZSI6ICJDYXRoeSBDaGVuZyIsImlkIjogIjkzMTQxZWFmLTdjMjMtNDczZC05Mzk4LTY2Yjg4ODQwMTQwYiJ9LCJyb2xlIjoiU3lzdGVtIn0.Z43q7kNbeHIPQdw8QskmXr8i3YsbDkAahiG5s1Gy3_mXQ07bOb4AvRVB0Fq4GcKcW4aw_vEdvFLb7lfBeGBvcw'::text
	, 'secret'::TEXT
);