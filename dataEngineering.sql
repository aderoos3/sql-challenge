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
	title_id VARCHAR Primary Key NOT NULL, 
	title VARCHAR NOT NULL
);

-- Verify successful data import
SELECT * FROM titles;

