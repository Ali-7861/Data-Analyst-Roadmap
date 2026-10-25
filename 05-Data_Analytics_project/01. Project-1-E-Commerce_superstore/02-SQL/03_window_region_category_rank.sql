SELECT 
    Region,
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS net_profit,
    DENSE_RANK() OVER (
        PARTITION BY Region 
        ORDER BY SUM(Profit) ASC
    ) AS profit_loss_rank
FROM `clean_organized_superstore`
GROUP BY Region, `Sub-Category`
ORDER BY Region, profit_loss_rank;