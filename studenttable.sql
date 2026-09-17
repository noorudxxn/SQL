INSERT INTO students (id, name, age, department, grade)
VALUES (1, 'rahul', 21, 'computer science', 80),(2, 'sajith', 20, 'physics', 70),(3, 'glen', 23, 'computer science', 90),(4, 'noorudeen', 19, 'chemistry', 90);
SELECT * FROM students WHERE age > 20;
SELECT * FROM students WHERE department IN ('computer science', 'physics');
SELECT * FROM students WHERE grade = 90;
SELECT * FROM students WHERE grade BETWEEN 70 AND 90;