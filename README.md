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


-- 1. Total salary by department
```sql
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id;
```
<img width="217" height="106" alt="image" src="https://github.com/user-attachments/assets/98300cb0-3b09-4f8a-9b34-200cb3081993" />


-- 2. Average age of employees by department
```sql
SELECT dept_id, AVG(age) AS avg_age
FROM employees
GROUP BY dept_id;
```
<img width="215" height="98" alt="image" src="https://github.com/user-attachments/assets/ec84b581-660c-4e2b-b820-42b6c7c57390" />


-- 3. Departments with more than 4 employees
```sql
SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 4;
```
<img width="221" height="71" alt="image" src="https://github.com/user-attachments/assets/9a566f1a-c1f3-4d51-8ffe-8396958e12f2" />


-- 4. Department name with average salary and average age
```sql
SELECT d.dept_name, AVG(e.salary) AS avg_salary, AVG(e.age) AS avg_age
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
```
<img width="221" height="109" alt="image" src="https://github.com/user-attachments/assets/e594b024-feb5-42bc-908a-0f295ee604fb" />


-- 5. Gender-wise average salary and total salary
```sql
SELECT gender, AVG(salary) AS avg_salary, SUM(salary) AS total_salary
FROM employees
GROUP BY gender;
```
<img width="221" height="65" alt="image" src="https://github.com/user-attachments/assets/f53580cc-68ec-4c0b-abc9-02d1ee5347d0" />


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
