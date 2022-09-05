SELECT AVG(salary) AS "Середня зарплата на 
найдешевшому проекті"
 FROM developers
 WHERE id IN(
	SELECT developer_id 
	 FROM developers_projects
	 WHERE project_id = (
	   SELECT id 
		FROM projects
		ORDER BY cost
		LIMIT 1));