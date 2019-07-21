CREATE TABLE department (
    dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(25)
 );

CREATE TABLE employee (
    emp_no INT PRIMARY KEY NOT NULL,
    birth_date VARCHAR(15),
    first_name VARCHAR(75),
    last_name VARCHAR(75),
    gender CHAR(1),
    hire_date VARCHAR(15)
 );

CREATE TABLE department_manager3 (
    dept_no_department_manager3 VARCHAR(10) NOT NULL,
    emp_no_department_manager3 INTEGER NOT NULL,
    from_date_department_manager3 DATE,
    to_date_department_manager3 DATE,
    FOREIGN KEY (dept_no_department_manager3) REFERENCES department(dept_no),
    FOREIGN KEY (emp_no_department_manager3) REFERENCES employee(emp_no)
 );

 CREATE TABLE department_employee2 (
    emp_no_department_employee2 INTEGER NOT NULL,
    dept_no_department_employee2 VARCHAR(10) NOT NULL,
    from_date_department_employee2 DATE,
    to_date_department_employee2 DATE,
    FOREIGN KEY (emp_no_department_employee2) REFERENCES employee(emp_no),
    FOREIGN KEY (dept_no_department_employee2) REFERENCES department(dept_no)
);

CREATE TABLE salary5 (
    emp_no_salary5 INTEGER NOT NULL,
    salary5 INTEGER,
    from_date_salary5 DATE,
    to_date_salary5 DATE,
    FOREIGN KEY (emp_no_salary5) REFERENCES employee(emp_no)
 );

 CREATE TABLE title2 (
    emp_no_title2 INTEGER NOT NULL,
    title2 VARCHAR(50),
    from_date_title2 DATE,
    to_date_title2 DATE,
    FOREIGN KEY (emp_no_title2) REFERENCES employee(emp_no)
 );