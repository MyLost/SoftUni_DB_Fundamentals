select e.employee_id, e.first_name from employees as e left join employees_projects as ep on e.employee_id = ep.employee_id
where ep.project_id is null
order by e.employee_id desc
limit 3;
