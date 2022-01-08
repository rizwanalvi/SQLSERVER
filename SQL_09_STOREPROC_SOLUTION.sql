--CREATE DATABASE TABLE
	--FOODTYPE (ID,FOODTYPE)
	--MENU(ID,FOODNAME,PRICE,FOODTYPE)
CREATE DATABASE FDBD
USE FDBD
CREATE TABLE FOODTYPE(
ID INT IDENTITY,
FOODCAT VARCHAR(150),
PRIMARY KEY(ID)
)
CREATE TABLE MENU(
ID INT IDENTITY,
FOODNAME VARCHAR(150),
PRICE FLOAT,
FOODID INT,
PRIMARY KEY(ID),
FOREIGN KEY (FOODID) REFERENCES FOODTYPE(ID)
)



--INSERT DATA IN TABLES
	-- FOODTYPE
		--CONTINENTIAL
		--CHINES
		--FASTFOOD
		--MEXICAN FOOD
	--MENU
		--FRIED RICE-230
		--Crispy Calamari Rings-150
		--ZINGER BURGER-350
		--BROAST-250
		--Chicken with Chestnuts-560
		--Butterfly Prawns-250
		--Chicken Egg Vegetable Rolls-900
		--Spicy Schezwan Chicken-450
		--
SELECT * FROM FOODTYPE
INSERT INTO FOODTYPE VALUES('CONTINENTIAL'),('CHINES'),('FASTFOOD'),('MEXICAN FOOD')
SELECT * FROM MENU
INSERT INTO MENU VALUES ('FRIED RICE',230,2),('Crispy Calamari Rings',150,2)
,('ZINGER BURGER',350,3),('BROAST',250,3),('Butterfly Prawns',250,4),('Chicken Egg Vegetable Rolls',900,2)




CREATE VIEW MENU_VW
AS
SELECT M.ID,M.FOODNAME,M.PRICE,F.FOODCAT FROM MENU m
INNER JOIN FOODTYPE f
ON M.FOODID = F.ID

SELECT * FROM MENU_VW

--Create Store Procedure that Add New Food Type --spAddFoodType
SELECT * FROM FOODTYPE
CREATE PROC spAddFoodType
@FOODCAT VARCHAR(150)
AS
BEGIN
INSERT INTO FOODTYPE VALUES(@FOODCAT)
END
spAddFoodType 'THAI'


--Create Store Procedure that Update Food Type Name --spUpdateFoodName
SELECT * FROM FOODTYPE
CREATE PROC spUpdateFoodName
@ID INT,
@FOODNAME VARCHAR(150)
AS
BEGIN
UPDATE FOODTYPE SET FOODCAT = @FOODNAME WHERE ID =@ID
END
spUpdateFoodName 1,'CONTINENTAL'

--Create Store Procedure that Add New Menu Item Food Type And Price --spAddMenuItem
SELECT * FROM MENU
--Create Store Procedure that Update Food Price --spUpdatePrice
--Create Store Procedure that Add Customer
--Create Store Produce that Add New Order of Customer
--Complex Store Procedures---
--Create Store Procedure that Add New FoodType and Menu Item at once
--Create Store Procedure that Add Customer and Order at once
--Create Store Procedure that show orders of Customer and there quantity with rates
