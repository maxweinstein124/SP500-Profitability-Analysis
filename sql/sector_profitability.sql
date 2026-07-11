--Most Profitable Sector
SELECT 
Sector,
(100 * AVG(Overall_Profit_2013_2018)) AS 
Overall_Profit_Percentage 
FROM `mystic-benefit-497822 
t2.stock_data.stock_data_cleaned`
GROUP BY 
Sector
ORDER BY 
Overall_Profit_Percentage DESC


--Least Profitable Sector
SELECT 
Sector,
(100 * AVG(Overall_Profit_2013_2018)) AS 
Overall_Profit_Percentage 
FROM `mystic-benefit-497822 
t2.stock_data.stock_data_cleaned`
GROUP BY 
Sector
ORDER BY 
Overall_Profit_Percentage ASC
