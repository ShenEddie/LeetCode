set global log_bin_trust_function_creators = TRUE;

# Method 1
drop function if exists getNthHighestSalary;

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    set N = N - 1;
    RETURN (
        # Write your MySQL query statement below.
        select distinct Salary
        from employee
        order by Salary desc
        limit N, 1
    );
END;

select getNthHighestSalary(2);


# Method 2
drop function if exists getNthHighestSalary;

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    set N = N - 1;
    RETURN (
        # Write your MySQL query statement below.
        select distinct salary
        from (select salary, dense_rank() over (order by salary desc) as rnk
              from employee) t
        where t.rnk = N
    );
END;

select getNthHighestSalary(2);
