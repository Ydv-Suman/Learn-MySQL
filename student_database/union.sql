-- UNION combines the result of two or more selecet statements --
-- UNION will not allow uplicate
-- UNION ALL allow duplicate --

-- Add new columns --
ALTER TABLE progress
ADD COLUMN first_name VARCHAR(30) AFTER student_id;

ALTER TABLE progress
ADD COLUMN last_name VARCHAR(30) AFTER student_id;

-- Update first_name --
UPDATE progress
SET first_name = CASE
    WHEN student_id = 1 THEN 'Suman'
    WHEN student_id = 2 THEN 'Aman'
    WHEN student_id = 3 THEN 'Saugat'
    WHEN student_id = 4 THEN 'Samarpan'
    WHEN student_id = 5 THEN 'Piyush'
END
WHERE student_id IN (1, 2,3, 4, 5);

-- Update last_name --
UPDATE progress
SET last_name = CASE
    WHEN student_id = 1 THEN 'Yadav'
    WHEN student_id = 2 THEN 'Bhagat'
    WHEN student_id = 3 THEN 'Adhikari'
    WHEN student_id = 4 THEN 'Koirala'
    WHEN student_id = 5 THEN 'Sah'
END
WHERE student_id IN (1, 2,3, 4, 5);


      
SELECT first_name, last_name FROM students
UNION ALL
SELECT first_name, last_name FROM progress;