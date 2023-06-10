-- Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT hire_date FROM employees
WHERE hire_date IN
(SELECT hire_date
 FROM employees WHERE emp_no = '101010');



-- Find all the titles held by all employees with the first name Aamod.
SELECT Distinct title
FROM titles
WHERE emp_no IN(
    SELECT emp_no FROM employees WHERE first_name = 'Aamod');

-- NOT DISTINCT TITLES
SELECT title
FROM titles
WHERE emp_no IN(
    SELECT emp_no FROM employees WHERE first_name = 'Aamod');



-- Find all the current department managers that are female

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE e.emp_no IN(
    SELECT dm.emp_no
    FROM dept_manager AS dm
             JOIN employees AS e ON dm.emp_no = e.emp_no
    WHERE dm.to_date = '9999-01-01' AND e.gender = 'f');


