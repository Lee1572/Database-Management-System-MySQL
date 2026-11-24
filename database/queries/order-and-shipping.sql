-- Order history and shipment status
USE my_guitar_shop;

-- Combine shipped and pending orders into one result set.
SELECT
    CASE WHEN ship_date IS NULL THEN 'NOT SHIPPED' ELSE 'SHIPPED' END AS ship_status,
    order_id,
    order_date,
    ship_date
FROM orders
ORDER BY order_date;

-- Show each order with the customer who placed it.
SELECT o.order_id, o.order_date, c.first_name, c.last_name, o.ship_date
FROM orders AS o
JOIN customers AS c ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC;

-- Show line items, including the extended line total after discount.
SELECT oi.order_id, p.product_name, oi.quantity, oi.item_price,
       oi.discount_amount,
       (oi.item_price - oi.discount_amount) * oi.quantity AS line_total
FROM order_items AS oi
JOIN products AS p ON p.product_id = oi.product_id
ORDER BY oi.order_id, p.product_name;
