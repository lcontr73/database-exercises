USE employees;

SHOW tables;

DESCRIBE departments;

DESCRIBE dept_emp;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;

USE codeup_test_db;
SHOW tables;

select * from albums;

DESCRIBE albums;

SHOW INDEX FROM albums;

ALTER Table albums
ADD UNIQUE (name, artist);