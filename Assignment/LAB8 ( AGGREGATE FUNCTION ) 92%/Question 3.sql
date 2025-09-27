SELECT          country, count(customerNumber), avg(creditLimit)
FROM            customers
LEFT OUTER JOIN orders
USING           (customerNumber)
WHERE           orderNumber IS NULL
GROUP BY        country
HAVING          AVG(creditLimit) > 0;