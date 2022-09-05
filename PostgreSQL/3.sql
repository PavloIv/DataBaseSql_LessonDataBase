SELECT SUM(salary)
 FROM developers
 WHERE id IN(
    SELECT developer_id
	 FROM developers_skills
	 WHERE skill_id in(
		SELECT skill_id
		 FROM skills 
		 WHERE language = 'Java'));