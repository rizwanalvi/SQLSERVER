﻿CREATE DATABASE SMSDB
USE SMSDB

CREATE TABLE STUDENT(
ID INT IDENTITY ,
STDNAME VARCHAR(100),
EMAILID VARCHAR(255) UNIQUE NOT NULL,
STDFEE FLOAT,
SNAME NVARCHAR(150),
PRIMARY KEY(ID)
);
SELECT * FROM STUDENT


INSERT INTO STUDENT VALUES('AHMED KHAN','a1@gmail.com',2500,N'احمد')
INSERT INTO STUDENT VALUES('SALMAN KHAN','salman@gmail.com',2500,N'سلمان')
INSERT INTO STUDENT VALUES('FARHAN KHAN','salman@gmail.com',2500,N'فرحان')
SELECT * FROM STUDENT








DROP TABLE STUDENT
TRUNCATE TABLE STUDENT
DROP DATABASE SMSDB




CREATE DATABASE FOODS
USE FOODS
CREATE TABLE FOODCAT(
FOODID INT IDENTITY,
CATNAME VARCHAR(150) NOT NULL UNIQUE,
PRIMARY KEY(FOODID)
)

CREATE TABLE MENU(
ID INT IDENTITY,
FOODNAME VARCHAR(150) NOT NULL,
PRICE FLOAT,
FOODID INT,
PRIMARY KEY(ID),
FOREIGN KEY(FOODID) REFERENCES FOODCAT(FOODID)
)
SELECT * FROM FOODCAT
SELECT * FROM MENU
INSERT INTO FOODCAT VALUES('THAI')
INSERT INTO MENU VALUES('THAI RICE',2500,2)
INSERT INTO MENU VALUES('RED SNIPPER RICE',2500,1)