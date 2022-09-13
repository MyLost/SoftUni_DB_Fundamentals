select employee_id, first_name, last_name, name from employees as e
join departments as d on e.department_id = d.department_id
where d.name = 'Sales'
order by e.employee_id desc;