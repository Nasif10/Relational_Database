create database students;

create table students(student_id serial primary key, first_name varchar(50) not null, last_name varchar(50) not null, major_id int, gpa numeric(2,1));
create table majors(major_id serial primary key, major varchar(50) not null);
create table courses(course_id serial primary key, course varchar(100) not null);
create table majors_courses(major_id int, course_id int);

alter table students add foreign key(major_id) references majors(major_id);
alter table majors_courses add foreign key(major_id) references majors(major_id);
alter table majors_courses add foreign key(course_id) references courses(course_id);