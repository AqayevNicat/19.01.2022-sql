create database myDatabase1

use myDatabase1

CREATE TABLE Employees
(
	Id int primary key identity,
	FullName nvarchar(25),
	Salary nvarchar(25),
	DepartmentId int references Departments(Id)
)

ALTER TABLE Employees
ADD CONSTRAINT CK_SALARY Check(Salary > 0)

ALTER TABLE Employees
ADD CONSTRAINT CK_FULLNAME Check(LEN(Fullname) > 0)

CREATE TABLE Departments
(
	Id int primary key identity,
	Name nvarchar(25)
)

ALTER TABLE Departments
ADD CONSTRAINT CK_DEPARTMENTS Check(LEN(Name) > 0)