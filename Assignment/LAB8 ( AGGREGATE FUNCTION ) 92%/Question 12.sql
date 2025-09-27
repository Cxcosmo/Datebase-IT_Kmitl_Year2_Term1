SELECT      avg(creditLimit)
FROM        customers
WHERE       salesRepEmployeeNumber IS NOT NULL
GROUP BY    salesRepEmployeeNumber
HAVING      COUNT(customerNumber) > 1;