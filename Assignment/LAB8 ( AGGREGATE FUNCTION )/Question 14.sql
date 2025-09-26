SELECT      customerName, SUM(quantityOrdered) `Quantity Ordered`
FROM        customers
JOIN        orders
USING       (customerNumber)
JOIN        orderdetails
USING       (orderNumber)
GROUP BY    customerName
ORDER BY    customerName ASC;