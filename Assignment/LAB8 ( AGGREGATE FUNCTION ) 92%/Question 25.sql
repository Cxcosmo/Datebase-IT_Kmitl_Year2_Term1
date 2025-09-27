SELECT      city, COUNT(employeeNumber)
FROM        employees
JOIN        offices
USING       (officeCode)
GROUP BY    city
HAVING      COUNT(employeeNumber) > 2;