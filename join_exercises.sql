-- write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND CURDATE() BETWEEN dm.from_date AND dm.to_date
ORDER BY dept_name;



-- Find the name of all departments currently managed by women

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name'
FROM employees AS e
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND CURDATE() BETWEEN dm.from_date AND dm.to_date
  AND e.gender = 'f'
ORDER BY dept_name;

-- Find the current titles of employees currently working in the Customer Service department.




    SELECT departments.dept_name AND 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS   'Department Manager', salaries.salary AS 'Salary'
    FROM departments
    JOIN dept_manager ON departments.dept_no - dept_manager.dept_no
    JOIN employees ON employees.em_no = dept_manager.emp_no
    JOIN salaries ON emp.emp_no = salaries.emp_no
    WHERE dept_manager.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%';
