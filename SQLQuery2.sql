create database EmpPayRollServices
use EmpPayRollServices

create table EmpPayRoll
(
ID int IDENTITY(1,1) primary key,
Name varchar (20),
Salary int,
SatrtDate Date 
);

insert into EmpPayRoll values('Jay',23000,'2019.APR.22')
insert into EmpPayRoll values('govind',20000,'2022.JUN.01')
insert into EmpPayRoll values('bhuppi',16500,'2013.MAY.15')
insert into EmpPayRoll values('rajesh',17000,'2014.FEB.22')

select * from EmpPayRoll

select Salary from EmpPayRoll where Name='Jay';

select SatrtDate from EmpPayRoll WHERE (SatrtDate BETWEEN '2019-04-22' AND GETDATE());

 Alter table EmpPayRoll Add Gender varchar(1);

 Update EmpPayRoll set Gender='M' where Id in(1,3);

 Update EmpPayRoll set Gender='F' where Id in(2,4);

 select Name from EmpPayRoll where Gender= 'F';

 select SUM(Salary) from EmpPayRoll;

 select SUM(Salary) from EmpPayRoll where Gender='F' group by Gender;

 select AVG(Salary) from EmpPayRoll where Gender='M' group by Gender;

 select MIN(Salary) from EmpPayRoll;

  select MAX(Salary) from EmpPayRoll;
 
 select COUNT(ID) from EmpPayRoll;
