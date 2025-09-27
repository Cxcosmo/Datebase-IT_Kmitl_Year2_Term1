SELECT      first_name, last_name, salary, hire_date, department_id
FROM        employees
WHERE       hire_date > (SELECT MAX(hire_date)
                         FROM employees
                         WHERE department_id = 30)
AND         department_id != 30
ORDER BY    hire_date ASC;