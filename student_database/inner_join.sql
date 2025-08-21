-- Inner join two table
SELECT * FROM progress INNER JOIN students
ON progress.student_id = students.id;