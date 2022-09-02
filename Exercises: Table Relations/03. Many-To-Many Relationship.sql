create table students(
    student_id int auto_increment not null unique,
    name varchar(50) not null
);

insert into students (name) values ('Mila'),('Toni'),('Ron');

create table students_exams(
    student_id int not null,
    exam_id int not null
);

insert into students_exams(student_id, exam_id) values (1,101),(1,102),(2,101),(3,103),(2,102),(2,103);

create table exams(
    exam_id int auto_increment not null unique,
    name varchar(50) not null
) auto_increment = 101;

insert into exams (name) values ('Spring MVC'),('Neo4j'),('Oracle 11g');

alter table students
    add constraint pk_student_id
    primary key(student_id);

alter table exams
    add constraint pk_exam_id
    primary key(exam_id);


alter table students_exams
    add constraint fk_student_id
    foreign key (student_id)
    references students(student_id),
    add constraint fk_exam_id
    foreign key (exam_id)
    references exams(exam_id)