CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE Student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    admission_no VARCHAR(45) NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    age INT,
    city VARCHAR(25) NOT NULL
);

CREATE TABLE Fee (
    admission_no VARCHAR(45) NOT NULL,
    course VARCHAR(45) NOT NULL,
    amount_paid INT
);

INSERT INTO Student (admission_no, first_name, last_name, age, city) 
VALUES 
(3354, 'Luisa', 'Evans', 13, 'Texas'),
(2135, 'Paul', 'Ward', 15, 'Alaska'),
(4321, 'Peter', 'Bennett', 14, 'California'),
(4213, 'Carlos', 'Patterson', 17, 'New York'),
(5112, 'Rose', 'Huges', 16, 'Florida'),
(6113, 'Marielia', 'Simmons', 15, 'Arizona'),
(7555, 'Antonio', 'Butler', 14, 'New York'),
(8345, 'Diego', 'Cox', 13, 'California');

INSERT INTO Fee (admission_no, course, amount_paid) 
VALUES 
(3354, 'Java', 20000),
(7555, 'Android', 22000),
(4321, 'Python', 18000),
(8345, 'SQL', 15000),
(5112, 'Machine Learning', 30000);

SELECT Student.admission_no, Student.first_name, Student.last_name, 
       Fee.course, Fee.amount_paid
FROM Student 
INNER JOIN Fee ON Student.admission_no = Fee.admission_no;

SELECT Student.admission_no, Student.first_name, Student.last_name, 
       Fee.course, Fee.amount_paid
FROM Student 
LEFT OUTER JOIN Fee ON Student.admission_no = Fee.admission_no;

SELECT Student.admission_no, Student.first_name, Student.last_name, 
       Fee.course, Fee.amount_paid
FROM Student 
RIGHT OUTER JOIN Fee ON Student.admission_no = Fee.admission_no;

SELECT Student.admission_no, Student.first_name, Student.last_name, 
       Fee.course, Fee.amount_paid
FROM Student 
LEFT OUTER JOIN Fee ON Student.admission_no = Fee.admission_no
UNION
SELECT Student.admission_no, Student.first_name, Student.last_name, 
       Fee.course, Fee.amount_paid
FROM Student 
RIGHT OUTER JOIN Fee ON Student.admission_no = Fee.admission_no;