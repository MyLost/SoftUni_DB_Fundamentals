select e.employee_id, e.first_name,
    case
        when date(p.start_date) <= '2004-12-31' then p.name
        else null
        end as `project name`
from employees as e
join employees_projects as ep on e.employee_id = ep.employee_id
join projects as p on ep.project_id = p.project_id
where  e.employee_id = 24
order by p.name;
