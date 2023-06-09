SELECT departments.dept_name AS Department_Name, CONCAT (employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gerner = 'F';



-- SELECT titles.title AS title, COUNT(*) AS 'Total'
-- FROM departments
--          JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
--          JOIN titles ON title.emp_no = dept_emp.emp.no
-- WHERE deparmtnest.demp_name = 'Customer Service' AND titels.to_date = '9999-01-01' AND dempt_emp.to_date = '9999-01-01';99-01-01' AND dept_emp.to_date = '9999-01-01';



    SELECT departments.dept_name AND 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS   'Department Manager', salaries.salary AS 'Salary'
    FROM departments
    JOIN dept_manager ON departments.dept_no - dept_manager.dept_no
    JOIN employees ON employees.em_no = dept_manager.emp_no
    JOIN salaries ON emp.emp_no = salaries.emp_no
    WHERE dept_manager.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%';
