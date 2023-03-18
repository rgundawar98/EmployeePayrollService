
          /* Section 1: MSSQL DB */

/*UC1 Create Database*/
Create Database PayrollServiceDatabase
Use PayrollServiceDatabase
/*UC2 Create Table */
Create table EmployeeDetails
(
   EmployeeId int identity primary key, 
   EmpName varchar(250),
   Salary float,
   StartDate DateTime,
   Phone varchar(250) NOT NULL,
   Address varchar(250) NOT NULL,
   Gender varchar(1),
   Department varchar(250)NOT NULL,
   /*UC9*/
   BasicPay float,
   Deduction float,
   TaxablePay float,
   IncomeTax float,
   NetPay float,
   City varchar(250),
   Country varchar(250)
)
drop table EmployeeDetails

/*UC3 Insert into*/
Insert into EmployeeDetails values('Rajesh',400000.00,GetDate(),'456456465','12th street','M','IT',10000.00,4500.00,5000.00,2580.00,300000,'Hyderabad','India')
Insert into EmployeeDetails values('Harish',450000.00,GetDate(),'446456465','Th street','IT',50000.00,4500.00,5800.00,8580.00,650000,'Delhi','India')
Insert into EmployeeDetails values('Neha',500000.00,GetDate(),'450456465','14th street','NGO',20000.00,6500.00,2000.00,2580.00,200000,'Pune','India')
Insert into EmployeeDetails values('Hari',550000.00,GetDate(),'400056465','16th street','Banking',40000.00,8500.00,8000.00,2580.00,500000,'Chennai','India')
Insert into EmployeeDetails values('Sagar',600000.00,GetDate(),'451156465','17th street','CEO',100000.00,45020.00,50100.00,258080.00,4000000,'Boston','USA')
Insert into EmployeeDetails values('Shivani',650000.00,GetDate(),'444456465','19th street','CTO',500000.00,45000.00,50000.00,255800.00,3000000,'Bangalore','India')
Insert into EmployeeDetails values('Om',85555.44,'2023-01-23','456455465','The street','HR',20000.00,4500.00,8000.00,1580.00,350000,'Coimbature','India')
/*UC10*/
Insert into EmployeeDetails values('Terissa',85555.44,'2018-01-23','456411165','Holy street','Sales&Marketing',20000.00,4500.00,8000.00,1580.00,350000,'Mumbai','India')
/*Uc4 Display */
Select * from EmployeeDetails
/*UC5 retrieve salary data */
/*retrieve salary data for a particular employee*/
Select Salary from EmployeeDetails where EmpName='Shivani' 
/*employees who have joined in a particular data range*/
Select *from EmployeeDetails where StartDate Between '2023-01-23' and getdate()
/*UC6 Alter gender to the table*/
alter table EmployeeDetails add Gender char(1) 
/*Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender*/
 update EmployeeDetails set gender='M' where EmployeeId =4
 update EmployeeDetails set gender='F' where EmployeeId= 3 
 /*UC7*/
 /*Ability to find sum, average, min, max and number of male and female employees*/
 Select sum(Salary) from EmployeeDetails where gender='F' Group By gender;
 Select sum(Salary) from EmployeeDetails where gender='M' Group By gender;
 Select avg(salary) from EmployeeDetails
 Select sum(salary) from EmployeeDetails
 Select min(salary) from EmployeeDetails
 Select max(salary) from EmployeeDetails

 /*UC8*/
 /*Ability to extend employee_payroll data to store employee information*/
 alter table EmployeeDetails add Phone varchar(250)  
 alter table EmployeeDetails add Address varchar(250) 
 alter table EmployeeDetails add Department varchar(250)


 

 