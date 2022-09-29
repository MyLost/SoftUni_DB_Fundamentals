select e.first_name, e.last_name, e.hire_date, d.`name` from employees as e join departments as d on e.department_id = d.department_id
where hire_date > '1999-01-01' and d.name in ('Sales','Finance')
order by hire_date asc;