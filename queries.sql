-- Employee Management System
-- Analytical Queries

USE emp_management;

-- 1. All employees with department and salary
SELECT e.name, d.dept_name, s.amount, e.join_date
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
ORDER BY s.amount DESC;

-- 2. Average salary per department
SELECT d.dept_name, ROUND(AVG(s.amount), 2) AS avg_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY d.dept_name
ORDER BY avg_salary DESC;

-- 3. Employees earning above company average
SELECT e.name, s.amount
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.amount > (SELECT AVG(amount) FROM salaries);

-- 4. Headcount per department
SELECT d.dept_name, COUNT(e.emp_id) AS headcount
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 5. Highest paid employee per department
SELECT d.dept_name, e.name, s.amount
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.amount = (
    SELECT MAX(s2.amount)
    FROM salaries s2
    JOIN employees e2 ON s2.emp_id = e2.emp_id
    WHERE e2.dept_id = e.dept_id
);
