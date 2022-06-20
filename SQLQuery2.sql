create database EmpPayRollServices
use EmpPayRollServices

create table EmpPayRoll
(
ID int IDENTITY(1,1) primary key,
Name varchar (20),
Salary int,
SatrtDate Date 
);