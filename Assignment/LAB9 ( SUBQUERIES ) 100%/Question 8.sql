SELECT  employee_id, first_name, last_name, manager_id
FROM    employees
WHERE   employee_id NOT IN (SELECT manager_id
                            FROM employees
                            WHERE manager_id IS NOT NULL);