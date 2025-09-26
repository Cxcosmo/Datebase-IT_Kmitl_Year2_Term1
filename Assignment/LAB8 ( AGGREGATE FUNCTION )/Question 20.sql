SELECT  CONCAT('In 2004, Average payment is ', AVG(amount)) `Average payment description`
FROM    payments
WHERE   paymentDate LIKE '2004%';