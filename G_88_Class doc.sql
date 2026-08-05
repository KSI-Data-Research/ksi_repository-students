/*
 Class: 01 
-- Today: July 8th, 2026
-- Instructor: Khondaker Islam 
--*/
use [HRDatasets]
GO

Select 
	First_name, 
	last_name, 
	job_id,
	salary
from Employees


--Select * from employees


Select *
from [Person].[Address]

/*
 Class: 02
-- Today: July 13th, 2026
-- Instructor: Khondaker Islam 
--*/

Create Database HRDatasets
----start working with basic queries.
--and upload worldPopulation dataset. 


/*
 Class: 02
-- Today: July 20th, 2026
-- Instructor: Khondaker Islam 
--*/

use [HRDatasets]

Select *
from countries


---1) Fetch all data from the employee table.
Select *
from employees
--2) Retrieve the top ten rows from the employee table.
Select top 5 *
from employees

--3) Fetch the last name, job ID, and salary from the employee table.
Select 
		last_Name,
		job_id, 
		salary
from employees 



--4) Fetch the first two rows from the employee table.
Select top 2 *
from employees
--5) Fetch all information for the employee 'King (last name)’.
Select * 
From employees 
where last_name = 'King'
--6) Assign aliases for Employee ID, Last Name, and salary columns, and display results.

Select 
		employee_id  'emp  ID',
		last_name as 'Last Name',
		salary as Income
from employees

--7) Fetch last name 'Chen', 'Austin', and 'King’ using columns employee ID, last name, and salary.

Select 
		employee_id , 
		last_name ,
		salary
from employees
where last_name in ('King','Austin','Chen')
--8) Retrieve employee  data between employee id 100 and 105.
Select * 
From employees
where employee_id between 100 and 156

--9) Fetch names using the like operator(following a, b, c)

--a) People whose first name starts with 'Al’
Select * 
from employees
where first_name like 'AL%' 
--b) People whose first name ends with 'Al’

Select * 
From employees
where first_name like '%AL'


--c) Find people whose first name  will have ‘am’
Select * 
From employees
where first_name like '%AM%'
----########################################
/*
 Class: 03
-- Today: July 22th, 2026
-- Instructor: Khondaker Islam 
--*/
----########################################
--10) Fetch employees first name  with a salary of more than 16,000 dollars.
	Select 
		  first_name,
		  salary 
	from employees 
	where salary > 16000
			

--11) Retrieve the first names of employees whose salaries are $5,000 or less.
Select 
		First_name,
		salary 
from employees 
where salary <= 5000
--12) Retrieve the first names of employees whose salaries are greater than 8000 and less than 9000.
Select 
		First_name,
		salary 
from employees 
where salary > 8000 
and salary <9000

Select 
		* 
from employees 
where salary > 8000 
and salary <9000

--13) Retrieve employee data while excluding salary value 8000.

Select *
from employees
where salary <> 8000

Select Distinct *
from employees
where salary != 8000
--14) Fetch unique jobs ID from the employee table.
Select distinct 
		Job_id
from employees
--15) Fetch  data and show the difference uses of  AND / OR  operators in a Where Clouse. 
  Select * 
  from employees
  where employee_id = 100
  and department_id = 90

   Select * 
  from employees
  where employee_id = 100
  or department_id = 90
--16) Fetch employee table sorted by salary in a descending and Ascending order. 

   Select top 10 * 
  from employees
  order by salary desc

  SELECT top 10 employee_id
      ,first_name
      ,last_name
      ,[email]
      ,[phone_number]
      ,[hire_date]
      ,[job_id]
      ,[salary]
      ,commission_pct
      ,[manager_id]
      ,[department_id]
  FROM [HRDatasets].[dbo].[employees]
order by salary desc

--17) Fetch the last two rows from the employee table.
Select top 2 * 
from employees 
order by employee_id desc


--18) Fetch data where employees get a commission NULL
Select * from employees 
where [commission_pct] is  NULL

--19) Fetch data where employees get a commission ZERO
Select * from employees 
where [commission_pct] = 0

Select * from employees 
where [commission_pct] is not NULL
--------------------------------------------Schema

Select * from HRDatasets.dbo.employees 



---------------
----########################################
/*
 Class: 04
-- Today: July 27th, 2026
-- Instructor: Khondaker Islam 
-- Start date: July 8th, 2026
-- End date: August 9th, 2026
--*/
----########################################

Create schema Ksidataresearch_2026_

Create table Ksidataresearch_2026_.newtable
(id int)

Select * 
from [HRDatasets].Ksidataresearch_2026_.newtable

----data type 
----learning Aggreagation of SQL 

Select *
from employees 

Select 
		department_id,
		SUM(salary) as total_sal
from employees 

group by department_id


----########################################
/*
 Class: 05
-- Today: August 3rd, 2026
-- Instructor: Khondaker Islam 
-- Start date: July 8th, 2026
-- End date: August 9th, 2026
--*/
----########################################

use [HRDatasets]
GO
Select * from employees
Select * from departments
Select 
		last_name, 
		first_Name, 
		salary,
		Department_name
from employees

-------------------------------
Create database Practices

use practices
GO

CREATE TABLE emp
(
 emp_ID int NOT NULL Primary key,
 Names varchar (50) NULL,
 Salary int NULL,
 dept_ID int  NULL
)
insert into emp values(100,'Smith',800,1)
insert into emp values(101,'Alen',1600,2)
insert into emp values(102,'Ward',1250,2)
insert into emp values(103,'Jones',600,NULL)


CREATE TABLE dept
(
dept_ID int NOT NULL Primary key,
dept_name varchar(20) NULL,
Locations varchar(50) NULL
)

insert into dept values(1,'Accounting','New York')
insert into dept values(2,'Research','Dallas')
insert into dept values(3,'Sales','Chicago')
insert into dept values(4,'Operations','Boston')

Select * from emp 
Select * from dept

---------------------- JOIN

--Select 
--		Names,
--		Salary,
--		dept_name
--from emp 
--JOIN dept on emp.dept_ID = dept.dept_id

Select 
		*
from emp 
JOIN dept on emp.dept_ID = dept.dept_id


Select 
		*
from emp  e
JOIN dept d on e.dept_ID = d.dept_id