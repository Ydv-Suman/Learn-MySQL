SET SQL_SAFE_UPDATES = 0;
USE myDB;

-- updating one row
UPDATE students
SET CWID = 77777777,
	email = "sam@gmail.com",
    expected_graduationDate = "2026-12-15"
WHERE first_name = "Sam";

-- updating multiple columns
UPDATE students
SET
	email = CASE
		WHEN first_name = 'Jack' THEN 'jack@gmail.com'
        WHEN first_name = 'Jimmy' THEN 'jimmy@gmail.com'
	END,
	
    CWID = CASE
		WHEN first_name = 'Jack' THEN 88888888
        WHEN first_name = 'Jimmy' THEN 99999999
	END,
    
    expected_graduationDate = CASE
		WHEN first_name = 'Jack' THEN '2026-12-15'
        WHEN first_name = 'Jimmy' THEN '2027-05-14'
	END
WHERE first_name IN ('Jack','Jimmy');

SELECT * FROM students;

