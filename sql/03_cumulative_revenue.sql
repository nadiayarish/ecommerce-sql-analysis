WITH revenue_by_month AS (
	SELECT
		SUM(oi.price) AS monthly_revenue,
		DATE_TRUNC('month',o.order_purchase_timestamp) AS month
	FROM orders o
	JOIN order_items oi ON o.order_id = oi.order_id
	GROUP BY month
)
SELECT 
  *,
	SUM(monthly_revenue) OVER(order BY month) AS rising_revenue
FROM revenue_by_month;
