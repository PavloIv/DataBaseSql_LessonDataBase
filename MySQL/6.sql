select avg(salary) as 'Середня зарплата на 
найдешевшому обєкті'
 from developers
 where id in(
	select developer_id 
	 from developers_projects
	 where project_id = (
	   select id 
		from projects
		order by cost
		limit 1));