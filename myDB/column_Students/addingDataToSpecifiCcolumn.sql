SHOW DATABASES;
USE myDB;

INSERT INTO students(serial_number, first_name, last_name, grade)   -- adding data to specific column
VALUES
(7, 'Sam', 'Doe', 3.7),
(8, 'Jack', 'Smith', 3.7),
(9, 'Jimmy', 'White', 3.7);
-- rest of the column will be filled with null

SELECT * FROM students;