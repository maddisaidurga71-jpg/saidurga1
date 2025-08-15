USE dayten;
CREATE TABLE employee(EmpID int, EmpName varchar(20), deptID int, Salary int, HiringDate varchar(20));
INSERT INTO employee VALUES 
(101, 'John', 1, 50000, '2018-02-12'),
(102, 'Alice', 2, 60000, '2019-07-10'),
(103, 'Bob', 1, 55000, '2020-05-05'),
(104, 'Carol', 3, 45000, '2017-09-20');




CREATE TABLE departments(deptID int, department_name varchar(20));
INSERT INTO departments VALUES 
(1, 'Sales'),
(2, 'Marketing'),
(3, 'HR');



-- 11. Display employees whose names start with 'A'

SELECT * FROM employee WHERE EmpName LIKE 'A%';



-- 12. Find employees whose salary is between 45,000 and 60,000

SELECT * FROM employee WHERE Salary BETWEEN 45000 AND 60000;



-- 13. Show the department name of each employee (JOIN query)

SELECT e.EmpName, d.department_name 
FROM employee e 
JOIN departments d 
ON e.deptID = d.deptID;




-- 14. Find the number of employees in each department

SELECT d.department_name, COUNT(e.EmpID) as num_employees 
FROM employee e 
JOIN departments d 
ON e.deptID = d.deptID 
GROUP BY d.department_name;




-- 15. Display all employees, including those without a department (LEFT JOIN)

SELECT e.EmpName, d.department_name 
FROM employee e 
LEFT JOIN departments d 
ON e.deptID = d.deptID;


