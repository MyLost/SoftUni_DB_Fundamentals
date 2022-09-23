create table towns(
	id int auto_increment primary key not null,
	name varchar(50)
);

create table addresses (
	id int auto_increment primary key not null,
	address_text varchar(100),
	town_id int,
	FOREIGN KEY (town_id) REFERENCES towns(id));

create table departments (
	id int auto_increment primary key not null, 
	name varchar (50)
);

create table employees 
(
	id int auto_increment primary key not null, 
	first_name varchar(50), 
	middle_name varchar(50), 
	last_name varchar(50), 
	job_title varchar(50), 
	department_id int, 
	hire_date Timestamp, 
	salary DOUBLE(10,2), 
	address_id int,
	CONSTRAINT fk_employees_departments 
	FOREIGN KEY (department_id) REFERENCES departments(id),
	CONSTRAINT fk_employees_addresses 
	FOREIGN KEY (address_id) REFERENCES addresses(id)
);

INSERT INTO `towns` (`name`)
VALUES
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

INSERT INTO `departments` (`name`)
VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');


INSERT INTO `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `department_id`, `hire_date`,`salary`)
VALUES
('Ivan', 'Ivanov', 'Ivanov', '.Net Developer', 4, '2013-02-01', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88);
