INSERT INTO books2
VALUES (1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);
INSERT INTO bestsellers
VALUES  (4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);
select title,author from books2 UNION select title , author from bestsellers ;
SELECT * FROM books2 WHERE price > 400;
select avg(price) from books2;
select count(*) from books2;
select title AS 'Book Title' , author AS 'Written By' from books2;