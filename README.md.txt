# Guitar Shop Database Management System (MySQL)

## 📋 Project Overview
A comprehensive relational database management system for a guitar shop, built with MySQL. This project demonstrates full-stack database development including schema design, data population, complex queries, and stored procedures. The system manages products, customers, orders, inventory, and administrative functions for a complete e-commerce guitar shop.

## ✨ Features
- **Complete E-commerce Database Schema** with 8 normalized tables
- **Advanced SQL Queries** including UNION operations, JOINs, and aggregations
- **Stored Procedures** for business logic and data validation
- **User Management System** with secure authentication
- **Order Processing System** with shipping and billing addresses
- **Product Catalog Management** with categories and inventory
- **Data Analysis Queries** for business intelligence

## 🛠️ Technologies Used
- **Database:** MySQL 8.0+
- **Tools:** MySQL Workbench
- **Concepts:** Database Normalization, ER Modeling, Stored Procedures, Complex Queries

## 📁 Project Structure

Database-Management-System-MySQL/
├── src/
│ ├── 00-full-database-setup.sql # Master setup script
│ ├── 01-create-database.sql # Database creation and UNION queries
│ ├── 02-create-tables.sql # Table structures and INSERT operations
│ ├── 03-insert-sample-data.sql # Sample data and aggregation queries
│ ├── 04-basic-queries.sql # Database creation and table definitions
│ ├── 05-join-queries.sql # Advanced database schema
│ ├── 06-aggregation-queries.sql # Stored procedures with conditional logic
│ ├── 07-complex-queries.sql # Advanced stored procedures
│ └── create_my_guitar_shop.sql # Complete guitar shop database
├── docs/
│ └── ER-Diagram.png # Entity-Relationship Diagram
└── README.md # This file


## 🚀 Quick Start

### Prerequisites
- MySQL Server 8.0 or higher
- MySQL Workbench (recommended)

### Installation & Setup
1. **Run the complete setup:**
   ```sql
   SOURCE create_my_guitar_shop.sql;

### Or run individual components:
SOURCE 00-full-database-setup.sql;

### Test the database:
USE my_guitar_shop;
SELECT * FROM products LIMIT 5;

📊 Database Schema
Core Tables
categories - Product categories (Guitars, Basses, Drums, Keyboards)

products - Product catalog with descriptions, prices, and inventory

customers - Customer information and authentication

addresses - Shipping and billing addresses

orders - Order management with shipping details

order_items - Individual items within orders

administrators - Admin user management

downloads - Digital product management (my_web_db)

Key Relationships
Products → Categories (Many-to-One)

Orders → Customers (Many-to-One)

Order Items → Products & Orders (Junction table)

Addresses → Customers (One-to-Many)

💡 Sample Queries & Features

Business Intelligence Queries
-- Sales analysis by category
SELECT 
    c.category_name,
    COUNT(p.product_id) AS product_count,
    MAX(p.list_price) AS max_price
FROM categories c
JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY product_count DESC;

Order Management System
-- Shipment status tracking
SELECT 'SHIPPED' AS ship_status, order_id, order_date
FROM orders WHERE ship_date IS NOT NULL
UNION
SELECT 'NOT SHIPPED' AS ship_status, order_id, order_date  
FROM orders WHERE ship_date IS NULL
ORDER BY order_date;

Advanced Stored Procedures
-- Conditional product analysis
DELIMITER //
CREATE PROCEDURE test()
BEGIN
    DECLARE product_count INT;
    SELECT COUNT(*) INTO product_count FROM products;
    
    IF product_count >= 7 THEN
        SELECT 'The number of products is greater than or equal to 7' AS message;
    ELSE
        SELECT 'The number of products is less than 7' AS message;
    END IF;
END //

Database Administration
-- Secure user creation and privilege management
CREATE USER IF NOT EXISTS mgs_user@localhost IDENTIFIED BY 'pa55word';
GRANT SELECT, INSERT, UPDATE, DELETE ON my_guitar_shop.* TO mgs_user@localhost;

🎯 Learning Outcomes
Database Design: Created a fully normalized schema for a real-world e-commerce application

SQL Mastery: Implemented complex queries, joins, unions, and aggregations

Stored Procedures: Developed business logic using conditional statements and parameters

Data Integrity: Enforced relationships through foreign keys and constraints

User Management: Implemented secure database users and privilege systems

Real-world Application: Built a complete system mimicking commercial database applications

👨‍💻 Author
Lebohang Ramatlapeng

Email: lebohang.ramatlapeng@gmail.com

LinkedIn: https://www.linkedin.com/in/lebohang-ramatlapeng

GitHub: https://github.com/Lee1572

📄 License
This project is open source and available under the MIT License.

This project demonstrates comprehensive database management skills through the implementation of a fully-functional guitar shop e-commerce system.