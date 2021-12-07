--SHOW ALL RECORDS OF EMPLOYEE TABLE
SELECT *
FROM employees

SELECT *
FROM departments

-- SELECT SPECIPIC COLUMNS 
SELECT employee_id 'EMP ID',first_name AS 'NAME',salary FROM employees

--EMP ID,LAST_NAME,EMAIL,SALARY,DEPATMENT_ID
SELECT employee_id 'EMP ID',last_name 'NAME',email 'EMAIL ID',SALARY 'SALARY', department_id 'DEPT NO' 
	FROM employees

-- APPLY AIRTHMATIC OPERATORS + / * % -

SELECT employee_id 'EMP ID',last_name 'NAME',email 'EMAIL ID',SALARY 'MONTHLY SALARY',salary * 12 'YEAR SALARY', 
	department_id 'DEPT NO' 
	FROM employees


SELECT employee_id 'EMP ID',last_name 'NAME',email 'EMAIL ID',(SALARY*0.1)+salary 'MONTHLY SALARY' 
FROM employees

SELECT employee_id,salary,commission_pct,(salary*commission_pct)+salary 
FROM employees

SELECT (first_name + ' IS A '+ job_id) 'NAME'
FROM employees