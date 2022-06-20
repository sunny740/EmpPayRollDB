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

 --Insert Into EmpPayRoll(Name, Salary, SatrtDate,Gender) values('Ambika',23500, 2018-01-03);

Alter table EmpPayRoll Add PhoneNumber bigint, Address varchar(50), Department varchar(30);

select * from EmpPayRoll;

   Alter table EmpPayRoll  Add Pay decimal(10), Deduction decimal(10), TaxablePay decimal(10), IncomeTax decimal(10), NetPay decimal(10) ;

  Update EmpPayRoll Set PhoneNumber='9187248525', Address='Delhi', Department='Sales' ,Pay=200, Deduction=650, TaxablePay=400, IncomeTax=900, NetPay=2150 where Id=2;

  

  Insert into EmpPayRoll(Name,Salary,SatrtDate,PhoneNumber,Address,Deduction,TaxablePay,NetPay,Gender) Values
('Terisa',35000,'2018.jun.10','7875278951','bhilai',1000,2000,18000,'F');

select * from EmpPayRoll;

create table Departmenttable
(
Id int,
Department varchar (20)
constraint Departmenttable_foreign_Key_ID foreign key(ID) references Emppayroll(ID) on delete cascade

);
Insert into Departmenttable select ID, Department from EmpPayRoll; 

select * from Departmenttable;