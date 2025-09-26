SELECT      MONTH(paymentDate) `Month`, SUM(amount) `Total amount`
FROM        payments
GROUP BY    `Month`
HAVING      `Total amount` > 50000;