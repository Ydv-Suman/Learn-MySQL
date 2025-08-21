USE student_database;

-- Create table progress --
CREATE TABLE progress(
	student_id INT,
	grade DECIMAL(5, 3),
    semester VARCHAR(20),
    credits INT,
    FOREIGN KEY(student_id) REFERENCES students(id)
);

-- Insert data into table --
INSERT INTO progress
VALUES
    -- Suman Yadav
    (1, 3.8, 'Fall 2025', 15),
    (1, 3.7, 'Spring 2026', 12),

    -- Aman Bhagat
    (2, 3.2, 'Fall 2025', 12),
    (2, 3.4, 'Spring 2026', 15),

    -- Saugat Adhikari
    (3, 3.8, 'Spring 2025', 18),
    (3, 3.9, 'Fall 2025', 15),

    -- Samarpan Koirala
    (4, 3.9, 'Fall 2025', 15),
    (4, 4.0, 'Spring 2026', 18),

    -- Piyush Sah
    (5, 3.7, 'Summer 2025', 9),
    (5, 3.8, 'Fall 2025', 12);
SELECT * FROM progress;