SELECT c.name, c.age
FROM customers c
LEFT OUTER JOIN menu m
ON (c.food = m.food)
WHERE m.day IS NULL;