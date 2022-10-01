create table subjects (
    subject_id int(11) auto_increment primary key not null,
    subject_name varchar(50) not null
);


create table majors (
    major_id int(11) auto_increment primary key not null,
    name varchar(50) not null
);


create table students (
    student_id int(11) auto_increment primary key not null,
    student_number varchar(12) not null,
    student_name varchar(50) not null,
    major_id int(11),
    constraint fk_major_id
    foreign key (major_id)
    references majors(major_id)
);

create table payments (
    payment_id int(11) auto_increment primary key not null,
    payment_date date not null,
    payment_amount decimal(8,2) not null,
    student_id int(11),
    constraint fk_student_id
    foreign key (student_id)
    references students(student_id)
);

create table agenda(
    student_id int(11),
    subject_id int(11),
    constraint fk_agenda_student_id
    foreign key (student_id)
    references students(student_id),
    constraint fk_agenda_subject_id
    foreign key (subject_id)
    references subjects(subject_id)
);

