create table categories(
	id int auto_increment primary key not null,
	category varchar(50),
	daily_rate int,
	weekly_rate int,
	monthly_rate int,
	weekend_rate int
);


insert into categories (category) values('sports');
insert into categories (category) values('coupe');
insert into categories (category) values('sedan');

create table cars(
	id int auto_increment primary key not null, 
	plate_number int, 
	make varchar(50), 
	model varchar(50), 
	car_year varchar(10), 
	category_id int, 
	doors int, 
	picture blob, 
	car_condition text, 
	available bool
);

insert into cars() values();
insert into cars() values();
insert into cars() values();


create table employees 
(
	id int auto_increment primary key not null, 
	first_name varchar(50), 
	last_name varchar(50), 
	title varchar(50), 
	notes text
);

insert into employees() values();
insert into employees() values();
insert into employees() values();


create table customers 
(
	id int auto_increment primary key not null, 
	driver_licence_number varchar(50), 
	full_name varchar(50),
	address varchar(50), 
	city varchar(50), 
	zip_code varchar(50), 
	notes text
);

insert into customers() values();
insert into customers() values();
insert into customers() values();



create table rental_orders 
(
	id int auto_increment primary key not null, 
	employee_id int, 
	customer_id int, 
	car_id int, 
	car_condition text, 
	tank_level int, 
	kilometrage_start int, 
	kilometrage_end int, 
	total_kilometrage int, 
	start_date Timestamp, 
	end_date Timestamp, 
	total_days int, 
	rate_applied int, 
	tax_rate int, 
	order_status varchar(50), 
	notes text
);

insert into rental_orders() values();
insert into rental_orders() values();
insert into rental_orders() values();
