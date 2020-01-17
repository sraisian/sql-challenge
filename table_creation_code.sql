
-- CREATE TABLE employees (
-- 	emp_no INT PRIMARY KEY NOT NULL,
-- 	birth_date DATE, 
-- 	first_name VARCHAR(25) NOT NULL, 
-- 	last_name VARCHAR(25) NOT NULL, 
--	gender VARCHAR(1),
-- 	hire_date DATE NOT NULL
-- );

-- CREATE TABLE salaries (
-- 	emp_no INT NOT NULL, 
-- 	salary INT NOT NULL,
-- 	from_date DATE NOT NULL,
-- 	to_date DATE,
-- 	PRIMARY KEY(emp_no),
-- 	FOREIGN KEY(emp_no) REFERENCES employees(emp_no));

-- CREATE TABLE titles (
-- 	emp_no INT NOT NULL, 
-- 	title VARCHAR(30) NOT NULL,
-- 	from_date DATE NOT NULL,
-- 	to_date DATE,
-- 	PRIMARY KEY(emp_no, from_date),
-- 	FOREIGN KEY(emp_no) REFERENCES employees(emp_no));

-- CREATE TABLE departments (
-- 	dept_no VARCHAR(5) PRIMARY KEY NOT NULL, 
-- 	dept_name VARCHAR(25)	
-- );

-- CREATE TABLE dept_emp (
-- 	emp_no INT NOT NULL, 
-- 	dept_no VARCHAR(5) NOT NULL,
-- 	from_date DATE NOT NULL,
-- 	to_date DATE,
-- 	PRIMARY KEY(emp_no, dept_no),
-- 	FOREIGN KEY(emp_no) REFERENCES employees(emp_no), 
-- 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

-- CREATE TABLE dept_managers (
-- 	dept_no VARCHAR(5) NOT NULL,
-- 	emp_no INT NOT NULL, 
-- 	from_date DATE NOT NULL,
-- 	to_date DATE,
-- 	PRIMARY KEY(dept_no, emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
-- 	FOREIGN KEY(emp_no) REFERENCES employees(emp_no));



