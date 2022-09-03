
drop table teachers;

create table teachers (
    teacher_id int auto_increment primary key not null,
    name varchar(50) not null,
    manager_id int null
) auto_increment = 101;

insert into teachers (name, manager_id) values ('John',null),('Maya', 106),('Silvia', 106),('Ted', 105),('Mark', 101),('Greta', 101);

alter table teachers
    add constraint fk_teachers
    foreign key (manager_id)
    references teachers(teacher_id);