# `Description`
First started by exploring and cleaning the data from Nulls using SQL by deleting the null columns in the `Review Text` and `Division Name` and then merging the statement title with `Review Text` into the `Review` column

```sql
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

```

then upload the data to Power bi and using Dax and Power query:
* Calculated the most frequent `Rate` and `Age` and their frequency
* split the reviews column into `positive reviews` and `negative reviews` based on `Recommendations` *Recommended --> Positive / Not Recommended --> Negative*

Then made the dashboard to gain insights into `sales`, `reviews`, `categories`, etc

## `Dashboard`
<p align = 'center'>
 <img src='https://github.com/Abdelrhman-Sadek/Clothing-Reviews-Statements/blob/main/Dashboard/Dashboard.png'>
</p>
