SELECT location_id, street_address, city, state_province
FROM locations
JOIN countries
USING (country_id)
JOIN regions
USING (region_id)
WHERE region_name = 'Europe';