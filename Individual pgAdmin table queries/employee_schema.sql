CREATE TABLE employee (
    emp_no INT PRIMARY KEY NOT NULL,
    birth_date VARCHAR(15),
    first_name VARCHAR(75),
    last_name VARCHAR(75),
    gender CHAR(1),
    hire_date VARCHAR(15)
 );

SELECT *
FROM employee