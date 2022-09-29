select employee_id, job_title, e.address_id, a.address_text
from employees as e join addresses as a on e.address_id = a.address_id order by a.address_id asc limit 5;