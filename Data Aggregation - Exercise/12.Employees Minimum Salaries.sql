select * from employees;

select department_id,  min(salary) as minimum_salary from employees
where (department_id = 2 or department_id = 5 or department_id = 7)
group by department_id
order by department_id asc;