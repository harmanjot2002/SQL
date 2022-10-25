/*
	Constraints:
			1.Primary Key
            2.Foreign Key
			3.check 
            4.Default
            5.Unique            
*/

use temp;
CREATE TABLE account(
	id int primary key,
    name varchar(255) unique,
    balance int NOT NULL default 200000,
	constraint acc_balance_chk check(balance>1000)
);

-- DROP TABLE account;

/*
INSERT INTO account(id,name,balance) values(1,'A',1000);
Above query output says that check constraint is violated. 
*/

INSERT INTO account(id,name,balance) values(1,'A',10000);
INSERT INTO account(id,name) values(2,'B');
SELECT * from account;