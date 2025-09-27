SELECT      e.firstName `firstName`, e.lastName `lastName`, COUNT(c.salesRepEmployeeNumber) `Number of customers`
FROM        customers c
JOIN        employees e
ON          (e.employeeNumber = c.salesRepEmployeeNumber)
JOIN        offices o
ON          (e.officeCode = o.officeCode)
WHERE       c.country != o.country
GROUP BY    e.firstName, e.lastName
HAVING      `Number of customers` > 1;