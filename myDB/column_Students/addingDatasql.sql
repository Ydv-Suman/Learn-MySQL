SHOW DATABASES;

USE myDB;  -- using database

-- adding data to students
INSERT INTO students
VALUES 
(1, "Suman", "Yadav", "suman@gmail.com", 11111111, 3.55, "2027-05-15"),
(2, "Samarpan", "Koirala", "samarpan@gmail.com", 22222222, 4, "2027-05-15"),
(3, "Saugat", "Adhikari", "saugat@gmail.com", 33333333, 4, "2027-05-15"),
(4, "Ashutosh", "Thapa", "ashutosh@gmail.com", 44444444, 3.8, "2027-05-15"),
(5, "Aman", "Bhagat", "aman@gmail.com", 55555555, 3.9, "2026-05-15");

SELECT * FROM students  -- displaying the dataserial_number