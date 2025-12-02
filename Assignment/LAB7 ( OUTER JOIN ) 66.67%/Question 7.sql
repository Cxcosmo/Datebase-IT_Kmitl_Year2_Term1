SELECT country_id, country_name, region_name
FROM countries
JOIN regions
USING (region_id)
LEFT OUTER JOIN locations
USING (country_id)
WHERE location_id IS NULL
ORDER BY country_id ASC;