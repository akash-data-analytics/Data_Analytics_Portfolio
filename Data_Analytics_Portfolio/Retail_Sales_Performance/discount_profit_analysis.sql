SELECT 
    discount,
    SUM(profit) AS total_profit
FROM orders
GROUP BY discount
ORDER BY discount;