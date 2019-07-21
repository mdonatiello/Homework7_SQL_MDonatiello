CREATE TABLE salary5 (
    emp_no_salary5 INTEGER NOT NULL,
    salary5 INTEGER,
    from_date_salary5 DATE,
    to_date_salary5 DATE,
    FOREIGN KEY (emp_no_salary5) REFERENCES employee(emp_no)
 );

SELECT *
FROM salary5