SELECT e.emp_no,
e.last_name,
e.first_name,
e.sex,
s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no=s.emp_no;
