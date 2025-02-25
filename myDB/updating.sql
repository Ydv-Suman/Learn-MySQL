SET SQL_SAFE_UPDATES = 0;
USE myDB;
UPDATE students
SET CWID = 77777777
WHERE first_name = "Sam";
SELECT * FROM students;