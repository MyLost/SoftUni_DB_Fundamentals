create view v_employees_job_titles as
select CONCAT_WS(' ', first_name, middle_name, last_name), job_title from employees;

SELECT * FROM `v_employees_job_titles`;