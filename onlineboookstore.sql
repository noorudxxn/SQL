INSERT INTO books
VALUES (1, 'Learn SQL', 'John Smith', 400, 10),(2, 'Mastering Python', 'Jane Doe', 600, 5),(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);
UPDATE books SET price =  "450", stock = "12" WHERE title = "LearnSQL";
UPDATE books set stock = "2" where price > "500";
DELETE FROM books WHERE book_id ="3";