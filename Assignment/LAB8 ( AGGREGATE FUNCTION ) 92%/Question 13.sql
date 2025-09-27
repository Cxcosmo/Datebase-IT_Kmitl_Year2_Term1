SELECT      customerNumber, sum(amount)
FROM        customers
JOIN        payments
USING       (customerNumber)
WHERE       checkNumber LIKE 'N%'
AND         paymentDate > '2004-1-1'
GROUP BY    customerNumber
HAVING      sum(amount) >= 35000;