-- self join --
-- join another copy of a tale to itself --
-- used to complete rows of the same table --
-- hepls to display a heirarchy of data --alter


ALTER TABLE students
ADD advisor_id INT;

-- Update specific students so they reference an advisor.
-- Example: student 2 is advised by student 1, etc.
UPDATE students
SET advisor_id = CASE
    WHEN id = 2 THEN 1   -- student with id=2 has advisor id=1
    WHEN id = 3 THEN 2   -- student with id=3 has advisor id=2
    WHEN id = 5 THEN 3   -- student with id=5 has advisor id=3
END 
WHERE id IN (2, 3, 5);   -- only update these student records

-- Inner Join:
-- Returns only students who have a matching advisor_id.
SELECT 
    a.id AS student_id,
    CONCAT(a.first_name, ' ', a.last_name) AS student_name,
    CONCAT(b.first_name, ' ', b.last_name) AS referred_by
    
FROM students AS a
INNER JOIN students AS b
    ON a.advisor_id = b.id;


-- Left Join:
-- Returns ALL students.
-- If a student doesn’t have an advisor_id, 'referred_by' will be NULL.
SELECT 
    a.id AS student_id,
    CONCAT(a.first_name, ' ', a.last_name) AS student_name,
    CONCAT(b.first_name, ' ', b.last_name) AS referred_by
FROM students AS a
LEFT JOIN students AS b
    ON a.advisor_id = b.id;