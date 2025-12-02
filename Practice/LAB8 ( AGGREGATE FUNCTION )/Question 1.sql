SELECT department_name
FROM employees e
RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id)
WHERE e.department_id IS NULL;