select dp.project_id, pr.name, sum(salary)
 from developers_projects as dp
 inner join developers as dev 
 on dp.developer_id = dev.id
 inner join projects as pr 
 on dp.project_id = pr.id
 group by dp.project_id
 order by sum(salary)desc
 limit 1;
    

