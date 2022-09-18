 create table users(
	id int auto_increment primary key not null,
	username varchar(30) unique key,
	password varchar(26),
	profile_picture blob,
	last_login_time timestamp,
	is_deleted bool
);

insert into users (username, password, profile_picture, last_login_time, is_deleted) values('Batman','12234','samo profile pocture in bite array', now(), false);
insert into users (username, password, profile_picture, last_login_time, is_deleted) values('Superman','12234','samo profile pocture in bite array', now(), false);
insert into users (username, password, profile_picture, last_login_time, is_deleted) values('Spiderman','12234','samo profile pocture in bite array', now(), false);
insert into users (username, password, profile_picture, last_login_time, is_deleted) values('Ironman','12234','samo profile pocture in bite array', now(), false);
insert into users (username, password, profile_picture, last_login_time, is_deleted) values('Flushman','12234','samo profile pocture in bite array', now(), false);

