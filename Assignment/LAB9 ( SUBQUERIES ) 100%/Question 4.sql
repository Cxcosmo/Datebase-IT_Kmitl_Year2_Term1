SELECT  *
FROM    employees
WHERE   salary > (SELECT MAX(salary)
                 FROM employees
                 WHERE job_id = 'IT_PROG')
AND     job_id != 'IT_PROG';