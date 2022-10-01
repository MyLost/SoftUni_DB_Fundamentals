create table directors(
	id int auto_increment primary key not null,
	director_name varchar(50) not null,
	notes text
);

insert into directors (director_name) values ('Tom');
insert into directors (director_name) values ('Mark');
insert into directors (director_name) values ('Stefan');
insert into directors (director_name) values ('Grigor');
insert into directors (director_name) values ('Antony');

create table genres(
	id int auto_increment primary key not null,
	genre_name varchar(50) not null,
	notes text
);

insert into genres(genre_name) values ('action');
insert into genres(genre_name) values ('drama'); 
insert into genres(genre_name) values ('sci-fi'); 
insert into genres(genre_name) values ('horor'); 
insert into genres(genre_name) values ('comedy'); 


create table categories(
	id int auto_increment primary key not null,
	category_name varchar(50) not null,
	notes text
);

insert into categories (category_name) values ('children');
insert into categories (category_name) values ('18');
insert into categories (category_name) values ('16');
insert into categories (category_name) values ('old');
insert into categories (category_name) values ('12');

create table movies(
	id int auto_increment primary key not null,
	title varchar(50) not null,
	director_id int,
	copyright_year varchar(10),
	length int,
	genre_id int,
	category_id int,
	rating int,
	notes text
);

insert into movies(title) values ('Inception');
insert into movies(title) values ('The dark night');
insert into movies(title) values ('Avatar');
insert into movies(title) values ('Star wars');
insert into movies(title) values ('Die hard');