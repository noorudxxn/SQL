CREATE DATABASE GroceryShop;

USE GroceryShop;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);

ALTER TABLE products
ADD COLUMN category VARCHAR(50);

TRUNCATE TABLE products;

DROP DATABASE GroceryShop;