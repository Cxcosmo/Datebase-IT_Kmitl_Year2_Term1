SELECT      e.employeeNumber `Employee Number`,
            CONCAT(e.firstName, ' ', e.lastName) `Employee Name`,
            o.country,
            e.reportsTo,
            CONCAT(r.firstName, ' ', r.lastName) `Report Name`,
            COUNT(customerNumber) `Total customer`
FROM        employees e
LEFT OUTER JOIN employees r
ON          (e.reportsTo = r.employeeNumber)
LEFT OUTER JOIN customers c
ON          (e.employeeNumber = c.salesRepEmployeeNumber)
LEFT OUTER JOIN offices o
ON          (e.officeCode = o.officeCode)
GROUP BY    `Employee Number`;