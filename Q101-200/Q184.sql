-- Method 1
select Department, Employee, Salary
from
(select b.Name as Department,
       a.Name as Employee,
       a.Salary as Salary,
       dense_rank() over(partition by b.Name order by a.Salary desc) as rnk
from Employee a
     inner join
     Department b
     on a.DepartmentId = b.Id) t
where t.rnk = 1
;


-- Method 2
select
    b.Name as 'Department',
    a.Name as 'Employee',
    a.Salary as 'Salary'
from Employee a
     inner join
     Department b
     on a.DepartmentId = b.Id
where (a.DepartmentId, a.Salary) in
    (select DepartmentId, max(Salary)
    from Employee
    group by DepartmentId)
order by b.Name, a.Name
;