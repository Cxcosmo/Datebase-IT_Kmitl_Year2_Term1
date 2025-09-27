--- JOIN ---
SELECT  department_id, first_name, last_name, job_id
FROM    employees
JOIN    departments
USING   (department_id)
WHERE   department_name = 'Executive';

--- Subquery ---
SELECT  department_id, first_name, last_name, job_id
FROM    employees
WHERE   department_id IN (SELECT department_id
                         FROM departments
                         WHERE department_name = 'Executive');