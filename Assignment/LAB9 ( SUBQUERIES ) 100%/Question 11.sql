SELECT      department_id, COUNT(employee_id) `number of employees`
FROM        departments
JOIN        employees
USING       (department_id)
GROUP BY    department_id
HAVING      `number of employees` > (SELECT COUNT(employee_id)
                                     FROM departments
                                     JOIN employees
                                     USING (department_id)
                                     WHERE department_id = 60);