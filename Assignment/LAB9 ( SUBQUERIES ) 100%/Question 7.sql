SELECT      first_name, last_name, department_id
FROM        employees
WHERE       salary = (SELECT MAX(salary)
                      FROM employees
                      WHERE department_id = 50)
AND         department_id != 50
ORDER BY    first_name ASC;