-- Basic catalog and customer queries
USE my_guitar_shop;

-- List products with their categories.
SELECT p.product_id, p.product_name, c.category_name, p.list_price
FROM products AS p
JOIN categories AS c ON c.category_id = p.category_id
ORDER BY c.category_name, p.product_name;

-- Find products within a price range.
SELECT product_name, list_price
FROM products
WHERE list_price BETWEEN 300.00 AND 800.00
ORDER BY list_price;

-- List customers alphabetically.
SELECT customer_id, first_name, last_name, email_address
FROM customers
ORDER BY last_name, first_name;
