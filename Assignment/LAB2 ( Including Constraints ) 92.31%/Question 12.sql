SELECT 
	TABLE_NAME,
	COLUMN_NAME,
	CONSTRAINT_NAME
FROM
	information_schema.KEY_COLUMN_USAGE
WHERE
	REFERENCED_TABLE_NAME = 'countries';

ALTER TABLE locations
DROP FOREIGN KEY locations_countries_country_id;

DROP TABLE countries;