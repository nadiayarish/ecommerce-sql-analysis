WITH revenue_by_category AS ( 
	SELECT 
		p.product_category_name AS product_category, 
		DATE_TRUNC('month', o.order_purchase_timestamp) AS month, 
		SUM(oi.price) AS total_revenue 
	FROM order_items oi 
	JOIN products p ON oi.product_id = p.product_id 
	JOIN orders o ON oi.order_id = o.order_id 
	GROUP BY product_category, month)
SELECT *
FROM(
	SELECT *,
	DENSE_RANK() OVER (PARTITION BY month ORDER BY total_revenue DESC) AS rank
	FROM revenue_by_category) AS rank_table
WHERE rank <= 3;
