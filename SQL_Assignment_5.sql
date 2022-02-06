USE ORG;
select * from Worker


#Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
Select * from Worker where FIRST_NAME not in ('Vipul','Satish');

#Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
Select * from Worker where FIRST_NAME like '_____h';

#Q-3. Write a query to validate Email of Employee.
CREATE TABLE Employee
(
    s_id varchar(20),
    s_name varchar(20),
    s_branch varchar(20),
    s_email varchar(100)
);

INSERT INTO Employee VALUES
('19102001','JOHNSON','E.C.E','john432@gmail.com'),
('19102002','VIVEK','E.C.E','VIVEK2252gmail.com'),
('19102003','DINESH','E.C.E','dineshg@gmail.com'),
('19102004','HARSHA','E.C.E','hARsha302@gmail.com'),
('19102005','DAVID','E.C.E','david2000@gmail.com'),
('19102006','NAVIN','E.C.E','navin00'),
('19102007','VINAY','E.C.E','Vinay24mail.com'),
('19102001','JOHNSON','C.S.E','john4325@gmail.com');

SELECT * FROM Employee WHERE s_email LIKE '%@gmail.com';