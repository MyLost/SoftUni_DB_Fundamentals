create table manufacturers (
    `manufacturer_id` int auto_increment unique not null,
    `name` varchar(50) not null,
    `established_on` date not null
);

create table models (
	model_id int auto_increment not null unique,
	name varchar(50) not null,
	manufacturer_id int not null
) auto_increment = 101;


insert into manufacturers (name, established_on ) values
	('BMW', '1916-03-01'),
	('Tesla', '2003-01-01'),
	('Lada','1966-05-01');


insert into models (name, manufacturer_id) values
('X1',1),('i6',1),('Model S',2),('Model X',2),('Model 3',2),('Nova',3);

alter table manufacturers
	add constraint pk_manufacturer_id
	primary key(manufacturer_id);

alter table models
	add constraint pk_model_id
	primary key (model_id),
	add constraint fk_manufacturer_id
	foreign key(manufacturer_id)
	references manufacturers(manufacturer_id);
