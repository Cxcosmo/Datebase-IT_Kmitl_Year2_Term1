SELECT      orderNumber, COUNT(DISTINCT productCode)
FROM        orderdetails
JOIN        products
USING       (productCode)
WHERE       productLine = 'Planes'
GROUP BY    orderNumber
HAVING      MIN(quantityOrdered) > 28;