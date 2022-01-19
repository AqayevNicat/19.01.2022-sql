CREATE DATABASE Market

USE Market

CREATE TABLE Products 
(
	Id int primary key identity,
	Name nvarchar(25),
	Price money
)

ALTER TABLE Products
ADD Brand nvarchar(25)

INSERT INTO Products(Name,Price,Brand)
VALUES ('Corek',0.7,'Erzaq'),
('Dana Eti',13,'Qastronom'),
('Paykek',2.3,'Sirniyyat'),
('Makaron',1.95,'Erzaq'),
('Benimo',0.9,'Sirniyyat'),
('Baliq',15,'Qastoronom'),
('Duyu',2.7,'Erzaq'),
('Corek',0.7,'Erzaq')

SELECT
* FROM Products WHERE Price > (SELECT AVG(Price) from Products)

SELECT
* FROM Products WHERE Price > 10

SELECT
(Name + ' ' + Brand) 'ProductInfo' FROM Products WHERE LEN(Brand) > 5