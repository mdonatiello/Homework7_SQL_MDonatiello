Department
-
dept_no PK varchar(10)
dept_name varchar(25)

Employee
-
emp_no PK int
birth_date varchar(15)
first_name varchar(75)
last_name varchar(75)
gender char(1)
hire_date varchar(15)

DepartmentEmployee
-
emp_no int fk - Employee.emp_no
dept_no varchar(10) fk >- Department.dept_no
from_date date
to_date date

DepartmentManager
-
dept_no varchar(10) fk >- Department.dept_no
emp_no int fk - Employee.emp_no
from_date date
to_date date

Salary
-
emp_no int FK -< Employee.emp_no
salary int
from_date date

to_date date

Title
-
emp_no int FK -< Employee.emp_no
title varchar(50)
from_date date
to_date date
