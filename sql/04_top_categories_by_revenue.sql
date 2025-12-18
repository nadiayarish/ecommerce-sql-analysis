SELECT
    p.product_category_name AS product_category,
    SUM(oi.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY product_category
ORDER BY total_revenue DESC;
