SELECT      productCode, productName,
            SUM(priceEach * quantityOrdered) `Sum Net Sales`,
            AVG(priceEach * quantityOrdered) `Average Net Sales`
FROM        products
JOIN        orderdetails
USING       (productCode)
GROUP BY    productCode, productName
HAVING      `Average Net Sales` > (SELECT AVG(priceEach * quantityOrdered)
                                   FROM products
                                   JOIN orderdetails
                                   USING (productCode));