select
	employee_id,
	CONCAT_WS(' ', e.first_name, e.last_name) as employee_name,
	(select CONCAT_WS(' ', e2.first_name, e2.last_name) as name from employees e2 where e.manager_id = e2.employee_id) as manager_name,
	d.name as department_name
from employees e join departments d on e.department_id  = d.department_id
HAVING manager_name IS NOT NULL
order by e.employee_id
limit 5;