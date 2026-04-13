-- Employee Management System
-- Schema: Table creation

CREATE DATABASE IF NOT EXISTS emp_management;
USE emp_management;

CREATE TABLE departments (
    dept_id     INT PRIMARY KEY AUTO_INCREMENT,
    dept_name   VARCHAR(100) NOT NULL,
    location    VARCHAR(100)
);

CREATE TABLE employees (
    emp_id      INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(100) NOT NULL,
    email       VARCHAR(150) UNIQUE NOT NULL,
    dept_id     INT,
    join_date   DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE salaries (
    salary_id       INT PRIMARY KEY AUTO_INCREMENT,
    emp_id          INT,
    amount          DECIMAL(10, 2) NOT NULL,
    effective_date  DATE NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
