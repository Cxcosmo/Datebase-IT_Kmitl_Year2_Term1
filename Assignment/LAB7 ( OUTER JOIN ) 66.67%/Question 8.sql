SELECT e.firstName, e.lastName
FROM employees e
LEFT OUTER JOIN customers c
ON (e.firstName	= c.contactFirstName)
WHERE c.contactFirstName IS NULL;