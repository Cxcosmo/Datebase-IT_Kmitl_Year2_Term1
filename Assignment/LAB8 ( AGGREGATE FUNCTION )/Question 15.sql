SELECT      orderNumber, sum(quantityOrdered)
FROM        orderdetails
JOIN        orders
USING       (orderNumber)
WHERE       status LIKE 'Ship%'
GROUP BY    orderNumber
HAVING      MIN(quantityOrdered) >= 24;