 create table people(
	id int auto_increment primary key not null,
	name varchar(200) NOT NULL,
	picture blob,
	height DOUBLE(10,2) NULL,
	weight DOUBLE(10,2) NULL,
	gender CHAR(1) NOT NULL,
	birthdate DATETIME not null, 
	biography text
);

insert into people (name, picture, height, weight, gender, birthdate, biography) values('Kiril','some pictures', 1.56, 60.00, 'm', now(), 'some excelent biography');
insert into people (name, picture, height, weight, gender, birthdate, biography) values('Tom','some pictures', 1.56, 60.00, 'm', now(), 'some excelent biography');
insert into people (name, picture, height, weight, gender, birthdate, biography) values('Elisaveta','some pictures', 1.56, 60.00, 'm', now(), 'some excelent biography');
insert into people (name, picture, height, weight, gender, birthdate, biography) values('Vaniq','some pictures', 1.56, 60.00, 'm', now(), 'some excelent biography');
insert into people (name, picture, height, weight, gender, birthdate, biography) values('Emo','some pictures', 1.56, 60.00, 'm', now(), 'some excelent biography');

