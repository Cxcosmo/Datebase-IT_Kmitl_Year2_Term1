SELECT employee_id, email, phone_number
FROM employees
WHERE employee_id BETWEEN 110 AND 120;aSELECT first_name, last_name, salary, department_id
FROM employees
WHERE salary IN (SELECT MAX(salary)
						  FROM employees
						  GROUP BY department_id);