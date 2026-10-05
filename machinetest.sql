CREATE DATABASE mashupstack;

USE mashupstack;

CREATE TABLE Employee (id INT PRIMARY KEY,Name VARCHAR(50),Department VARCHAR(50),leaves INT);

INSERT INTO Employee (id, Name, Department, leaves)

VALUES
(1, 'Raju', 'Sales', 1),(2, 'Sangeetha', 'Sales', 3),(3, 'Vinay', 'Operations', 8),(4, 'Abey', 'Packing', 2),(5, 'Thomas', 'Packing', 1),(6, 'Muneer', 'Operations', 7),(7, 'Aparna', 'Sales', 3),(8, 'Abid', 'Operations', 9),(9, 'Fathima', 'Sales', 11),(10, 'Varghese', 'Operations', 14);

CREATE TABLE Exam (id INT PRIMARY KEY,Employee_id INT,exam_status VARCHAR(20));

INSERT INTO Exam (id, Employee_id, exam_status)

VALUES
(1, 2, 'Pass'),(2, 5, 'Fail'),(3, 1, 'Fail'),(4, 8, 'Pass'),(5, 3, 'Pass'),(6, 1, 'Pass'),(7, 6, 'Fail'),(8, 9, 'Pass'),(9, 10, 'Pass');

SELECT * FROM Employee WHERE leaves > 5 AND Department = 'Sales';

SELECT COUNT(*) AS employee_count FROM Employee WHERE Department = 'Operations';

SELECT Department, COUNT(*) AS employee_count FROM Employee GROUP BY Department;

SELECT Department, SUM(leaves) AS total_leaves FROM Employee GROUP BY Department HAVING SUM(leaves) > 10;

SELECT Employee.Name FROM Employee JOIN Exam ON Employee.id = Exam.Employee_id WHERE Exam.exam_status = 'pass';

SELECT Employee.Name FROM Employee LEFT JOIN Exam ON Employee.id = Exam.Employee_id WHERE Exam.Employee_id is NULL;