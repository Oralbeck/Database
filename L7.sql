create database lab7;

	create index index_name on countries(name);
	create index index_name_surname on employees(employees.name, surname);
	create unique index index_salary on employees (salary);
	create index index_substring on employees (substring(employees.name from 1 for 4));
	create index index_join_employees on employees (department_id, salary)
	create index index_join_departments on departments (department_id, budget)

