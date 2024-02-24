DROP DATABASE IF EXISTS LESSON_1;
CREATE DATABASE LESSON_1;
USE LESSON_1;

CREATE TABLE student(
	id int auto_increment not null primary key,
    name_student varchar(45) not null,
    email varchar(45) not null,
    phone_number bigint 
);

create table teachers(
	id int auto_increment not null primary key,
    name_teacher varchar(45) not null,
    post varchar(100) 
);

create table courses(
	id int auto_increment not null primary key,
    name_courses varchar(100) not null,
    name_student varchar(45) not null,
    name_teacher varchar(45) not null
);


INSERT INTO student(name_student,email,phone_number) values
('Миша','misha@gmail.com',89456355678),
('Маша','masha@gmail.com',89455355678),
('Антон','anton@gmail.com',89456355633),
('Сергей','sergey@gmail.com',89336115678),
('Паша','pasha@gmail.com',89111115678);


INSERT INTO teachers(name_teacher,post) values
('Иванов','Профессор'),
('Петров','Профессор'),
('Антонов','Доцент'),
('Сергеев','Ассистент'),
('Павлов','Лаборант');


INSERT INTO courses(name_courses,name_student,name_teacher) values
('Базы данных и sql','Миша','Иванов'),
('Аналитика','Сергей','Петров'),
('Python','Паша','Сергеев');


/*
задание
1. Получить список с информацией обо всех студентах
2. Получить список всех студентов с именем "name"
3. Вывести имя и почту из таблички "Студенты"
4*. Выбрать студентов, имена которых начинаются с буквы «n».
*/

select * from student;
select * from student where name_student = 'Миша';
select name_student,email from student;
select * from student where name_student like 'М%';


DROP TABLE IF EXISTS workers;
CREATE TABLE workers (
id INT NOT NULL primary key, 
name_worker VARCHAR(45),
dept VARCHAR(100) COMMENT 'Подразделение', -- COMMENT на случай, если имя неочевидное,
salary INT
);

INSERT INTO workers (id, name_worker, dept, salary)
VALUES 
(100, 'AndreyEx', 'Sales', 5000),
(200, 'Boris', 'IT', 5500),
(300, 'Anna', 'IT', 7000),
(400, 'Anton', 'Marketing', 9500),
(500, 'Dima', 'IT', 6000),
(501, 'Maxs', 'Accounting', NULL);

select * from workers;

/*1. Выбрать всех сотрудников, у которых зарплата 
больше 6000
2. Покажите всех сотрудников, которые принадлежат к отделу IT.
3. Отобразите всех сотрудников, который НЕ принадлежат к отделу IT
*/

select * from workers where salary > 6000;
select name_worker from workers where dept = 'IT';
select name_worker from workers where dept != 'IT';