create table `mountains` (
    `id` int auto_increment not null,
    `name` varchar(50),
    Constraint pk_id
    primary key(id)
);

create table `peaks` (
    id int auto_increment not null,
    name varchar(50),
    mountain_id int,
    constraint pk_id
    primary key(id),
    constraint fk_mountain_id
    foreign key(mountain_id)
    references mountains(id)
);

