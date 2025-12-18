WITH orders_sum AS (
	SELECT o.order_id,
	  SUM(oi.price) AS order_total,
	  DATE_TRUNC('month', o.order_purchase_timestamp) as month
	FROM orders o
	JOIN order_items oi on o.order_id = oi.order_id
	GROUP BY o.order_id
	ORDER BY month)
SELECT ROUND(avg(order_total), 1) AS average_sum,
		month
FROM orders_sum
GROUP BY month;
