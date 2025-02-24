CREATE DATABASE myDB; -- creating database

USE myDB;  -- using database
CREATE TABLE students(   -- creating table named students in database
	serial_number INT,		 -- accepts integers
    first_name VARCHAR(20),  -- maxchar 20
    last_name VARCHAR(20),   -- maxchar 20
    email VARCHAR(30),     	 -- maxchar 30
    CWID INT,				 -- accepts integers
    grade DECIMAL(5,3),		-- accepts decimal
    expected_graduationDate DATE  -- accepts date
);

SELECT * FROM students  -- displaying the data