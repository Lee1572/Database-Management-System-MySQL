-- Business reporting and aggregation
USE my_guitar_shop;

-- Product counts and highest listed price by category.
SELECT c.category_name, COUNT(p.product_id) AS product_count,
       MAX(p.list_price) AS highest_list_price
FROM categories AS c
LEFT JOIN products AS p ON p.category_id = c.category_id
GROUP BY c.category_id, c.category_name
ORDER BY product_count DESC;

-- Revenue represented by order line items, grouped by order.
SELECT order_id,
       SUM((item_price - discount_amount) * quantity) AS merchandise_total
FROM order_items
GROUP BY order_id
ORDER BY merchandise_total DESC;

-- Customer order activity. Customers with no orders remain visible.
SELECT c.customer_id, c.first_name, c.last_name,
       COUNT(o.order_id) AS order_count
FROM customers AS c
LEFT JOIN orders AS o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY order_count DESC, c.last_name;
