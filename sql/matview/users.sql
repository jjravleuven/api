CREATE SCHEMA IF NOT EXISTS matview;

DROP MATERIALIZED VIEW IF EXISTS matview.users CASCADE;
DROP INDEX IF EXISTS "matview.users_id_seq" CASCADE;

CREATE MATERIALIZED VIEW matview.users 
AS 
	SELECT 
		a.id
		, a.fname
		, a.lname
		, COALESCE(a.fname || ' ' || a.lname) AS fullname
		, b.email
		, a.org_id
		, a.type_id
		, a.group AS group_id
		, a.role AS role_id
		, d.name AS type
		, e.name AS group
		, c.name AS role
		, f.name AS organisation
		, a.created
	FROM crm.user a 
	LEFT OUTER JOIN crm.user_type d ON d.id::text = a.type_id::text
	LEFT OUTER JOIN acl.login b ON b.u_id::text = a.id::text
	LEFT OUTER JOIN acl.group c ON c.id::text = a.group::text 
	LEFT OUTER JOIN acl.role e ON e.id::text = a.role::text
	LEFT OUTER JOIN crm.organization f ON f.id::text = a.org_id::text
	ORDER BY a.lname;
	
CREATE UNIQUE INDEX "matview.users_id_seq" ON matview.users(id);
	
REFRESH MATERIALIZED VIEW CONCURRENTLY matview.users WITH DATA;
SELECT * FROM matview.users ORDER BY lname;