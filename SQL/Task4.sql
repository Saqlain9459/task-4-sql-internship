use data;
select * from Employees;

select * from Departments;

alter table Employees add Job_title varchar(100);

desc Employees;

alter table Departments add location varchar(100) not null;

desc Departments;

truncate Departments;
truncate Employees;
select * from Employees;

select * from Departments;

INSERT INTO Employees (Emp_id, name, age, gender, dept_id, salary, joining_date, job_title) VALUES
(1, 'Akshay Patil', 30, 'Male', 101, 52000, '2023-01-15', 'HR Manager'),
(2, 'Priya Shinde', 27, 'Female', 101, 48000, '2022-06-20', 'Recruiter'),
(3, 'Sanjay Deshmukh', 35, 'Male', 103, 75000, '2021-03-10', 'Accountant'),
(4, 'Meena Jadhav', 29, 'Female', 103, 72000, '2020-12-05', 'Financial Analyst'),
(5, 'Vikas Pawar', 32, 'Male', 102, 90000, '2020-07-18', 'Software Engineer'),
(6, 'Anjali Chavan', 26, 'Female', 102, 87000, '2019-10-12', 'UI/UX Designer'),
(7, 'Rohit Kadam', 38, 'Male', 102, 95000, '2018-09-22', 'Project Manager'),
(8, 'Sneha Bhosale', 28, 'Female', 105, 60000, '2023-02-10', 'Marketing Executive'),
(9, 'Amol Gaikwad', 31, 'Male', 105, 64000, '2021-08-15', 'Content Strategist'),
(10, 'Kavita More', 33, 'Female', 101, 50000, '2020-05-20', 'HR Assistant'),
(11, 'Pravin Salunkhe', 36, 'Male', 103, 78000, '2022-04-01', 'Senior Accountant'),
(12, 'Vaishali Dighe', 27, 'Female', 103, 73000, '2021-09-25', 'Auditor'),
(13, 'Nitin Kharat', 34, 'Male', 102, 91000, '2019-03-30', 'Backend Developer'),
(14, 'Sonal Nalawade', 28, 'Female', 102, 94000, '2018-11-11', 'Frontend Developer'),
(15, 'Ganesh Sutar', 30, 'Male', 105, 58000, '2023-06-18', 'SEO Specialist'),
(16, 'Mangesh Mhatre', 37, 'Male', 105, 62000, '2020-01-28', 'Brand Manager'),
(17, 'Pooja Ghadge', 26, 'Female', 101, 54000, '2022-08-12', 'HR Coordinator'),
(18, 'Ramesh Koli', 39, 'Male', 103, 76000, '2019-07-17', 'Finance Manager'),
(19, 'Ashwini Phadke', 29, 'Female', 102, 88000, '2021-02-14', 'Systems Analyst'),
(20, 'Swapnil Lokhande', 32, 'Male', 104, 61000, '2020-10-05', 'Sales Executive');

SELECT * FROM Employees;

SELECT * FROM Departments;

UPDATE Departments SET location='Hyderabad' WHERE dept_id=105;

SELECT SUM(salary) AS Total_salary 
FROM Employees;

SELECT dept_id, SUM(salary) AS Total_salary
FROM Employees
GROUP BY dept_id;

SELECT dept_id, AVG(age) AS AVG_AGE 
FROM Employees
GROUP BY dept_id;

SELECT dept_id, MAX(salary) AS MAX_SAL
FROM Employees
GROUP BY dept_id;

SELECT dept_id, MIN(salary) AS MIN_SAL
FROM Employees
GROUP BY dept_id;

SELECT gender,COUNT(*) AS GENDER
FROM Employees
GROUP BY gender;

SELECT dept_id, AVG(salary) AS AVG_SAL
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > 80000;

SELECT Job_title, SUM(salary) AS Total_salary
FROM Employees
GROUP BY Job_title;

SELECT gender, AVG(salary) AS Average_Salary
FROM Employees
GROUP BY gender;

SELECT YEAR(joining_date) AS join_year, COUNT(*) AS total_employees
FROM employees
GROUP BY YEAR(joining_date);

SELECT Job_title, MAX(salary) AS High_sal
FROM Employees
GROUP BY Job_title;

SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 4;

SELECT dept_id, SUM(salary) AS total_salary, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id;

SELECT d.dept_name, AVG(e.salary) AS avg_salary, AVG(e.age) AS avg_age
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

SELECT gender, AVG(age) AS avg_age, SUM(salary) AS total_salary
FROM employees
GROUP BY gender;
