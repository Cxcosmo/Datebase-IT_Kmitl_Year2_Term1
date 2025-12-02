SELECT department_id, department_name, street_address
FROM departments d
JOIN locations l
ON (d.location_id = l.location_id)
JOIN countries c
ON (l.country_id = c.country_id)
WHERE country_name LIKE 'U%';