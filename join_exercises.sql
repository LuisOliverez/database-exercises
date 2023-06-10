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

SELECT t.title, COUNT(*) AS 'Total'
FROM employees AS e
         JOIN dept_emp AS de ON de.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
         JOIN titles AS t ON t.emp_no = e.emp_no
WHERE d.dept_name = 'Customer Service'
  AND de.to_date = '9999-01-01'
  AND t.to_date = '9999-01-01'
    GROUP BY t.title
        ORDER BY Total DESC;




-- Find the current salary of all current managers.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments AS d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01';
