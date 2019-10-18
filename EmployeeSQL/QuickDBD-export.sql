CREATE TABLE employees (
emp_no integer NOT Null PRIMARY KEY,
birth_date date,
first_name Varchar,
last_name Varchar,
gender varchar(1),
hire_date date
);

CREATE TABLE titles (
emp_no integer NOT Null REFERENCES employees(emp_no), 
title varchar,
from_date date,
to_date date
);

CREATE TABLE dept_emp (
emp_no integer NOT Null REFERENCES employees(emp_no),
dept_no varchar,
from_date date,
to_date date
);

CREATE TABLE dept_manager (
dept_no varchar,
emp_no integer NOT Null REFERENCES employees(emp_no),
from_date date,
to_date date
);

CREATE TABLE salaries (
emp_no integer NOT Null REFERENCES employees(emp_no),
salary integer,
from_date date,
to_date date
);

SELECT 
FROM titles