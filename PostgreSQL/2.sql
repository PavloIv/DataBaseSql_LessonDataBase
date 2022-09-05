SELECT dp.project_id, pr."name", SUM(salary)
 FROM developers_projects AS dp
 INNER JOIN developers AS dev 
 ON dp.developer_id = dev.id
 INNER JOIN projects AS pr 
 ON dp.project_id = pr.id
 GROUP BY dp.project_id,pr."name"
 ORDER BY SUM(salary) DESC
 LIMIT 1;