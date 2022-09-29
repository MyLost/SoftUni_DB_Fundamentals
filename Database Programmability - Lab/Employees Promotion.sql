DELIMITER ###
create procedure usp_raise_salaries(department_name varchar(50))
begin
	Update employees as e
	join departments as d
	on e.department_id  = d.department_id
	set salary = salary * 1.05
	where d.name = department_name;
end
###

call  usp_raise_salaries('Finance');