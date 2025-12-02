SELECT customerNumber, customerName
FROM payments
RIGHT OUTER JOIN customers
USING (customerNumber)
WHERE checkNumber IS NULL;