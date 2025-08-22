-- ADD job_role column --
USE student_database;
ALTER TABLE progress
ADD COLUMN job_role VARCHAR(30) AFTER semester;

SELECT * FROM progress