-- Check for NULL values in key columns (orders)

SELECT *
FROM orders
WHERE order_id IS NULL
   OR customer_id IS NULL
   OR order_status IS NULL
   OR order_purchase_timestamp IS NULL;

-- Check for NULL values in key columns (order_items)

SELECT *
FROM order_items
WHERE order_id IS NULL
   OR product_id IS NULL
   OR seller_id IS NULL
   OR price IS NULL
   OR order_item_id IS NULL;

-- Duplicate check: order_items (same order + product + seller)

SELECT
    order_id,
    product_id,
    seller_id,
    COUNT(*) AS duplicate_count
FROM order_items
GROUP BY order_id, product_id, seller_id
HAVING COUNT(*) > 1;
