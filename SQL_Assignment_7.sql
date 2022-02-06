#1. Write an SQL query to show only odd rows from a table.
	SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) <> 0;
#2. Write an SQL query to clone a new table from another table.
CREATE TABLE WorkerClone LIKE Worker;