SELECT name, age, m.food, day
FROM customers c
RIGHT OUTER JOIN menu m
ON (c.food = m.food)
UNION
SELECT name, age, c.food, day
FROM customers c
LEFT OUTER JOIN menu m
ON (c.food = m.food);