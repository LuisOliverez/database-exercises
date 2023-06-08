        --FUNCTIONS EXERCISE

-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
        SELECT  CONCAT (first_name,' ', last_name) AS full_name
        FROM employees
        WHERE last_name LIKE 'e%'
          AND last_name LIKE '%e';


-- Find all employees born on Christmas — 842 rows.
        SELECT CONCAT (first_name,' ', last_name) AS Full_Name
        FROM employees
        WHERE MONTH(birth_date)= 12 AND DAY(birth_date)= 25;


 -- Find all employees hired in the 90s and born on Christmas — 362 rows.
        SELECT hire_date, CONCAT (first_name,' ', last_name) AS Full_Name
        FROM employees
        WHERE year(hire_date) BETWEEN 1990 AND 1999
          AND MONTH(birth_date)= 12
          AND DAY(birth_date)= 25;



-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
        SELECT hire_date,birth_date, CONCAT (first_name,' ', last_name) AS Full_Name
        FROM employees
        WHERE year(hire_date) BETWEEN 1990 AND 1999
          AND MONTH(birth_date)= 12
          AND DAY(birth_date)= 25
        ORDER BY birth_date,hire_date DESC ;


-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

        SELECT CONCAT (first_name,' ', last_name) AS Full_Name, DATEDIFF(NOW(), hire_date) AS days_worked
        FROM employees
        WHERE year(hire_date) BETWEEN 1990 AND 1999
          AND MONTH(birth_date)= 12
          AND DAY(birth_date)= 25
        ORDER BY DATEDIFF(NOW(), hire_date);