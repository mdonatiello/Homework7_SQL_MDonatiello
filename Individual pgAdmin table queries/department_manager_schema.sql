CREATE TABLE department_manager3 (
    dept_no_department_manager3 VARCHAR(10) NOT NULL,
    emp_no_department_manager3 INTEGER NOT NULL,
    from_date_department_manager3 DATE,
    to_date_department_manager3 DATE,
    FOREIGN KEY (dept_no_department_manager3) REFERENCES department(dept_no),
    FOREIGN KEY (emp_no_department_manager3) REFERENCES employee(emp_no)
 );

SELECT *
FROM department_manager3