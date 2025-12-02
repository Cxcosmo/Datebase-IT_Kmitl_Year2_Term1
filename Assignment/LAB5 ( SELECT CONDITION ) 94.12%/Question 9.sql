SELECT CONCAT(first_name, " ", last_name) `full name`, phone_number `phone`
FROM employees
WHERE commission_pct IS NOT NULL
AND commission_pct > 0;