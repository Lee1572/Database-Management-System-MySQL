-- Additional relationship constraints and indexes
USE my_guitar_shop;

ALTER TABLE customers
  ADD CONSTRAINT customers_fk_shipping_address
    FOREIGN KEY (shipping_address_id) REFERENCES addresses (address_id),
  ADD CONSTRAINT customers_fk_billing_address
    FOREIGN KEY (billing_address_id) REFERENCES addresses (address_id);

ALTER TABLE orders
  ADD CONSTRAINT orders_fk_shipping_address
    FOREIGN KEY (ship_address_id) REFERENCES addresses (address_id),
  ADD CONSTRAINT orders_fk_billing_address
    FOREIGN KEY (billing_address_id) REFERENCES addresses (address_id);

CREATE INDEX idx_products_category_id ON products (category_id);
CREATE INDEX idx_addresses_customer_id ON addresses (customer_id);
CREATE INDEX idx_orders_customer_date ON orders (customer_id, order_date);
CREATE INDEX idx_order_items_product_id ON order_items (product_id);
