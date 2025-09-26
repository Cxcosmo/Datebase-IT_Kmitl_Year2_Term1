SELECT      productName, min(priceEach), avg(priceEach), max(priceEach)
FROM        orderdetails
JOIN        products
USING       (productCode)
GROUP BY    productName
HAVING      max(priceEach) - min(priceEach) < 50;