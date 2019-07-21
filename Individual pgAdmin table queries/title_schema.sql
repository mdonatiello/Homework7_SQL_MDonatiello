CREATE TABLE title2 (
    emp_no_title2 INTEGER NOT NULL,
    title2 VARCHAR(50),
    from_date_title2 DATE,
    to_date_title2 DATE,
    FOREIGN KEY (emp_no_title2) REFERENCES employee(emp_no)
 );

SELECT *
FROM title2