SELECT country_id, country_name
FROM countries
LEFT OUTER JOIN locations
USING (country_id)
LEFT OUTER JOIN departments
USING (location_id)
WHERE department_id IS NULL
ORDER BY country_name DESC;