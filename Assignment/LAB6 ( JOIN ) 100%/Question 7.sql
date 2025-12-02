SELECT e.first_name, e.last_name, e.hire_date,  e.salary
FROM employees e
JOIN employees Ernst
ON (Ernst.last_name = 'Ernst')
WHERE e.hire_date > Ernst.hire_date;