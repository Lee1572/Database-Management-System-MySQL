DELIMITER //
CREATE PROCEDURE my_guitar_shop.test()
BEGIN
    DECLARE product_count INT;
    SELECT COUNT(*) INTO product_count FROM my_guitar_shop.products;
    
    IF product_count >= 7 THEN
        SELECT 'The number of products is greater than or equal to 7' AS message;
    ELSE
        SELECT 'The number of products is less than 7' AS message;
    END IF;
END //
DELIMITER ;

CALL my_guitar_shop.test();