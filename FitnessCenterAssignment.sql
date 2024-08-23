CREATE DATABASE fitness_center_db;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

SELECT * FROM Members;
SELECT * FROM WorkoutSessions;

INSERT INTO Members (id, name, age)
VALUES
(1, 'Jane Doe', 32),
(2, 'John Smith', 41);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
(1, 1, '2024-08-20', 'Morning', 'Leg Press'),
(2, 2, '2024-08-20', 'Evening', 'Bench Press');

SELECT *
FROM Members M, WorkoutSessions W
WHERE W.member_id = M.id;

UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = 1;

DELETE FROM WorkoutSessions
WHERE member_id = 2;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Members 
WHERE name = 'John Smith';
SET SQL_SAFE_UPDATES = 1;

