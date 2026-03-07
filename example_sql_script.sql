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
