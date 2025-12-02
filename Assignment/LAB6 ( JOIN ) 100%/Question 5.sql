SELECT DISTINCT m.first_name `MGR First Name`, m.last_name `MGR Last Name`, m.manager_id `MGR`
FROM employees e
JOIN employees m
ON (e.manager_id = m.employee_id)
ORDER BY m.manager_id ASC;