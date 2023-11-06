CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(10) PRIMARY KEY,
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no VARCHAR(10),
	salary INTEGER PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

CREATE TABLE employees (
	emp_no VARCHAR(10),
	emp_title_id VARCHAR(20) PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(10),
	hire_date DATE,
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR(20),
	title VARCHAR(30) PRIMARY KEY,
	FOREIGN KEY (title_id) REFERENCES employees(emp_title_id)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10),
	emp_no VARCHAR(10),
	id SERIAL PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);