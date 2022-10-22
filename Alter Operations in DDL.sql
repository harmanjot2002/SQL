/*
	Alter Operations in DDL:
		1.Add a column
        2.Modify datatype of column
        3.Change column name
        4.Drop table
        5.Rename table name
*/

use temp;

CREATE TABLE account(
	id int PRIMARY KEY,
    name varchar(255) UNIQUE,
    balance int NOT NULL DEFAULT 0
);

-- Add new column
ALTER TABLE account ADD COLUMN interest float NOT NULL DEFAULT 0;

SELECT * FROM account;

-- Modify data type
ALTER TABLE account MODIFY COLUMN interest double;

DESC account;

-- Rename column 
ALTER TABLE account CHANGE interest saving_interest float;

-- Drop column
ALTER TABLE account DROP COLUMN saving_interest;

-- Rename table
ALTER TABLE account RENAME TO account_details;

SELECT * FROM account_details;