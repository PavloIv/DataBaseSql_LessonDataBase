select sum(salary)
 from developers
 where id in(
    select developer_id
	 from developers_skills
	 where skill_id in(
		select skill_id
		 from skills 
		 where language = 'java'));
        