SELECT      country, COUNT(officeCode) `number of offices`
FROM        offices
GROUP BY    country
ORDER BY    `number of offices` DESC;