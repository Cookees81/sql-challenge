SELECT COUNT (last_name) AS "name_count",
last_name
FROM employees
GROUP BY last_name
ORDER BY "name_count" DESC;