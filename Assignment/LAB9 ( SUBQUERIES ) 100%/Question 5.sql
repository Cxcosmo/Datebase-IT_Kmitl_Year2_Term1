--- JOIN ---
SELECT  employee_id, first_name, last_name, department_id, city
FROM    employees
JOIN    departments
USING   (department_id)
JOIN    locations
USING   (location_id)
WHERE   city LIKE 'T%';

--- Subquery ---
SELECT  employee_id, first_name, last_name, department_id
FROM    employees
WHERE   department_id IN (SELECT department_id
                          FROM departments
                          WHERE location_id IN (SELECT location_id
                                                FROM locations
                                                WHERE city LIKE 'T%'));