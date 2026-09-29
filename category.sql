CREATE TABLE categories (category_id INT AUTO_INCREMENT PRIMARY KEY,category_name VARCHAR(50) NOT NULL);

CREATE TABLE books (book_id INT AUTO_INCREMENT PRIMARY KEY,book_name VARCHAR(100) NOT NULL,author VARCHAR(100),category_id INT,FOREIGN KEY (category_id)REFERENCES categories(category_id));

INSERT INTO categories (category_name) VALUES('Fiction'),('Science'),('History'),('Technology');

INSERT INTO books (book_name, author, category_id) VALUES('The Alchemist', 'Paulo Coelho', 1),('1984', 'George Orwell', 1),('A Brief History of Time', 'Stephen Hawking', 2),('Sapiens', 'Yuval Noah Harari', 3),('Clean Code', 'Robert C. Martin', 4);

CREATE INDEX idx_book_name ON books(book_name);

SHOW INDEX FROM books;