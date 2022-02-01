USE ORG;
select * from Worker
#Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substr(FIRST_NAME,1,3) from worker

#Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';

#Q-3. Write an SQL query to print the name of employees having the highest salary in each department.

SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker t on TempNew.DEPARTMENT=t.DEPARTMENT 
 and TempNew.TotalSalary=t.Salary;