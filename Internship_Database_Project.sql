create database clg;
show databases;
use clg;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE
);
INSERT INTO employees (id, name, department, hire_date)
VALUES (1, 'Alice Smith', 'Engineering', '2024-01-15');
UPDATE employees
SET department = 'Management'
WHERE id = 1;
SELECT * FROM employees;
INSERT INTO employees (id, name, department, hire_date)
VALUES 
    (2, 'Bob Johnson', 'Sales', '2024-02-01'),
    (3, 'Charlie Davis', 'Engineering', '2023-11-15'),
    (4, 'Diana Prince', 'Management', '2022-06-30'),
    (5, 'Evan Wright', 'HR', '2024-03-10');
show tables;
SELECT * FROM departments;
-- comment
