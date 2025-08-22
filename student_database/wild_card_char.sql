-- wild card character % _  --
-- used to substitute one or more characters in a string --
SELECT * FROM progress
WHERE job_role LIKE "f%";

SELECT * FROM progress
WHERE job_role LIKE "_lectrical-engineer";

SELECT * FROM progress
WHERE job_role LIKE "_l%";
