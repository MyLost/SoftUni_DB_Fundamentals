select
    e1.first_name, e1.last_name, e1.department_id
from employees as e1
    join (
    select e2.department_id, avg(e2.salary) as salary
    from
        employees as e2
    group by e2.department_id
    ) as dep_average on e1.department_id = dep_average.department_id
where
    e1.salary > dep_average.salary
order by e1.department_id, e1.employee_id
limit 10;