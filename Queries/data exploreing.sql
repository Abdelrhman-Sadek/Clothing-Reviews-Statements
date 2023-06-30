select *
from [Womens Clothing]


-- Null Count in the important columns

SELECT
  SUM(CASE WHEN Title IS NULL THEN 1 ELSE 0 END) AS [Title Null_Count],
  SUM(CASE WHEN Rating IS NULL THEN 1 ELSE 0 END) AS [Rating Null Count],
  SUM(CASE WHEN [Review Text] IS NULL THEN 1 ELSE 0 END) AS [Review Null Count],
  SUM(CASE WHEN [Recommended IND] IS NULL THEN 1 ELSE 0 END) AS [Recommended IND Null Count],
  SUM(CASE WHEN [Division Name] IS NULL THEN 1 ELSE 0 END) AS [Division Name Null Count],
  SUM(CASE WHEN [Positive Feedback Count] IS NULL THEN 1 ELSE 0 END) AS [Positive Feedback Null Count]

FROM [Womens Clothing]