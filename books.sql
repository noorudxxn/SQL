INSERT INTO books (id, title, author, price, stock_status, genre) 
VALUES (1, 'The Alchemist', 'Paulo Coelho', 350, 'In Stock', 'Fiction'),(2, 'Atomic Habits', 'James Clear', 550, 'In Stock', 'Self Help'),(3, 'Harry Potter', 'J.K. Rowling', 800, 'Out of Stock', 'Fantasy'),(4, 'The Hobbit', 'J.R.R. Tolkien', 450, 'In Stock', 'Fantasy'),(5, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 750, 'In Stock', 'Finance'),(6, 'Ikigai', 'Hector Garcia', 300, 'Out of Stock', 'Self Help'),(7, 'Wings of Fire', 'A.P.J. Abdul Kalam', 400, 'In Stock', 'Biography'),(8, '1984', 'George Orwell', 650, 'In Stock', 'Dystopian'),(9, 'The Psychology of Money', 'Morgan Housel', 900, 'Out of Stock', 'Finance'),(10, 'Pride and Prejudice', 'Jane Austen', 250, 'In Stock', 'Romance');
SELECT * FROM books;
SELECT DISTINCT genre FROM books;
SELECT * FROM books WHERE stock_status = 'In Stock' AND price < 400;
SELECT * FROM books WHERE stock_status = 'Out of Stock' OR price > 700;
SELECT title, price, price * 1.10 AS price_with_gst FROM books;
SELECT title, price, stock_status FROM books ORDER BY price DESC;