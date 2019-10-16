employees
-
emp_no INTEGER PK 
bith_date DATE
first_name VARCHAR
last_name VARCHAR
gender VARCHAR
hire_date DATE

departments 
-
dept_no VARCHAR PK
dept_name VARCHAR

department_manager
-
dept_no VARCHAR PK FK - departments.dept_no
emp_no INTEGER  PK FK - employees.emp_no
from_date DATE 
to_date DATE

department_employees
-
emp_no INTEGER PK FK >- employees.emp_no
dept_no VARCHAR PK FK - departments.dept_no
from_date DATE 
to_date DATE

title
-
emp_no INTEGER FK >- employees.emp_no
title VARCHAR 
from_date DATE 
to_date DATE

salaries 
-
emp_no INTEGER PK FK - employees.emp_no
salary INTEGER 
from_date DATE 
to_date DATE