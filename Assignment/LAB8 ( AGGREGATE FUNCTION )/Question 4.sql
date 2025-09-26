SELECT      customerName, productCode, SUM(quantityOrdered) `Quantity`
FROM        customers
JOIN        orders
USING       (customerNumber)
JOIN        orderdetails
USING       (orderNumber)
GROUP BY    customerName, productCode
ORDER BY    `Quantity` DESC;