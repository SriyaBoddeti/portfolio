# Employee Management System — SQL

## Overview
A complete SQL-based Employee Management System to manage employee records, departments, and salary data using a normalized relational database design.

## Features
- Full CRUD operations on employee, department, salary tables
- Normalized schema with primary and foreign key constraints
- Reports using JOINs, subqueries, and aggregate functions
- Department-wise and salary-wise analytics

## Tech Stack
- SQL / MySQL
- MySQL Workbench / VS Code

## Database Schema

### Tables
```
employees        → emp_id, name, email, dept_id, join_date
departments      → dept_id, dept_name, location
salaries         → salary_id, emp_id, amount, effective_date
```

### Sample Queries
```sql
-- Get all employees with their department names
SELECT e.name, d.dept_name, s.amount
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN salaries s ON e.emp_id = s.emp_id;

-- Average salary per department
SELECT d.dept_name, AVG(s.amount) AS avg_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY d.dept_name;

-- Employees earning above company average
SELECT name, amount FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.amount > (SELECT AVG(amount) FROM salaries);
```

## Setup
```sql
-- Create database
CREATE DATABASE emp_management;
USE emp_management;

-- Run schema file
SOURCE schema.sql;

-- Load sample data
SOURCE data.sql;
```

## Files
```
employee-management-system/
├── schema.sql      -- Table creation scripts
├── data.sql        -- Sample data inserts
├── queries.sql     -- Analytical queries
└── README.md
```

---
*Built by Sriya Boddeti*
