create database lab4;
	create table salesman(
	    salesman_id integer primary key,
	    name varchar(255) not null,
	    city varchar(255),
	    commission float not null
	);
	

	create table customers(
	    customer_id integer primary key,
	    cust_name varchar(255) not null,
	    city varchar(255) not null,
	    grade decimal,
	    salesman_id integer not null,
	    foreign key (salesman_id) references salesman(salesman_id)
	);

	create table orders(
	    ord_no integer primary key,
	    purch_amt float not null,
	    ord_date date not null,
	    customer_id integer not null,
	    salesman_id integer not null,
	    foreign key (customer_id) references customers(customer_id),
	    foreign key (salesman_id) references salesman(salesman_id)
	);


	insert into salesman(salesman_id, name, city, commission) values(5001,'james hoog','new york',0.15);
	insert into salesman(salesman_id, name, city, commission) values(5002,'nail knite','paris',0.13);
	insert into salesman(salesman_id, name, city, commission) values(5005,'pit alex','london',0.11);
	insert into salesman(salesman_id, name, city, commission) values(5006,'mc lyon','paris',0.14);
	insert into salesman(salesman_id, name, city, commission) values(5003,'lauson hen',null,0.12);
	insert into salesman(salesman_id, name, city, commission) values(5007,'paul adam','rome',0.13);
	

	insert into customers(customer_id, cust_name, city, grade, salesman_id) values(3002,'nick rimando','new york',100,5001);
	insert into customers(customer_id, cust_name, city, grade, salesman_id) values(3005,'graham zusi','california',200,5002);
	insert into customers(customer_id, cust_name, city, grade, salesman_id) values(3001,'brad guzan','london',null,5005);
	insert into customers(customer_id, cust_name, city, grade, salesman_id) values(3004,'fabian johns','paris',300,5006);
	insert into customers(customer_id, cust_name, city, grade, salesman_id) values(3007,'brad davis','new york',200,5001);
	insert into customers(customer_id, cust_name, city, grade, salesman_id) values(3009,'geoff camero','berlin',100,5003);
	insert into customers(customer_id, cust_name, city, grade, salesman_id) values(3008,'julian green','london',300,5002);

	insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values(70001,150.5,'2012-10-05',3005,5002);
	insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values(70009,270.65,'2012-09-10',3001,5005);
	insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values(70002,65.26,'2012-10-05',3002,5001);
	insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values(70004,110.5,'2012-08-17',3009,5003);
	insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values(70007,948.5,'2012-09-10',3005,5002);
	insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values(70005,2400.6,'2012-07-27',3007,5001);
	insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values(70008,5760,'2012-09-10',3002,5001);
	select sum(purch_amt) from orders;

	select avg(purch_amt) from orders;

	select count(cust_name) from customers where cust_name is not null;

	select min(purch_amt) from orders;

	select * from customers where cust_name like '_____b';

	select * from orders where customer_id in (select customers.customer_id from customers where city = 'new york');
	select * from customers where customer_id in(select orders.customer_id from orders where purch_amt>10);
	select sum(grade) from customers;
	select * from customers where cust_name is not null;
	select max(grade) from customers;