select employee_id, first_name, salary, name from employees as e join departments as d
on e.department_id = d.department_id
where salary > 15000
order by e.department_id desc
limit 5;