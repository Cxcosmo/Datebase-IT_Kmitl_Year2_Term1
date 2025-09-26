SELECT      country, jobTitle, COUNT(employeeNumber) `Number of employees`
FROM        employees
JOIN        offices
USING       (officeCode)
GROUP BY    country, jobTitle
HAVING      `Number of employees` = 1
AND         jobTitle LIKE '%(EMEA)';