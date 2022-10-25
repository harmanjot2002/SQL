/*
	DML:
		1.Insert
        2.Update
        3.Delete
        4.Rename
*/

use temp;
CREATE TABLE customer(
	id integer PRIMARY KEY,
    cname varchar(255),
    address varchar(255),
    gender char(2),
    city varchar(255),
    pincode integer
);

INSERT INTO customer VALUES(1252,'Ram Kumar','UP','M','AGRA',123);

UPDATE customer SET address='MUMBAI',city='Dadar' WHERE id='1252';

/*
Update multiple rows:
	SET SQL_SAFE_UPDATES=0;	
	UPDATE customer SET pincode='110000';
*/

-- On UPDATE CASCADE

SET SQL_SAFE_UPDATES=0;
DELETE FROM customer;

/*
 ON DELETE CASCADE:
	FOREIGN KEY(CUST_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE;
*/

/*
ON DELETE SET NULL
	FOREIGN KEY(CUST_ID) REFERENCES CUSTOMER(ID) ON DELETE SET NULL;
*/

REPLACE INTO customer(id,city) VALUES(120,'MOGA');

SELECT * FROM customer;