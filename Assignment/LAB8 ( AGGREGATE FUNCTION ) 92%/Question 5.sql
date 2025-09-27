SELECT      productName, count(orderNumber), sum(quantityOrdered)
FROM        products
JOIN        orderdetails
USING       (productCode)
WHERE       productName LIKE 'America%'
OR          productVendor LIKE "%Diecast"
GROUP BY    productName
HAVING      sum(quantityOrdered) < 50;