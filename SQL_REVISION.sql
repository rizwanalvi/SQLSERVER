SELECT *
FROM employees


SELECT employee_id,first_name,last_name,salary
FROM employees


SELECT employee_id 'EMP #', first_name AS 'FIRST NAME',last_name,salary
FROM employees


SELECT employee_id,CONCAT(first_name,' ',last_name) 'NAME',salary
FROM employees

SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees


SELECT COUNT(*)
FROM employees

SELECT MAX(salary)
FROM employees


SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
ORDER BY salary DESC

SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE salary >=11000

SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE salary <15000

SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE salary !=24000



SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE salary <>24000

SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE salary> 4000 AND salary <11000
SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE salary>= 4000 AND salary <=11000

SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE salary BETWEEN 4000 AND 111000

SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE employee_id IN(101,111,124)



SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE first_name LIKE '%a_'

SELECT employee_id,UPPER(CONCAT(first_name,' ',last_name)) 'NAME',salary
FROM employees
WHERE first_name LIKE '_a%'


SELECT employee_id,First_name,last_name 'NAME',salary,DATENAME(MONTH,GETDATE()) 'MONTH'
FROM employees
WHERE first_name LIKE '%AN'


SELECT employee_id,first_name,salary+(salary * commission_pct) 'SALARY'
FROM employees
WHERE commission_pct IS NOT NULL

SELECT employee_id,first_name,salary+(salary * commission_pct) 'SALARY'
FROM employees


SELECT *
FROM employees

SELECT *
FROM departments
--Emp Id , Name , Salary, Deparment Name
SELECT E.employee_id  'Emp Id',E.first_name 'Name',salary,d.department_name 'Deparment Name'
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
ORDER BY E.salary




SELECT E.employee_id  'Emp Id',E.first_name 'Name',salary,d.department_name 'Deparment Name'
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE D.department_name = 'Executive'
ORDER BY E.salary