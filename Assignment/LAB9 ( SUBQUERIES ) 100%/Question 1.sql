SELECT  first_name, last_name, hire_date
FROM    employees
WHERE   hire_date = (SELECT hire_date
                     FROM employees
                     WHERE last_name = 'Baer')
AND     last_name != 'Baer';