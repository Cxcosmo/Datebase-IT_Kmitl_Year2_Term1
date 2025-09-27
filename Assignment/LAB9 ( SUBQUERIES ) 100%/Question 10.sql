SELECT  employee_id, first_name, last_name, job_id, salary
FROM    employees
WHERE   salary < ANY(SELECT salary
                     FROM employees
                     WHERE job_id = 'FI_ACCOUNT')
AND     job_id != 'FI_ACCOUNT';