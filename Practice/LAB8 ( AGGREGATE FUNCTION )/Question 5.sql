SELECT city, COUNT(department_id) `number_of_dep`
FROM departments
LEFT OUTER JOIN locations
USING (location_id)
WHERE department_id IS NOT NULL
GROUP BY city
HAVING COUNT(department_id) > 1;