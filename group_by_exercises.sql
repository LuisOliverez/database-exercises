-- # Group BY

-- In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
SELECT title
FROM titles
ORDER BY title;


-- # Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
    GROUP BY last_name;


-- # Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.You should get 846 rows.
SELECT DISTINCT first_name, last_name AS full_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';



--  Find the unique last names with a 'q' but not 'qu'.

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
group by last_name;




-- # Add a COUNT () to your results and use GROUP BY to make it easier to find employees whose unusual name is shared with others.
SELECT DISTINCT last_name, COUNT(last_name) AS Count
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
    GROUP BY last_name;



-- # Update your query for 'Irena', 'Vidya', or 'Maya'.Use count (*) and GROUP BY to find the number of employees for each gender with those names.

SELECT gender, COUNT(*) AS employee_count
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;