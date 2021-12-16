SELECT * 
FROM employees
SELECT * 
FROM employees
WHERE salary >=4000 AND salary<=11000
ORDER BY salary
SELECT * 
FROM employees
WHERE salary BETWEEN 4000 AND 11000
ORDER BY salary
SELECT * 
FROM employees
WHERE employee_id IN(192,181,187)
SELECT * 
FROM employees
WHERE commission_pct IS NULL
SELECT * 
FROM employees
WHERE commission_pct IS NOT NULL


SELECT * FROM employees
WHERE first_name LIKE 'a%'

SELECT * FROM employees
WHERE first_name LIKE '_A%'


SELECT * FROM employees
WHERE first_name LIKE 'A_A%'


SELECT * FROM employees
WHERE first_name LIKE '%ta'

SELECT * FROM employees
WHERE first_name LIKE '%a_'


SELECT * FROM employees
WHERE last_name LIKE '%_as'



SELECT * FROM employees
WHERE last_name LIKE '___A_'




SELECT * 
FROM employees
WHERE salary BETWEEN 4000 AND 11000
AND first_name LIKE '%_n' 

SELECT * FROM employees
WHERE salary = 24000

SELECT * FROM employees
WHERE  salary<24000 or last_name LIKE '%EN_' 


