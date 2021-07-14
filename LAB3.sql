create database lab3;
	create table departments(
	  code integer primary key,
	  name varchar(255) not null ,
	  budget decimal not null
	);
	create table employees (
	  ssn integer primary key,
	  name varchar(255) not null ,
	  lastname varchar(255) not null ,
	  department integer not null ,
	  city varchar(255),
	  foreign key (department) references departments(code)
	);
	create table customers (
	  id serial primary key,
	  name varchar(255) not null ,
	  lastname varchar(255) not null ,
	  city varchar(255)
	);
	insert into departments(code,name,budget) values(10,'it',75000);
	insert into departments(code,name,budget) values(11,'accounting',16000);
	insert into departments(code,name,budget) values(12,'human resources',240000);
	insert into departments(code,name,budget) values(13,'research',55000);
	insert into departments(code,name,budget) values(14,'management',155000);
	insert into departments(code,name,budget) values(15,'sales',90000);
	

	insert into employees(ssn,name,lastname,department, city) values('12','Sake','sake',14, 'almaty');
	insert into employees(ssn,name,lastname,department, city) values('123','Make','manikutty',14, 'shymkent');
	insert into employees(ssn,name,lastname,department, city) values('1234','Bake','tmith',37, 'astana');
	insert into employees(ssn,name,lastname,department, city) values('12345','Take','ens',37, 'almaty');
	insert into employees(ssn,name,lastname,department, city) values('123456','Gake','fos',14, 'astana');
	insert into employees(ssn,name,lastname,department, city) values('1234567','Jake','odonnell',77, 'astana');
	insert into employees(ssn,name,lastname,department, city) values('12345678','Oreke','doe',59, 'shymkent');
	insert into employees(ssn,name,lastname,department, city) values('123456789','Dake','smith',77, 'almaty');
	insert into employees(ssn,name,lastname,department, city) values('4352435','Zake','efron',59, 'almaty');
	insert into employees(ssn,name,lastname,department, city) values('41241','Ereke','goldsmith',59, 'atyrau');
	insert into employees(ssn,name,lastname,department, city) values('421427245','Lake','doe',14, 'almaty');
	insert into employees(ssn,name,lastname,department, city) values('82414127246','Kake','swamy',14, 'almaty');
	

	

	

	insert into customers(name,lastname, city) values('Sake','wills', 'almaty');
	insert into customers(name,lastname, city) values('Bake','foster', 'london');
	insert into customers(name,lastname, city) values('Oreke','hills', 'almaty');
	insert into customers(name,lastname, city) values('Lake','doe', 'tokyo');
	insert into customers(name,lastname, city) values('Make','little', 'almaty');
	insert into customers(name,lastname, city) values('Jake','efron', 'astana');
	insert into customers(name,lastname, city) values('Gake','gomez', 'shymkent');
	insert into customers(name,lastname, city) values('Nes','tailor', 'almaty');
	insert into customers(name,lastname, city) values('jul','adams', 'astana');
	

	select lastname from employees;
	

	select distinct on(lastname) * from employees;
	

	select * from employees where lastname = 'tmith';
	

	select * from employees where lastname = 'tmith' or lastname = 'doe';
	

	select * from employees where department = 14;
	

	select * from employees where department = 37 or department = 77;
	

	select sum(budget) from departments;
	

	select department, count(*) from employees group by department;
	

	select department from employees group by department having count(*) > 2;
	

	select name from departments order by budget desc limit 1 offset 1;
	

	select name, lastname from employees where department = (select code from departments order by budget asc limit 1);
	

	select name from employees where city = 'almaty' union all select name from customers where city = 'almaty';
	

	select name from departments where budget > 6000 order by budget asc, code desc;
	

	update departments set budget = budget - budget * 0.1 where budget = (select budget from departments order by budget asc limit 1) returning *;
	

	update employees set department = 14 where department = 77 returning *;
	

	delete from employees as e where e.department = 14;
	

	delete from employees *;
