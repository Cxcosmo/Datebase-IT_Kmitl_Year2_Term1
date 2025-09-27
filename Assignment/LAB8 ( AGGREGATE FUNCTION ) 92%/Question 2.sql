SELECT      productLine `Product line`, SUM(quantityInStock) + SUM(quantityOrdered) `Quantity`
FROM        products
RIGHT OUTER JOIN (
            SELECT productCode, SUM(quantityOrdered) `quantityOrdered`
            FROM orderdetails
            GROUP BY productCode
            HAVING SUM(quantityOrdered) > 50) `orderdetails`
USING       (productCode)
GROUP BY    productLine;