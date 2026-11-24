-- Reusable category operations
USE my_guitar_shop;

DROP PROCEDURE IF EXISTS add_category;
DELIMITER //
CREATE PROCEDURE add_category(IN p_category_name VARCHAR(255))
BEGIN
    IF p_category_name IS NULL OR TRIM(p_category_name) = '' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Category name cannot be empty.';
    ELSE
        INSERT INTO categories (category_name)
        VALUES (TRIM(p_category_name));
    END IF;
END //
DELIMITER ;

-- Example: CALL add_category('Accessories');
