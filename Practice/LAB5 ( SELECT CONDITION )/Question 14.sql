INSERT INTO sales_reps
SELECT employee_id, last_name, salary, commission_pct
FROM employees
WHERE salary > 5000;