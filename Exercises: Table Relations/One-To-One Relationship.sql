create table passports (
    passport_id int auto_increment not null unique,
    passport_number varchar(50) not null unique
) auto_increment=101;

create table people (
    person_id int auto_increment not null unique,
    first_name varchar(50) not null,
    salary DECIMAL(10,2) not null default 0,
    passport_id int unique not null
);

insert into passports (passport_id, passport_number) values (101, 'N34FG21B');
insert into passports (passport_id, passport_number) values (102, 'K65LO4R7');
insert into passports (passport_id, passport_number) values (103, 'ZE657QP2');

insert into people (person_id, first_name, salary, passport_id) values (1, 'Roberto', 43300.00, 102);
insert into people (person_id, first_name, salary, passport_id) values (2, 'Tom', 56100.00, 103);
insert into people (person_id, first_name, salary, passport_id) values (3, 'Yana', 60200.00, 101);


alter table people
    add constraint pk_id
    primary key(person_id),
    add constraint fk_passport_id
    foreign key(passport_id)
    references passports(passport_id);


select * from passports;
select * from people;