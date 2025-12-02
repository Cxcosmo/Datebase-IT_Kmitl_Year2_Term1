SELECT e.first_name, e.last_name, e.employee_id Emp,
			m.first_name `MGR First Name`, m.last_name `MGR Last Name`, m.employee_id Mgr
FROM employees e
JOIN employees m
ON (e.manager_id = m.employee_id);