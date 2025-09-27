SELECT  country, productCode, quantityOrdered, buyPrice,
        quantityOrdered * buyPrice `Net Sales`
FROM    orderdetails
JOIN    products
USING   (productCode)
JOIN    orders
USING   (orderNumber)
JOIN    customers
USING   (customerNumber);