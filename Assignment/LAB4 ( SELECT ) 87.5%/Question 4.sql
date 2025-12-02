SELECT concat(first_name, ' ', last_name) `Employee name`, salary * commission_pct `Net Commission`
FROM	employees
ORDER BY `Net Commission` DESC;