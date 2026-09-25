-- 1. Create database
CREATE DATABASE mashupstack;

-- 2. Select the database
USE mashupstack;

-- 3. Create student table
CREATE TABLE student (id INT,name VARCHAR(50),course VARCHAR(50),phone_number VARCHAR(15),mark INT);

-- 4. Insert 10 values
INSERT INTO student VALUES
(1, 'Asha', 'Python', '9876543210', 85),(2, 'Rahul', 'Java', '9876543211', 78),(3, 'Anu', 'SQL', '9876543212', 92),(4, 'Arun', 'Python', '9876543213', 75),(5, 'Meera', 'Java', '9876543214', 88),(6, 'Vishnu', 'SQL', '9876543215', 81),(7, 'Diya', 'Python', '9876543216', 95),(8, 'Adil', 'Java', '9876543217', 72),(9, 'Fathima', 'SQL', '9876543218', 89),(10, 'Nikhil', 'Python', '9876543219', 80);

-- 5. Change column name id to student_id
ALTER TABLE student RENAME COLUMN id TO student_id;

-- 6. Change table name student to students
RENAME TABLE student TO students;

-- 7. Change course datatype to VARCHAR(20)
ALTER TABLE students MODIFY course VARCHAR(20);

-- 8. Drop mark column
ALTER TABLE students DROP COLUMN mark;

-- 9. Create teacher table
CREATE TABLE teacher ( id INT,name VARCHAR(50));

-- 10. Drop teacher table
DROP TABLE teacher;