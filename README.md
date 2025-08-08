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
<img width="292" height="230" alt="image" src="https://github.com/user-attachments/assets/db1a9ab2-430f-4162-8397-d9ab3512b73c" />


-- 2. Average age of employees by department
SELECT dept_id, AVG(age) AS avg_age
FROM employees
GROUP BY dept_id;
<img width="455" height="225" alt="image" src="https://github.com/user-attachments/assets/f4983bfc-04ff-4b5f-ba4e-fd8bbda918f5" />


-- 3. Departments with more than 4 employees
SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 4;
<img width="297" height="144" alt="image" src="https://github.com/user-attachments/assets/702681a4-1164-4ad6-b2db-a8a9023c7927" />

-- 4. Department name with average salary and average age
SELECT d.dept_name, AVG(e.salary) AS avg_salary, AVG(e.age) AS avg_age
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
<img width="284" height="219" alt="image" src="https://github.com/user-attachments/assets/6ae64f1b-2dc8-418f-b18d-f61294054248" />


-- 5. Gender-wise average salary and total salary
SELECT gender, AVG(salary) AS avg_salary, SUM(salary) AS total_salary
FROM employees
GROUP BY gender;
<img width="455" height="135" alt="image" src="https://github.com/user-attachments/assets/d3a64c41-97db-4175-a7bb-bf8a7fe4eb05" />


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
