USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(last_name, ' ', first_name)
FROM employees
WHERE last_name LIKE '%E' AND last_name LIKE 'E%';

# Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25%';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE year (hire_date) BETWEEN 1990 AND 2000 AND birth_date LIKE '%12-25%';

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE year (hire_date) BETWEEN 1990 AND 2000 AND birth_date LIKE '%-12-25%'
ORDER BY NOW() - birth_date DESC , NOW() - hire_date;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT *, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE year (hire_date) BETWEEN 1990 AND 2000 AND birth_date LIKE '%-12-25%';








SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE '%E' OR last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%E' AND last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT *
FROM employees
WHERE last_name LIKE '%E' OR last_name LIKE 'E%';