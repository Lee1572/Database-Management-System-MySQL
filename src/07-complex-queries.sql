DELIMITER //
CREATE PROCEDURE my_guitar_shop.insert_category(IN category_name_param VARCHAR(50))
BEGIN
    INSERT INTO my_guitar_shop.categories (category_name) VALUES (category_name_param);
END //
DELIMITER ;

-- Successful call
CALL my_guitar_shop.insert_category('New Category');

-- Failing call (assuming 'Guitars' already exists)
CALL my_guitar_shop.insert_category('Guitars');