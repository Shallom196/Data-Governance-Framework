-- Purpose: Initial table creation and sample data for Soyombo Imagineering Inc.
-- Created: [Today's Date]

-- Clear existing tables if needed
DROP TABLE IF EXISTS product_data.orders;
DROP TABLE IF EXISTS product_data.products;
DROP TABLE IF EXISTS customer_data.customers;
DROP TABLE IF EXISTS quality_metrics.data_quality_scores;

-- Create customer table
CREATE TABLE customer_data.customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create products table
CREATE TABLE product_data.products (
    product_id SERIAL PRIMARY KEY,
    sku VARCHAR(20) UNIQUE,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    category VARCHAR(50),
    stock_level INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create orders table
CREATE TABLE product_data.orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customer_data.customers(customer_id),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20),
    total_amount DECIMAL(10,2),
    shipping_address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample customer data
INSERT INTO customer_data.customers 
(first_name, last_name, email, phone, address) 
VALUES
('John', 'Doe', 'john.doe@email.com', '555-0100', '123 Main St'),
('Jane', 'Smith', 'jane.smith@email.com', '555-0101', '456 Oak Ave'),
('Bob', 'Johnson', NULL, '555-0102', '789 Pine Rd'),
('Sarah', 'Williams', 'sarah@email', NULL, NULL),
('Mike', 'Brown', 'mike.brown@email.com', '5550103', '321 Elm St');

-- Insert sample product data
INSERT INTO product_data.products 
(sku, name, description, price, category, stock_level) 
VALUES
('SKU001', 'Laptop Pro', 'High-performance laptop', 1299.99, 'Electronics', 50),
('SKU002', 'Desk Chair', 'Ergonomic office chair', 199.99, 'Furniture', 100),
('SKU003', 'Coffee Maker', NULL, 79.99, 'Appliances', 30),
('SKU004', 'Wireless Mouse', 'Bluetooth mouse', -29.99, 'Electronics', -5),
('SKU005', 'Desk Lamp', 'LED desk lamp', 49.99, 'Lighting', NULL);

-- Insert sample order data
INSERT INTO product_data.orders 
(customer_id, status, total_amount, shipping_address) 
VALUES
(1, 'Delivered', 1299.99, '123 Main St'),
(2, 'Processing', 279.98, '456 Oak Ave'),
(3, 'Pending', 79.99, '789 Pine Rd'),
(1, 'Shipped', 49.99, '123 Main St'),
(4, 'Cancelled', 199.99, '321 Elm St');