-- Update job_role coulmn --
UPDATE progress
SET job_role = CASE
    WHEN student_id = 1 THEN 'ml-developer'
    WHEN student_id = 2 THEN 'electrical-engineer'
    WHEN student_id = 3 THEN 'full-stack-developer'
    WHEN student_id = 4 THEN 'full-stack-developer'
    WHEN student_id = 5 THEN 'Accountant'
END
WHERE student_id IN (1, 2,3, 4, 5);

SELECT * FROM progress;