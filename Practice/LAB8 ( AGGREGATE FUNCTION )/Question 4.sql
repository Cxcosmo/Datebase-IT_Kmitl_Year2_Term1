SELECT city, COUNT(department_id) `number_of_dep`
FROM locations
JOIN departments
USING (location_id)
GROUP BY city;