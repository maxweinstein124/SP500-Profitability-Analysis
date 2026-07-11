--Most Profitable Stocks
SELECT 
Name,
Sector,
CAST((Overall_Profit_2013_2018)*
100 AS INT64) AS 
Overall_Profit_Percentage
FROM `mystic-benefit-497822
t2.stock_data.stock_data_cleaned`
ORDER BY
Overall_Profit_2013_2018 DESC 
LIMIT 5

--Least Profitable Stocks
SELECT 
Name,
Sector,
CAST((Overall_Profit_2013_2018)*
100 AS INT64) AS 
Overall_Profit_Percentage
FROM `mystic-benefit-497822
t2.stock_data.stock_data_cleaned`
ORDER BY
Overall_Profit_2013_2018 ASC 
LIMIT 5




