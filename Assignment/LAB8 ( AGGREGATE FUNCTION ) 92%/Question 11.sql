SELECT      customerName, SUM(priceEach * quantityOrdered) `Expense`
FROM        customers c
JOIN        orders o
ON          (o.customerNumber = c.customerNumber)
JOIN        orderdetails d
ON          (d.orderNumber = o.orderNumber)
GROUP BY    customerName
HAVING      `Expense` > 15000;