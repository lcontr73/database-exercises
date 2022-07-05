USE employees;

# Create a file named join_exercises.sql to do your work in.

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


# Find the name of all departments currently managed by women.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;


# Find the current titles of employees currently working in the Customer Service department.
# SELECT t.title, COUNT(*) employees AS Total
SELECT t.title, COUNT(*) as Count
FROM departments d
JOIN dept_emp de ON de.dept_no = d.dept_no
JOIN titles t ON t.emp_no = de.emp_no
WHERE t.to_date > NOW() AND de.to_date > NOW()
      and d.dept_name = 'Customer Service'
GROUP BY t.title;


# Find the current salary of all current managers.




# Bonus Find the names of all current employees, their department name, and their current manager's name .








# Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.
CREATE DATABASE join_test_db;
USE join_test_db;
CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id)
VALUES ('bill', 'bill@example.com', null),
       ('boomhower', 'boomhower@example.com', 2),
       ('hank', 'hank@example.com', 2),
       ('dale', 'dale@example.com', 2);

# Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.
SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;


SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;
