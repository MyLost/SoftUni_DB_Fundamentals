select count(e.employee_id) from employees as e
where  e.salary > ( select avg(salary) as 'average_salary' from employees)
