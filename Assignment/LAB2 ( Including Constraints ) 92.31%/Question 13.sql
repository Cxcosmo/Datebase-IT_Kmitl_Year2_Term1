SELECT CONSTRAINT_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'title_copy';

ALTER TABLE title_copy
DROP FOREIGN KEY title_copy_ibfk_1,
DROP title_id;