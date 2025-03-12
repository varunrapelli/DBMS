CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employee (
    Emp_no INT PRIMARY KEY,
    E_name VARCHAR(50),
    E_address VARCHAR(100),
    E_ph_no VARCHAR(15),
    Dept_no INT,
    Dept_name VARCHAR(50),
    Job_id INT,
    Designation VARCHAR(50),
    Salary INT,
    Date_of_Joining DATE
);

INSERT INTO Employee (Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name, Job_id, Designation, Salary, Date_of_Joining) 
VALUES 
(101, 'Rajesh Kumar', 'Hyderabad', '9876543210', 1, 'HR', 1001, 'MANAGER', 90000, '1982-05-12'),
(102, 'Priya Sharma', 'Mumbai', '9876543211', 2, 'IT', 1002, 'IT PROFF', 60000, '1983-07-21'),
(103, 'Amit Singh', 'Delhi', '9876543212', 3, 'Finance', 1003, 'CLERK', 40000, '1985-03-14'),
(104, 'Neha Gupta', 'Chennai', '9876543213', 2, 'IT', 1004, 'IT PROFF', 55000, '1984-11-30'),
(105, 'Rahul Yadav', 'Pune', '9876543214', 4, 'Sales', 1005, 'ANALYST', 70000, '1986-08-10'),
(106, 'Suresh Reddy', 'Bangalore', '9876543215', 3, 'Finance', 1006, 'MANAGER', 95000, '1980-01-20'),
(107, 'Kiran Rao', 'Kolkata', '9876543216', 2, 'IT', 1007, 'CLERK', 35000, '1987-02-25'),
(108, 'Manoj Patil', 'Ahmedabad', '9876543217', 4, 'Sales', 1008, 'ANALYST', 72000, '1988-12-15');

SELECT Emp_no, E_name, Salary 
FROM Employee 
WHERE Designation = 'MANAGER';

SELECT * FROM Employee
WHERE Salary > ANY (
    SELECT Salary FROM Employee WHERE Designation = 'IT PROFF'
);

SELECT * FROM Employee
WHERE YEAR(Date_of_Joining) > 1981
ORDER BY Designation ASC;

SELECT E_name, 
       Salary, 
       ROUND(Salary / 30, 2) AS Daily_Salary,
       TIMESTAMPDIFF(YEAR, Date_of_Joining, CURDATE()) AS Experience
FROM Employee;

SELECT * FROM Employee
WHERE Designation IN ('CLERK', 'ANALYST');