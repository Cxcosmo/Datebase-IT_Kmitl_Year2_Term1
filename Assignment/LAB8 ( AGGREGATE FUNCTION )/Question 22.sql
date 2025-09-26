SELECT      employeeNumber `Employee Number`, firstName, lastName, sum(creditLimit)
FROM        customers c
JOIN        employees e
ON          (c.salesRepEmployeeNumber = e.employeeNumber)
GROUP BY    `Employee Number`;