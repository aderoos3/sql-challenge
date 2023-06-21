-- Create tables and import data
-- Drop table if exists
DROP TABLE IF EXISTS departments;

-- Create new table
CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL Primary Key,
	dept_name VARCHAR(30) NOT NULL
	);
	
-- Verify successful data import
SELECT * FROM departments;

-- Drop if exists
DROP TABLE IF EXISTS dept_emp;

-- Create new table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL
);

-- Verify successful data import
SELECT * FROM dept_emp;

-- Drop if exists
DROP TABLE IF EXISTS dept_manager;

-- Create new table
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL
);

-- Verify successful data import
SELECT * FROM dept_manager;

-- Drop if exists
DROP TABLE IF EXISTS employees;

-- Create new table
CREATE TABLE employees (
	emp_no INT Primary Key NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date INT NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(5) NOT NULL,
	hire_date INT NOT NULL
);

-- Verify successful data import
SELECT * FROM employees;

-- Drop if exists
DROP TABLE IF EXISTS salaries;

-- Create new table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

-- Verify successful data import
SELECT * FROM salaries;

-- Drop if exists
DROP TABLE IF EXISTS titles;

-- Create new table
CREATE TABLE titles (
	title_id VARCHAR NOT NULL, 
	title VARCHAR Primary Key NOT NULL
);

-- Verify successful data import
SELECT * FROM titles;

--List employee number, last name, first name, sex, salary
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees 
Inner join salaries on
employees.emp_no=salaries.emp_no;

--List first name, last name and hire date for 1986
Select last_name, first_name, hire_date From employees
Where hire_date like '%1986';

--Manager of each department the department number, department name, employee number, last name, first name
Select dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name
From dept_manager
Inner Join departments on
dept_manager.dept_no=departments.dept_no
Inner Join employees on
dept_manager.emp_no=employees.emp_no

--Department number for each employee number, employee first name, last name, department name
Select departments.dept_name, departments.dept_no, employees.emp_no, employees.first_name, employees.last_name
From departments 
Inner Join dept_emp on
departments.dept_no=dept_emp.dept_no
Inner Join employees on
dept_emp.emp_no=employees.emp_no;

--First name, last name, sex of employees Hercules B
Select last_name, first_name, sex From employees
Where first_name='Hercules' AND left(last_name,1)='B';

--Each employee in Sales with first name, last name, employee number
Select employees.last_name, employees.first_name, employees.emp_no
From departments
Inner Join dept_emp on
departments.dept_no=dept_emp.dept_no
Inner Join employees on
dept_emp.emp_no=employees.emp_no
Where dept_name='Sales'

--Each employee in Sales and Development with first name, last name, employee number, department name
Select employees.last_name, employees.first_name, employees.emp_no, departments.dept_name
From departments
Inner Join dept_emp on
departments.dept_no=dept_emp.dept_no
Inner Join employees on
dept_emp.emp_no=employees.emp_no
Where dept_name='Sales' Or dept_name='Development'
 
--Frequency of of all employee last names
SELECT COUNT(last_name) as frequency, last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;