SELECT
    date_trunc('month', o.order_purchase_timestamp) AS month,
    SUM(oi.price) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;
