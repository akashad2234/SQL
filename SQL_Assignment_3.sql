USE ORG;
select * from Worker


#Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
SELECT RTRIM(FIRST_NAME) FROM Worker;

#Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
SELECT DISTINCT character_length(DEPARTMENT) FROM Worker;

#Q-3. Write an SQL query to fetch nth max salaries from a table.

SELECT distinct SALARY from Worker a WHERE n >= (SELECT count(distinct SALARY) from Worker b WHERE a.SALARY <= b.SALARY) order by a.SALARY desc;


