CREATE DATABASE MYDATA
USE MYDATA;
DROP TABLE EMP;
CREATE TABLE EMP(EMPID INT , EMP_SALARY INT);
SELECT * FROM EMP
/*CREATE TABLE EMP(EMPID INT , EMP_SALARY INT,  PRIMARY KEY(EMPID) );*/
INSERT INTO EMP (EMPID,EMP_SALARY) VALUES (1003,6000);
INSERT INTO EMP (EMPID,EMP_SALARY) VALUES (1002,6000);
INSERT INTO EMP (EMPID,EMP_SALARY) VALUES (1001,6000);
INSERT INTO EMP (EMPID,EMP_SALARY) VALUES (1004,5000);
INSERT INTO EMP (EMPID,EMP_SALARY) VALUES (1005,7000);
SELECT * FROM EMP;


/*----------------INDEX EXAMPLES------------------------*/

/* -------------BAISC SYNTAX----------LOGICALLY SORTED-------*/
CREATE INDEX INDEX_EMPID ON EMP (EMPID);
SELECT * FROM EMP;

/*------- DROP INDEX-------*/
DROP INDEX INDEX_EMPID ON EMP;

/* CREATE UNIQUE INDEX ON TABLE---SORT DATA LOGICALLY-*/
CREATE UNIQUE INDEX  INDEX_EMPID_UNIQUE ON EMP (EMPID);
SELECT * FROM EMP;
DROP INDEX INDEX_EMPID_UNIQUE ON EMP;

/* CREATE CLUSTER INDEX ON TABLE--SORT DATA PHYSICALLY--*/
CREATE CLUSTERED INDEX  INDEX_EMPID_CLUSTERED ON EMP (EMPID);
SELECT * FROM EMP;
DROP INDEX INDEX_EMPID_CLUSTERED ON EMP;

/* ---CREATE CLUSTER INDEX ON TABLE--SORT DATA PHYSICALLY--*/
CREATE NONCLUSTERED INDEX  INDEX_EMPID_NONCLUSTERED ON EMP (EMPID);
SELECT * FROM EMP;
DROP INDEX INDEX_EMPID_NONCLUSTERED ON EMP;
SELECT * FROM EMP;


USE EShop
SELECT * FROM CATEGORY

SELECT * FROM PRODUCTS
SELECT * FROM SALES

CREATE PROC spSaleProduct
@ID INT,
@QUANTITY INT
AS
BEGIN
UPDATE PRODUCTS SET QUANTITY = QUANTITY-@QUANTITY 
WHERE ID = @ID
INSERT INTO SALES VALUES(@ID,@QUANTITY,GETDATE())
END
spSaleProduct 1,6




SELECT S.ID,P.PRONAME,S.QUANITY,S.SALEDATE FROM PRODUCTS p
INNER JOIN SALES s
ON P.ID = S.PRO_ID