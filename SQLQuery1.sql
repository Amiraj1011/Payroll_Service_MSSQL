---UC1 : Ability to create payroll service database
create database payroll_services;
use payroll_services;

---UC2 : Ability create a employee payroll table in the payroll service database
CREATE TABLE employee_payroll (
	id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(200),
	salary float,
	startDate date
	);

---UC3 : Ability to create employee payroll data service database
INSERT INTO employee_payroll (name,salary,startDate) VALUES ('MSD',9999999.99,'2017-07-07'),('AMIR',1111111.11,'2021-01-15');

--UC4 : Ability to retrieve all the employee payroll data 
select * from employee_payroll;

---UC5 : Ability to retrieve salary data for particular employee
select id,name from employee_payroll where name = 'AMIR';
select * from employee_payroll where startDate between cast('2020-01-02' as date) and getdate();


