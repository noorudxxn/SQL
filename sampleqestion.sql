-- 1. Display the student's name, registration ID, and registration ID increased by 500 for students whose course is Python.
SELECT StudentName, RegID, RegID + 500 AS NewRegID FROM Student WHERE Course = 'Python';

-- 2. Change Rahul's course from Python to Java.
UPDATE Student SET Course = 'JAVA' WHERE StudentName = 'Rahul';

-- 3. Change Deepa's course to HTML and place to Kochi.
UPDATE Student SET Course = 'HTML', Place = 'Kochi' WHERE StudentName = 'Deepa';

-- 4. Delete the student who has StudentID = 6 and is studying C++.
DELETE FROM Student WHERE StudentID = 6 AND Course = 'C++';

-- 5. Change the course to Web Development for students who are currently studying HTML or CSS and are not from Goa.
UPDATE Student SET Course = 'Web Development' WHERE Course = 'HTML' OR Course = 'CSS' AND NOT Place = 'Goa';

-- 6. Display unique places of students who are studying either C++, Python, or JAVA.
SELECT DISTINCT Place FROM Student WHERE Course = 'C++' OR Course = 'Python' OR Course = 'JAVA';

-- 7. Display students who are not from Mumbai or Pune and whose course is Python.
SELECT * FROM Student WHERE Course = 'Python' AND NOT (Place = 'Mumbai' OR Place = 'Pune');

-- 8. Display students who are not studying C++, arranged by Place ascending and StudentID descending.
SELECT * FROM Student WHERE NOT Course = 'C++' ORDER BY Place ASC, StudentID DESC;

-- 9. Change the place to Kerala for students studying JAVA who are currently from either Trivandrum or Malappuram.
UPDATE Student SET Place = 'Kerala' WHERE Course = 'JAVA' AND (Place = 'Trivandrum' OR Place = 'Malappuram');

-- 10. Delete students who are studying Python or C# and are not from Pune.
DELETE FROM Student WHERE Course = 'Python' OR Course = 'C#' AND NOT Place = 'Pune';



-- 11. Display the distinct courses of students who are not from Trivandrum or Goa and whose course is not JAVA or CSS, sorted alphabetically in descending order.
SELECT DISTINCT Course FROM Students WHERE NOT (Place = 'Trivandrum' OR Place = 'Goa') AND NOT (Course = 'JAVA' OR Course = 'CSS') ORDER BY Course DESC;

-- 12. Display the names and places of students who are studying either Python or C++, but exclude students from Pune and Panjab, and sort their names in descending order.
SELECT StudentName, Place FROM Students WHERE (Course = 'Python' OR Course = 'C++') AND NOT (Place = 'Pune' OR Place = 'Panjab') ORDER BY StudentName DESC;

-- 13. Display all students except Sonia, Deepa and Rahul, but only if they are not studying JAVA or Python, and sort them by StudentID in descending order.
SELECT * FROM Students WHERE NOT (StudentName = 'Sonia' OR StudentName = 'Deepa' OR StudentName = 'Rahul') AND NOT (Course = 'JAVA' OR Course = 'Python') ORDER BY StudentID DESC;

-- 14. Display the distinct places of students who are studying JAVA or C++, but exclude Sonia and Anjima from the result, sorted by Place in ascending order.
SELECT DISTINCT Place FROM Students WHERE (Course = 'JAVA' OR Course = 'C++') AND NOT (StudentName = 'Sonia' OR StudentName = 'Anjima') ORDER BY Place ASC;

-- 15. Change the course of students from Kottayam or Pune who are currently studying Python to MySQL.
UPDATE Students SET Course = 'MySQL' WHERE Course = 'Python' AND (Place = 'Kottayam' OR Place = 'Pune');

-- 16. Delete students who are studying C++ or JAVA, except students from Trivandrum, and whose names are not Sonia.
DELETE FROM Students WHERE (Course = 'C++' OR Course = 'JAVA') AND NOT Place = 'Trivandrum' AND NOT StudentName = 'Sonia';

-- 17. Insert a new student with StudentID 13, Reg:ID 1012, name Arun, course Python and place Kochi into the Students table.
INSERT INTO Students (StudentID, `Reg:ID`, StudentName, Course, Place) VALUES (13, 1012, 'Arun', 'Python', 'Kochi');

-- 18. Display the distinct courses of students who are not from Chennai, Mumbai or Goa and who are either studying C++ or Python, sorted in descending order.
SELECT DISTINCT Course FROM Students WHERE NOT (Place = 'Chennai' OR Place = 'Mumbai' OR Place = 'Goa') AND (Course = 'C++' OR Course = 'Python') ORDER BY Course DESC;

-- 19. Update the place to Trivandrum for students studying JAVA or Python, except students whose current place is Pune or Malappuram.
UPDATE Students SET Place = 'Trivandrum' WHERE (Course = 'JAVA' OR Course = 'Python') AND NOT (Place = 'Pune' OR Place = 'Malappuram');

-- 20. Display distinct courses of students who are not from Trivandrum, Malappuram or Panjab, are not named Sonia or Deepa, and are studying either JAVA, C++ or Python, sorted in ascending order.
SELECT DISTINCT Course FROM Students WHERE NOT (Place = 'Trivandrum' OR Place = 'Malappuram' OR Place = 'Panjab') AND NOT (StudentName = 'Sonia' OR StudentName = 'Deepa') AND (Course = 'JAVA' OR Course = 'C++' OR Course = 'Python') ORDER BY Course ASC;

--21. Find students who are studying Python, C++, or MySQL, but exclude those from Kochi and Trivandrum. Sort by course descending and name ascending.
SELECT StudentName, Course, Place FROM Students WHERE (Course = 'Python' OR Course = 'C++' OR Course = 'MySQL') AND NOT (Place = 'Kochi' OR Place = 'Trivandrum') ORDER BY Course DESC, StudentName ASC;

--22. Display distinct places of students whose course is not JAVA or CSS, whose names are not Rahul or Sonia, and whose place is not Pune. Sort places descending.
SELECT DISTINCT Place FROM Students WHERE NOT (Course = 'JAVA' OR Course = 'CSS') AND NOT (StudentName = 'Rahul' OR StudentName = 'Sonia') AND NOT Place = 'Pune' ORDER BY Place DESC;

--23. Display all students from Kerala cities except Kochi and Kottayam, studying either Python or JAVA, but exclude Deepa.
SELECT * FROM Students WHERE (Place = 'Trivandrum' OR Place = 'Kollam' OR Place = 'Kozhikode') AND (Course = 'Python' OR Course = 'JAVA') AND NOT StudentName = 'Deepa' ORDER BY StudentID ASC;

--24. Find distinct courses of students whose StudentID is greater than 5, who are not from Goa or Mumbai, and whose course is not C++.
SELECT DISTINCT Course FROM Students WHERE StudentID > 5 AND NOT (Place = 'Goa' OR Place = 'Mumbai') AND NOT Course = 'C++' ORDER BY Course ASC;

--25. Update the course to SQL for students studying C++ or Python, provided they are not from Pune, Goa, or Panjab.
UPDATE Students SET Course = 'SQL' WHERE (Course = 'C++' OR Course = 'Python') AND NOT (Place = 'Pune' OR Place = 'Goa' OR Place = 'Panjab');

--26. Delete students whose course is JAVA or CSS, but keep students named Arun and students from Trivandrum.
DELETE FROM Students WHERE (Course = 'JAVA' OR Course = 'CSS') AND NOT StudentName = 'Arun' AND NOT Place = 'Trivandrum';

--27. Insert a new student with StudentID 14, Reg:ID 1013, name Meera, course C++, and place Kollam.
INSERT INTO Students (StudentID, `Reg:ID`, StudentName, Course, Place) VALUES (14, 1013, 'Meera', 'C++', 'Kollam');

--28. Display students who are either from Trivandrum or Kochi and are studying Python or MySQL, but exclude Sonia and Rahul.
SELECT StudentName, Course, Place FROM Students WHERE (Place = 'Trivandrum' OR Place = 'Kochi') AND (Course = 'Python' OR Course = 'MySQL') AND NOT (StudentName = 'Sonia' OR StudentName = 'Rahul') ORDER BY StudentName DESC;

--29. Update the place to Kochi for students studying C++ or JAVA, except those currently from Goa or Chennai and except Anjima.
UPDATE Students SET Place = 'Kochi' WHERE (Course = 'C++' OR Course = 'JAVA') AND NOT (Place = 'Goa' OR Place = 'Chennai') AND NOT StudentName = 'Anjima';

--30. Display distinct courses where StudentID is between 3 and 12, the student is not from Pune, Mumbai, or Goa, and the course is Python, C++, JAVA, or MySQL. Sort alphabetically.
SELECT DISTINCT Course FROM Students WHERE StudentID >= 3 AND StudentID <= 12 AND NOT (Place = 'Pune' OR Place = 'Mumbai' OR Place = 'Goa') AND (Course = 'Python' OR Course = 'C++' OR Course = 'JAVA' OR Course = 'MySQL') ORDER BY Course ASC;