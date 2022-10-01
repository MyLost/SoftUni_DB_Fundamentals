select avg(salary) as min_average_slary from employees as e join departments as d on e.department_id=d.department_id
group by e.department_id
order by min_average_slary
limit 1;