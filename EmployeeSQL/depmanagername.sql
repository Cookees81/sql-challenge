SELECT dm.dept_no,
d.dept_name,
dm.emp_no,
e.last_name,
e.first_name
FROM dept_manager AS dm
INNER JOIN departments AS d ON
dm.dept_no=d.dept_no
INNER JOIN employees AS e ON
dm.emp_no=e.emp_no;