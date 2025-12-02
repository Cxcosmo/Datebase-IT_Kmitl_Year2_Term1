SELECT tradename, genericmark
FROM medicine
WHERE tradename LIKE '%2.5#%' ESCAPE '#';