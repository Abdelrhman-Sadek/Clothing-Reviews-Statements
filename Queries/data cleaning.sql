ALTER TABLE [Womens Clothing]
DROP COLUMN [Clothing ID];

DELETE FROM [Womens Clothing]
WHERE [Review Text] IS NULL OR [Division Name] IS NULL;

ALTER TABLE [Womens Clothing]
ADD review VARCHAR(1000);

UPDATE [Womens Clothing]
SET review = CONCAT([Title], '-') + ' ' + [Review Text];

Select review 
from[Womens Clothing]

ALTER TABLE [Womens Clothing]
DROP COLUMN [Title]

ALTER TABLE [Womens Clothing]
DROP COLUMN [Review Text]

ALTER TABLE [Womens Clothing]
DROP COLUMN [F1]

SELECT * 
FROM [Womens Clothing]
