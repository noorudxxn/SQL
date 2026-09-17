INSERT INTO library (title, author, price, genre)
VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 450, 'Fiction'), ('The Da Vinci Code', 'Dan Brown', 550, 'Mystery'),
('A Brief History of Time', 'Stephen Hawking', 600, 'Science'),
('India After Gandhi', 'Ramachandra Guha', 400, 'History'),
('The Alchemist', 'Paulo Coelho', 350, 'Fiction');
SELECT * FROM library WHERE price > 400;
SELECT * FROM library WHERE genre IN ('History','Science','Fiction');
SELECT * FROM library WHERE title = 'The Great Gatsby';
SELECT * FROM library WHERE author != 'Dan Brown';