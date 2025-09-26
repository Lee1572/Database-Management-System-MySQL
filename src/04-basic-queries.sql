DROP DATABASE IF EXISTS my_web_db;
CREATE DATABASE my_web_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE my_web_db;
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email_address VARCHAR(100) NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    INDEX idx_email (email_address)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE downloads (
    download_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    download_date DATETIME NOT NULL,
    filename VARCHAR(50) NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    INDEX idx_user_product (user_id, product_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;