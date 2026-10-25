SELECT 
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `clean_organized_superstore`
WHERE Region = 'East'
GROUP BY `Sub-Category`
HAVING total_profit < 0
ORDER BY total_profit ASC;