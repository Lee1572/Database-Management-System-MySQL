-- Return a simple product-count status message
USE my_guitar_shop;

DROP PROCEDURE IF EXISTS get_product_count_message;
DELIMITER //
CREATE PROCEDURE get_product_count_message()
BEGIN
    DECLARE v_product_count INT DEFAULT 0;

    SELECT COUNT(*) INTO v_product_count
    FROM products;

    IF v_product_count >= 7 THEN
        SELECT v_product_count AS product_count,
               'The number of products is greater than or equal to 7' AS message;
    ELSE
        SELECT v_product_count AS product_count,
               'The number of products is less than 7' AS message;
    END IF;
END //
DELIMITER ;

-- Example: CALL get_product_count_message();
