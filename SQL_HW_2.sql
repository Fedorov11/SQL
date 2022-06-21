--SQL_HW_2_DDL

-- Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name varchar(50) not null
)

--Проверить

select * from employees;

--Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
values
    ('Roman'),
	('Egor'),
	('Kot'),
	('Demon'),
	('Vorobey'),
	('Alexa'),
	('Bom'),
	('Jeck'),
	('Olena'),
	('Tom'),
	('Jerry'),
	('Mikky'),
	('Mouse'),
	('Kim'),
	('Sergei'),
	('Vasja'),
	('Denis'),
	('Andrik'),
	('Tim'),
	('Sokol'),
    ('Rudik'),
	('Diego'),
	('David'),
	('Ferrari'),
	('Jakson'),
	('Frog'),
	('Wolf'),
	('Winny'),
	('Pouh'),
	('Dollar'),
	('Euro'),
	('Android'),
	('Rich'),
	('Juci'),
	('Slaer'),
	('Doom'),
	('Potato'),
	('Zhorik'),
	('Pokemon'),
	('Enigma'),
	('Peplomot'),
    ('Dell'),
	('Helena'),
	('Pavel'),
	('Zuev'),
	('lebovski'),
	('Unicon'),
	('Feja'),
	('Kloun'),
	('Beat'),
	('Gnom'),
	('Zhenja'),
	('Kolokol'),
	('Key'),
	('Value'),
	('Wiqur'),
	('Sql'),
	('Server'),
	('Amol'),
	('Bora'),
	('Fender'),
	('Vinyl'),
	('Korka'),
	('Erik'),
	('Ergn'),
	('Sakura'),
	('Naruto'),
	('Crash'),
	('Socol'),
	('Enrique');
	

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null


create table salary(
	id serial primary key,
	monthly_salary int not null
)

--Проверить

select * from salary;

-Наполнить таблицу salary 15 строками:
--- 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 
--2000, 2100, 2200, 2300, 2400

insert into salary(monthly_salary) 
values(1000), 
(1100), 
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400);

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	)

--Проверить 
select * from employee_salary;	

--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 2),
(17, 5),
(18, 2),
(19, 13),
(24, 14),
(25, 1),
(26, 9),
(27, 7),
(28, 15),
(29, 11),
(30, 9),
(31, 3),
(32, 12),
(33, 7),
(34, 5),
(111, 10),
(109, 8),
(108, 15),
(107, 6),
(106, 6),
(105, 4),
(103, 14),
(102, 7),
(101, 3),
(100, 8);

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
)
--Проверить 
select * from roles;

--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

---Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values('Junior QA engineer'),
	('Middle QA engineer'),
	('Senior QA engineer'),
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior JS developer'),
	('Middle JS developer'),
	('Senior JS developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Project Manager'),
	('HR'),
	('CEO'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer'),
	('Sales manager'),
	('Devops engineer');
	
--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees (id),
	foreign key(role_id)
		references roles (id)
)

--Проверить

select * from roles_employee;

-- Наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values(6, 8),
(60, 2),
(24, 19),
(5, 13),
(68, 1),
(29, 7),
(65, 14),
(59, 3),
(55, 6),
(56, 19),
(62, 8),
(34, 20),
(10, 1),
(11, 10),
(2, 2),
(1, 19),
(40, 3),
(70, 17),
(18, 18),
(19, 1),
(33, 5),
(20, 15),
(3, 9),
(43, 10),
(4, 2),
(51, 4),
(52, 1),
(8, 16),
(7, 5),
(48, 13),
(61, 2),
(13, 2),
(39, 9),
(9, 11),
(44, 8),
(47, 3),
(54, 12),
(38, 4),
(69, 19),
(12, 1);
