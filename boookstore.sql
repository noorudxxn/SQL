CREATE DATABASE bookstore;

USE bookstore;

CREATE TABLE authors1 (author_id INT PRIMARY KEY,author_name VARCHAR(100),email VARCHAR(100) UNIQUE );

CREATE TABLE books3 (book_id INT PRIMARY KEY,book_title VARCHAR(150),author_id INT,FOREIGN KEY (author_id) REFERENCES authors1(author_id));

INSERT INTO authors1 

VALUES
(1, 'Chetan Bhagat', 'chetan@gmail.com'),
(2, 'Arundhati Roy', 'arundhati@gmail.com'),
(3, 'Ruskin Bond', 'ruskin@gmail.com');

INSERT INTO books3 

VALUES
(101, 'Five Point Someone', 1),
(102, '2 States', 1),
(103, 'The God of Small Things', 2),
(104, 'The Blue Umbrella', 3);
