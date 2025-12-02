SELECT m.food, m.day
FROM menu m
LEFT OUTER JOIN customers c
ON (c.food = m.food)
WHERE c.name IS NULL;