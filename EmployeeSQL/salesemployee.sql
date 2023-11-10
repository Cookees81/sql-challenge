SELECT de.emp_no,
e.last_name,
e.first_name
FROM dept_emp AS de
INNER JOIN departments AS d ON
de.dept_no=d.dept_no
INNER JOIN employees AS e ON
de.emp_no=e.emp_no
WHERE dept_name='Sales';