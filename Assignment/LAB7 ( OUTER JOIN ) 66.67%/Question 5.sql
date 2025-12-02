SELECT l.location_id, l.city
FROM locations l
LEFT OUTER JOIN departments d
ON (d.location_id = l.location_id)
WHERE d.department_id IS NULL
ORDER BY l.city ASC;