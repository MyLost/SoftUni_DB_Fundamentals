DELIMITER ###
CREATE or replace FUNCTION ufn_count_employees_by_town(town_name VARCHAR(20))
RETURNS INT 
DETERMINISTIC
BEGIN
	return (SELECT COUNT(*) FROM employees AS e
	 JOIN addresses AS a ON a.address_id = e.address_id
	 JOIN towns AS t ON t.town_id = a.town_id
	WHERE t.name = town_name);
END 
###

select ufn_count_employees_by_town('Sofia') as 'town_name';