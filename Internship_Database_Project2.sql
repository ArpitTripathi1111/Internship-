use CollegeManagement;
SELECT * FROM Teachers;
select * from teachers
order by salary;

ALTER TABLE teachers ADD COLUMN age INT;

-- Create the new database
CREATE DATABASE IF NOT EXISTS faculty_db;
USE faculty_db;

-- Create the table with the requested columns
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10, 2),
    location VARCHAR(100),
    experience INT
);

-- Insert 5 records into the table
INSERT INTO teachers (id, name, age, salary, location, experience)
VALUES 
    (1, 'Dr. Sharma', 45, 75000.00, 'Lucknow', 15),
    (2, 'Prof. Verma', 52, 85000.00, 'Kanpur', 20),
    (3, 'Mr. Gupta', 38, 60000.00, 'Lucknow', 8),
    (4, 'Ms. Singh', 32, 55000.00, 'Delhi', 5),
    (5, 'Dr. Khan', 48, 80000.00, 'Lucknow', 18);

-- Verify the data
SELECT * FROM teachers;

SELECT * FROM teachers 
ORDER BY salary ASC;

SELECT * FROM teachers 
ORDER BY experience DESC;

SELECT * FROM teachers 
ORDER BY name ASC;

SELECT * FROM teachers 
ORDER BY location ASC, age DESC;

-- Clean up and set up structure
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS Department;

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10, 2),
    location VARCHAR(100),
    experience INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Insert 3 Departments
INSERT INTO Department VALUES 
(101, 'Computer Science'),
(102, 'Mathematics'),
(103, 'Robotics');

-- Insert 10 teachers with department_id
INSERT INTO teachers VALUES 
(1, 'Dr. Sharma', 45, 75000, 'Lucknow', 15, 101),
(2, 'Prof. Verma', 52, 85000, 'Kanpur', 20, 102),
(3, 'Mr. Gupta', 38, 60000, 'Lucknow', 8, 103),
(4, 'Ms. Singh', 32, 55000, 'Delhi', 5, 101),
(5, 'Dr. Khan', 48, 80000, 'Lucknow', 18, 101),
(6, 'Prof. Mishra', 42, 72000, 'Lucknow', 12, 102),
(7, 'Ms. Kapoor', 29, 48000, 'Kanpur', 3, 103),
(8, 'Dr. Joshi', 55, 95000, 'Delhi', 25, 102),
(9, 'Mr. Verma', 35, 52000, 'Lucknow', 7, 103),
(10, 'Ms. Reddy', 40, 68000, 'Hyderabad', 14, 101);


SELECT t.name, t.salary, d.department_name
FROM teachers t
JOIN Department d ON t.department_id = d.department_id
ORDER BY t.salary DESC;

SELECT *
FROM teachers t
JOIN Department d ON t.department_id = d.department_id
ORDER BY t.salary DESC;

SELECT name, salary, department_id 
FROM teachers 
ORDER BY salary DESC 
LIMIT 5;

SELECT *
FROM teachers 
ORDER BY salary DESC 
LIMIT 5;

SELECT *
FROM teachers 
ORDER BY salary 
LIMIT 5;

show databases;

SELECT COUNT(*) AS total_teachers FROM teachers;

SELECT AVG(salary) AS average_salary FROM teachers;

SELECT * FROM teachers 
WHERE salary BETWEEN 50000 AND 80000;

SELECT * FROM teachers 
WHERE name LIKE 'Dr.%';

SELECT department_id, COUNT(*) 
FROM teachers 
GROUP BY department_id;

SELECT department_id, COUNT(*) 
FROM teachers 
GROUP BY department_id 
HAVING COUNT(*) > 3;

SELECT MAX(experience) AS max_exp, MIN(experience) AS min_exp 
FROM teachers;

SELECT DISTINCT location FROM teachers;

UPDATE teachers 
SET salary = salary * 1.10 
WHERE department_id = 101;

SELECT * FROM teachers;