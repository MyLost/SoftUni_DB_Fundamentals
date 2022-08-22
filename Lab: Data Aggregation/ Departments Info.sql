select department_id, count(*) as `number of employees`
from employees
group by department_id
order by department_id, `number of employees`;