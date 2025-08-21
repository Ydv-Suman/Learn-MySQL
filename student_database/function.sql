-- functions --

-- total count --
SELECT COUNT(grade) AS "Count"
FROM progress;

-- max grade --
SELECT max(grade) AS "max-grade"
FROM progress;

-- Average GPA across all students -- 
SELECT AVG(grade) AS "average-grade"
FROM progress;

-- Lowest GPA --
SELECT MIN(grade) AS "min-grade"
FROM progress;

-- Total credits completed --
SELECT SUM(credits) AS "total-credits"
FROM progress;

-- Concat--
SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM students;