-- LIMIT clause is used to limit thenumber of records --
-- Useful if you're working with a lot of data --
-- Can be used to display a large data on pages (pagination)

SELECT * FROM students
LIMIT 3;

SELECT * FROM students
ORDER BY last_name DESC LIMIT 3;

SELECT * FROM students
LIMIT 2, 3;  -- LIMIT offset, limit; --