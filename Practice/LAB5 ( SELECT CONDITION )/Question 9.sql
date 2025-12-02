SELECT CONCAT(first_name, " ",last_name) name, salary
FROM employees
WHERE first_name LIKE '_a___';