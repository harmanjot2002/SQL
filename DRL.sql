/*
	Data Read LAnguage/Data Query Language:
		Select
*/

SELECT * FROM worker;
SELECT salary from worker;
SELECT first_name,salary from worker;

-- Use Select without FROM clause --
SELECT 4+5;
SELECT now();
SELECT ucase('harman');

-- where clause --
SELECT * from worker WHERE salary>100000;
SELECT * from worker WHERE department='HR';

-- between clause --
SELECT * FROM salary WHERE salary BETWEEN 80000 AND 100000;

-- OR vs IN clause --
SELECT * FROM worker where DEPARTMENT='HR' OR DEPARTMENT='ADMIN';
SELECT * FROM worker WHERE department IN ('HR','ADMIN');

-- ANd/OR/NOT IN --
SELECT * FROM worker WHERE department NOT IN ('HR','ADMIN');