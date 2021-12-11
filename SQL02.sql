SELECT * FROM employees
SELECT * 
FROM employees
WHERE first_name = 'DAVID'

SELECT * 
FROM employees
WHERE salary = 4800

SELECT * 
FROM employees
WHERE salary > 4800

SELECT * 
FROM employees
WHERE salary <= 3000

SELECT * 
FROM employees
WHERE hire_date > '1980-05-17'

SELECT * FROM employees WHERE job_id = 'IT_PROG'
SELECT * 
FROM employees 
WHERE job_id != 'IT_PROG'

SELECT * 
FROM employees 
WHERE job_id <> 'IT_PROG'



sp_columns employees