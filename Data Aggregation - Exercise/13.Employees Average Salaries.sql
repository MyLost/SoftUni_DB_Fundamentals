select
    department_id,
    if(department_id =1,
        avg(salary) + 5000,
        avg(salary))  as avg_salary
from
    employees
where salary > 30000 and manager_id !=42
group by department_id
order by department_id