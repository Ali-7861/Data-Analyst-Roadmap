SELECT 
    region,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS net_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percentage
FROM `01 cleaned_data_ecommerce_superstore`
GROUP BY region
ORDER BY profit_margin_percentage DESC;