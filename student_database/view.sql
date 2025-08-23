-- view --
-- a virtual table based on the result-set of an SQL statement --
-- THe fie;ds in a view are fields on eor more real tables in the databse --
-- They're not real tables, but can be interacted with as if they were --


-- Add a new column 'email' --
ALTER TABLE students
ADD COLUMN email VARCHAR(50);

-- Update email for specific existing students
UPDATE students
SET email = CONCAT(first_name, '@gmail.com')
WHERE id IN (1,2,3,4,5);

-- Insert a new student --
INSERT INTO students (id, last_name, first_name, advisor_id, email)
VALUES (7, 'Len', 'Max', NULL, 'max@gmail.com');

-- Create view --
CREATE VIEW student_emails AS
SELECT first_name, last_name, email FROM students; -- real table --

-- View all data --
SELECT * FROM student_emails;
