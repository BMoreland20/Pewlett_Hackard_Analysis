-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

-- Begining of my code:

CREATE TABLE titles (
  emp_no INT NOT NULL,
  title VARCHAR NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL);

CREATE TABLE retirement_titles (
	emp_no INT NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	tile VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL);

-- Prebuilding colounms for joins
SELECT DISTINCT emp_no,
first_name,
last_name
FROM employees;

SELECT DISTINCT title,
from_date,
to_date
FROM titles;

-- Build table

SELECT DISTINCT employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles	
FROM employees
Left JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Sanity Check
SELECT * FROM retirement_titles

SELECT DISTINCT ON (emp_no)
emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Sanity Check
SELECT * FROM unique_titles

SELECT title, COUNT(*)

INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC

SELECT * FROM retiring_titles

-- Prebuilding colounms needed for joins
SELECT emp_no,
first_name,
last_name,
birht_date
FROM employees

SELECT from_date,
to_date
FROM dept_emp

SELECT title
FROM titles

-- Build table

SELECT DISTINCT ON (emp_no) employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	titles.title
	
INTO mentorship_eligibilty	
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN titles
ON titles.emp_no = employees.emp_no
WHERE dept_emp.to_date = '9999-01-01'
AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

-- Sanity Check
SELECT * FROM mentorship_eligibilty