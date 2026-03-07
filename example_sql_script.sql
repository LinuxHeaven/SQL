CREATE DATABASE SAMPLE;
-- TO craete a db

USE SAMPLE;
-- to use db

CREATE TABLE employee (
    empid INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    salary INT 
);
-- create a table

DESC employee;
-- show table structure or schema

DROP TABLE employee;
-- delete table

INSERT INTO employee (name, age, gender, city, salary) VALUES
('Amit Sharma', 25, 'Male', 'Delhi', 35000),
('Priya Das', 22, 'Female', 'Kolkata', 30000),
('Rahul Verma', 28, 'Male', 'Mumbai', 42000),
('Sneha Roy', 24, 'Female', 'Kolkata', 38000),
('Arjun Singh', 30, 'Male', 'Bangalore', 45000);
-- insert data to the table empid is ignored because it's declared with auto increment

SELECT * FROM employee;
-- view all data from the table

SELECT name,age FROM employee WHERE age>22 AND age<30;
-- view specific data from the table

ALTER TABLE employee ADD avg FLOAT;
-- adding a new column

ALTER TABLE employee MODIFY COLUMN avg INT;
-- modify column data type

ALTER TABLE employee DROP COLUMN avg;
-- delete column

ALTER TABLE employee RENAME COLUMN name to full_name;
-- change column name

ALTER TABLE employee RENAME TO emp;
-- rename table

SELECT * FROM emp;
-- view table

UPDATE emp SET salary=40000 WHERE empid=2;
-- update row

DELETE FROM emp WHERE empid=5;
-- delete row

SELECT * FROM emp WHERE salary BETWEEN 35000 AND 40000;
-- between usage

SELECT DISTINCT full_name,city FROM emp;
-- distinct usage

SELECT * FROM emp WHERE city IN("Kolkata","Delhi");
SELECT * FROM emp WHERE city NOT IN("Kolkata","Delhi");
-- column filter

SELECT * FROM emp ORDER BY age;
SELECT * FROM emp ORDER BY age ASC;
-- ascending order

SELECT * FROM emp ORDER BY age DESC;
-- descending order

SELECT * FROM emp WHERE full_name LIKE 'S%';
-- first letter filter
SELECT * FROM emp WHERE full_name LIKE '%a';
-- last letter filter
SELECT * FROM emp WHERE full_name LIKE '%ne%';
-- middle letters filter

SELECT MAX(salary) FROM emp;
-- maximum
SELECT MIN(salary) FROM emp;
-- minimum
SELECT AVG(salary) FROM emp;
-- average