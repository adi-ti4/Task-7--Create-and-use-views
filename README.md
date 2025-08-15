# Task-7--Create-and-use-views
A view in SQL is a virtual table that is based on the result of a SELECT query.
It does not store data itself; instead, it stores the query definition, and whenever you access the view, SQL runs that query to fetch the latest data from the underlying tables.

In this task, view command is used for high salary employees above 80,000

CREATE VIEW high_salary_employees AS
SELECT name, salary
FROM employees
WHERE salary > 80000;

SELECT * FROM high_salary_employees;
