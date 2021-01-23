select Department, Employee, Salary
from (select b.Name                                                       as 'Department',
             a.Name                                                       as 'Employee',
             a.Salary                                                     as 'Salary',
             dense_rank() over (partition by b.Name order by Salary desc) as rnk
      from Employee a
               inner join
           Department b
           on a.DepartmentId = b.Id) t
where t.rnk <= 3
;