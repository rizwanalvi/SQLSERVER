SELECT * FROM EMPLOYEES
SELECT * FROM departments
SELECT * FROM locations


SELECT * FROM EMPLOYEES e
INNER JOIN departments d
ON E.department_id = D.department_id
INNER JOIN locations l
ON d.location_id = L.location_id


CREATE VIEW EMPADD_VM
AS
SELECT e.employee_id,CONCAT(first_name,' ',last_name) 'emp name',d.department_name,CONCAT(l.state_province,l.street_address,l.postal_code) 'Address' FROM EMPLOYEES e
INNER JOIN departments d
ON E.department_id = D.department_id
INNER JOIN locations l
ON d.location_id = L.location_id

SELECT * FROM EMPADD_VM


CREATE VIEW DEPTEMPCOUNT_VM
AS
SELECT d.department_name,COUNT(employee_id) 'EMP COUNT' FROM EMPLOYEES e
INNER JOIN departments d
ON E.department_id = D.department_id
GROUP BY D.department_name

SELECT * FROM DEPTEMPCOUNT_VM



