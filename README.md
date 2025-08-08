# Task 4 – SQL Aggregate Functions & Grouping

## 📌 Overview
This task is part of my **SQL Developer Internship**.  
The objective is to use **aggregate functions** (`SUM`, `AVG`, `MIN`, `MAX`, `COUNT`) along with `GROUP BY` and `HAVING` clauses to summarize and analyze tabular data.

---

## 🗂️ Tables Used
### 1. departments
| Column Name | Data Type     | Description              |
|-------------|--------------|--------------------------|
| dept_id     | INT (PK)     | Department ID            |
| dept_name   | VARCHAR(50)  | Department Name          |
| location    | VARCHAR(50)  | Department Location      |

### 2. employees
| Column Name   | Data Type     | Description              |
|---------------|--------------|--------------------------|
| emp_id        | INT (PK)     | Employee ID              |
| name          | VARCHAR(50)  | Employee Name            |
| age           | INT          | Employee Age             |
| gender        | VARCHAR(10)  | Employee Gender          |
| dept_id       | INT (FK)     | Department ID            |
| salary        | DECIMAL(10,2)| Employee Salary          |
| joining_date  | DATE         | Joining Date             |
| job_title     | VARCHAR(50)  | Job Title                |

---

## 🛠️ Tools Used
- **MySQL Workbench**

---

## 📂 Folder Structure
```
📁 Task-4-SQL
 ├── 📁 SQL
 │    └── task4.sql          # All 15 aggregate & GROUP BY queries
 ├── 📁 Screenshots
 │    └── (Screenshots of query results)
 ├── README.md               # Project documentation
```

---

## 📊 Example Queries (From `task4.sql`)
Here are **5 sample queries** from the complete set of 15:

```sql
-- 1. Total salary by department
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id;
![Q2](https://github.com/user-attachments/assets/029848de-e1eb-4d26-94e4-e93fed7c14c7)




-- 2. Average age of employees by department
SELECT dept_id, AVG(age) AS avg_age
FROM employees
GROUP BY dept_id;
![Query Result 2](Screenshots/Q3.jpg)



-- 3. Departments with more than 4 employees
SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 4;
![Query Result 3](Screenshots/Q12.jpg)


-- 4. Department name with average salary and average age
SELECT d.dept_name, AVG(e.salary) AS avg_salary, AVG(e.age) AS avg_age
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
![Query Result 4](Screenshots/Q14.jpg)



-- 5. Gender-wise average salary and total salary
SELECT gender, AVG(salary) AS avg_salary, SUM(salary) AS total_salary
FROM employees
GROUP BY gender;
![Query Result 1](Screenshots/Q15.jpg)



```

---

## 🚀 How to Run
1. Open **MySQL Workbench** or any SQL editor.
2. Create a new database:
   ```sql
   CREATE DATABASE task4;
   USE task4;
   ```
3. Create the tables and insert sample data.
4. Open the `task4.sql` file from the **SQL** folder and execute the queries.
5. View query outputs (see **Screenshots** folder).

---

## 🎯 Learning Outcomes
- Apply **aggregate functions** in SQL.
- Use **GROUP BY** to categorize data.
- Filter grouped results using **HAVING**.
- Join multiple tables for aggregation.

---

✍️ *Author:* [Saqlainmushtak Mujawar]  
📅 *Date:* 2025-08-08
