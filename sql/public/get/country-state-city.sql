SELECT 
	a.id AS country_id
	, a.name AS country
	, b.id AS state_id
	, b.name AS state
	, c.id AS city_id
	, c.name AS city
FROM public.country a 
LEFT OUTER JOIN public.state b ON b.country_id::text = a.id::text 
LEFT OUTER JOIN public.city c ON c.s_id::text = b.id::text
ORDER BY a.name, b.name;