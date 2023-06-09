SELECT * FROM employees
WHERE hire_date IN
(SELECT hire_date
 FROM employees WHERE emp_no = '101010');




SELECT Distinct title
FROM titles
WHERE emp_no IN(
    SELECT emp_no FROM employees WHERE first_name = 'Aamod');

-- NOT DISTINCT TITLES
SELECT title
FROM titles
WHERE emp_no IN(
    SELECT emp_no FROM employees WHERE first_name = 'Aamod');


SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no........
    );


SELECT d.dept_name
FROM departments AS d
WHERE d.dept_no IN(
FROM dept_maneger dm
JOIN employees e ON dm.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'f');


SELECT e.first_name, e.last_name
FROM employees e
WHERE e.emp_no =
      (SELECT s.emp_no
       FROM salaries s
       ORDER BY salary DESC
       limit  1);