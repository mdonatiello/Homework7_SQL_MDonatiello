-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employee.emp_no, employee.last_name, employee.first_name, employee.gender,
salary5.salary5
FROM salary5
INNER JOIN employee ON
employee.emp_no=salary5.emp_no_salary5;

-- 2. List employees who were hired in 1986.
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.hire_date
FROM employee
WHERE employee.hire_date >= '1986-01-01'::varchar
AND employee.hire_date <= '1986-12-31'::varchar;

-- 3. List the manager of each department with the following information: department number, department name, the managers employee number, last name, first name, and start and end employment dates.
SELECT department.dept_no, department.dept_name, employee.emp_no, employee.last_name, employee.first_name,
department_manager3.from_date_department_manager3, department_manager3.to_date_department_manager3
FROM department
INNER JOIN department_manager3 ON
department_manager3.dept_no_department_manager3 = department.dept_no
JOIN employee ON
employee.emp_no = department_manager3.emp_no_department_manager3;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employee.emp_no, employee.last_name, employee.first_name, department_employee2.dept_no_department_employee2, 
department.dept_name
FROM employee
INNER JOIN department_employee2 ON
department_employee2.emp_no_department_employee2 = employee.emp_no
JOIN department ON
department.dept_no = department_employee2.dept_no_department_employee2;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employee.emp_no, employee.last_name, employee.first_name, department_employee2.dept_no_department_employee2, 
department.dept_name
FROM employee
INNER JOIN department_employee2 ON
department_employee2.emp_no_department_employee2 = employee.emp_no
JOIN department ON
department.dept_no = department_employee2.dept_no_department_employee2
WHERE department.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name,
-- and department name.
SELECT employee.emp_no, employee.last_name, employee.first_name, department_employee2.dept_no_department_employee2, 
department.dept_name
FROM employee
INNER JOIN department_employee2 ON
department_employee2.emp_no_department_employee2 = employee.emp_no
JOIN department ON
department.dept_no = department_employee2.dept_no_department_employee2
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT employee.last_name, COUNT(employee.last_name) as "last name count"
FROM employee
group by employee.last_name
order by "last name count" DESC;




