SELECT ROUND(AVG(order_sum), 2)
FROM (
	SELECT
	SUM(oi.price) AS order_sum,
	o.order_id
	FROM orders o
	JOIN order_items oi ON o.order_id = oi.order_id
	GROUP BY o.order_id
)
