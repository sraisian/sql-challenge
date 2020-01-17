-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
SELECT E.emp_no, E.last_name, E.first_name, E.gender, S.salary
FROM employees AS E
	INNER JOIN salaries AS S
		ON E.emp_no = S.emp_no;

-- List employees who were hired in 1986.
SELECT emp_no as "Employee Number", last_name as "Last Name", 
first_name as "First Name", hire_date as "Date Hired"
FROM employees
WHERE hire_date >= '1986-01-01';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, 
-- first name, and start and end employment dates.
SELECT D.dept_no as "Dept Number", D.dept_name as "Dept Name", MAN.emp_no as "Employee Number", 
E.last_name as "Last Name", E.first_name as "First Name", MAN.from_date as "Manager Start Date", 
MAN.to_date as "Manager End Date"
FROM departments AS D
	INNER JOIN dept_managers AS MAN
		ON D.dept_no = MAN.dept_no
	INNER JOIN employees AS E 
		ON MAN.emp_no = E.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT DE.emp_no as "Employee Number", E.last_name as "Last Name", 
E.first_name as "First Name", D.dept_name as "Department Name" 
FROM employees as E 
	FULL JOIN dept_emp as DE
		ON E.emp_no = DE.emp_no
	FULL JOIN departments AS D
		ON DE.dept_no = D.dept_no;

-- List all employees whose first name is "Hercules" and 
-- last names begin with "B."
SELECT emp_no as "Employee Number", first_name as "First Name", 
last_name as "Last Name"
FROM employees
WHERE last_name LIKE 'B%' AND first_name = 'Hercules';

-- List all employees in the Sales department, including 
-- their employee number, last name, first name, and department name.
SELECT E.emp_no as "Employee Number", E.last_name as "Last Name", 
E.first_name as "First Name", D.dept_name as "Department Name" 
FROM employees as E 
	LEFT JOIN dept_emp as DE
		ON E.emp_no = DE.emp_no
	LEFT JOIN departments AS D
		ON DE.dept_no = D.dept_no
	WHERE D.dept_name = 'Sales'; 

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT E.emp_no as "Employee Number", E.last_name as "Last Name", 
	E.first_name as "First Name", D.dept_name as "Department Name" 
FROM employees as E 
	FULL JOIN dept_emp as DE
		ON E.emp_no = DE.emp_no
	LEFT JOIN departments AS D
		ON DE.dept_no = D.dept_no
	WHERE D.dept_name = 'Sales' OR D.dept_name = 'Development'; 

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) as namecount
FROM employees
GROUP BY last_name
ORDER BY namecount DESC;
