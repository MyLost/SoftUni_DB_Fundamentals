select count(*) from employees
where manager_id is null
group by manager_id;

