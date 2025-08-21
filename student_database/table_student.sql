USE student_database;

-- Create table --
CREATE TABLE students (
	id INT PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50)
);

-- Insert data into table --
INSERT INTO students
VALUES (1, "Yadav", "Suman"),
	   (2, "Bhagat", "Aman"),
       (3, "Adhikari", "Saugat"),
       (4, "Koirala", "Samarpan"),
       (5, "Sah", "Piyush");
SELECT * FROM students;