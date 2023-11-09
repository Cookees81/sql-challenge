CREATE TABLE titles (
	title_id VARCHAR(50) PRIMARY KEY,
	title VARCHAR(50)
);

CREATE TABLE employees (
	emp_no VARCHAR(50) PRIMARY KEY,
	emp_title_id VARCHAR(50),
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(50),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(50) PRIMARY KEY,
	dept_name VARCHAR(50)
);

CREATE TABLE salaries (
	emp_no VARCHAR(50),
	salary INTEGER,
	PRIMARY KEY (emp_no, salary)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(50),
	emp_no VARCHAR(50),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(50),
	dept_no VARCHAR(50),
	id SERIAL PRIMARY KEY
)