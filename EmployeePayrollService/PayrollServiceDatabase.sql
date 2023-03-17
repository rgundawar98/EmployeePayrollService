
          /* Section 1: MSSQL DB */

/*UC1 Create Database*/
Create Database PayrollServiceDatabase
Use PayrollServiceDatabase
/*UC2 Create Table */
Create table EmployeePayroll
(
   EmployeeId int identity primary key, 
   EmpName varchar(250),
   Salary float,
   StartDate DateTime
)

/*UC3 Insert into*/
Insert into EmployeePayroll values('Rajesh',400000.00,GetDate())
Insert into EmployeePayroll values('Harish',450000.00,GetDate())
Insert into EmployeePayroll values('Neha',500000.00,GetDate())
Insert into EmployeePayroll values('Hari',550000.00,GetDate())
Insert into EmployeePayroll values('Sagar',600000.00,GetDate())
Insert into EmployeePayroll values('Shivani',650000.00,GetDate())
Insert into EmployeePayroll values('Om',85555.44,'2023-01-23')
/*Uc4 Display */
Select * from EmployeePayroll
/*UC5 retrieve salary data */
/*retrieve salary data for a particular employee*/
Select Salary from EmployeePayroll where EmpName='Shivani' 
/*employees who have joined in a particular data range*/
Select *from EmployeePayroll where StartDate Between '2023-01-23' and getdate()
/*UC6 Alter gender to the table*/
alter table EmployeePayroll add Gender char(1) 
/*Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender*/
 update EmployeePayroll set gender='M' where EmployeeId =4
 update EmployeePayroll set gender='F' where EmployeeId= 3 
 /*UC7*/
 /*Ability to find sum, average, min, max and number of male and female employees*/
 Select sum(Salary) from EmployeePayroll where gender='F' Group By gender;
 Select sum(Salary) from EmployeePayroll where gender='M' Group By gender;
 Select avg(salary) from EmployeePayroll
 Select sum(salary) from EmployeePayroll
 Select min(salary) from EmployeePayroll
 Select max(salary) from EmployeePayroll

 

 