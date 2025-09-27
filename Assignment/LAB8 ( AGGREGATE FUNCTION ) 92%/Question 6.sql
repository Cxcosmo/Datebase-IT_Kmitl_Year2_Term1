SELECT      firstName, lastName, city
FROM        employees
JOIN        offices
USING       (officeCode)
WHERE city IN ( 
            SELECT city
            FROM offices
            JOIN employees
            USING (officeCode)
            GROUP BY city
            HAVING COUNT(employeeNumber) > 1)
ORDER BY city ASC;