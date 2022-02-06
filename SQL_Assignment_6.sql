
#Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.
Select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;

#Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');

SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;

#Q-3. How to remove duplicate rows from Employees table.
CREATE TABLE Employees (  
id INT PRIMARY KEY AUTO_INCREMENT,  
first_name VARCHAR(30) NOT NULL,  
last_name VARCHAR(25) NOT NULL,   
    email VARCHAR(210) NOT NULL,  
    age VARCHAR(22) NOT NULL  
);  

INSERT INTO Employees (first_name,last_name,email,age)   
VALUES ('Kavin','Peterson','kavin.peterson@verizon.net','21'),  
       ('Nick','Jonas','nick.jonas@me.com','18'),  
       ('Peter','Heaven','peter.heaven@google.com','23'),  
       ('Michal','Jackson','michal.jackson@aol.com','22'),  
       ('Sean','Bean','sean.bean@yahoo.com','23'),  
       ('Tom ','Baker','tom.baker@aol.com','20'),  
       ('Ben','Barnes','ben.barnes@comcast.net','17'),  
       ('Mischa ','Barton','mischa.barton@att.net','18'),  
       ('Sean','Bean','sean.bean@yahoo.com','16'),  
       ('Eliza','Bennett','eliza.bennett@yahoo.com','25'),  
       ('Michal','Krane','michal.Krane@me.com','25'),  
       ('Peter','Heaven','peter.heaven@google.com','20'),  
       ('Brian','Blessed','brian.blessed@yahoo.com','20');
       
       select * from Employees
       
DELETE e1 FROM Employees e1  
INNER JOIN Employees e2   
WHERE  
    e1.id > e2.id AND  
    e1.email = e2.email;  