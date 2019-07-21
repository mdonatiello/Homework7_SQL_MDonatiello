CREATE TABLE department_employee2 (
    emp_no_department_employee2 INTEGER NOT NULL,
    dept_no_department_employee2 VARCHAR(10) NOT NULL,
    from_date_department_employee2 DATE,
    to_date_department_employee2 DATE,
    FOREIGN KEY (emp_no_department_employee2) REFERENCES employee(emp_no),
    FOREIGN KEY (dept_no_department_employee2) REFERENCES department(dept_no)
);

SELECT *
FROM department_employee2