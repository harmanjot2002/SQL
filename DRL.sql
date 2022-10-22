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

-- betbonusween clause --
SELECT * FROM salary WHERE salary BETWEEN 80000 AND 100000;

-- OR vs IN clause --
SELECT * FROM worker where DEPARTMENT='HR' OR DEPARTMENT='ADMIN';
SELECT * FROM worker WHERE department IN ('HR','ADMIN');

-- ANd/OR/NOT IN --
SELECT * FROM worker WHERE department NOT IN ('HR','ADMIN');

-- IS NULL --
SELECT * FROM worker;

-- WILDCARDS --
SELECT * from worker WHERE first_name LIKE '%i%';

-- Sorting using ORDER BY keyword --
SELECT * FROM worker ORDER BY salary;
SELECT * FROM worker ORDER BY salary DESC;

-- DISTINCT keyword --
SELECT DISTINCT department FROM worker;

-- Grouping data using GROUP BY keyword --
-- GROUP BY keyword is generally used wih aggregation functions --

SELECT DEPARTMENT FROM worker GROUP BY DEPARTMENT;
-- COUNT
SELECT DEPARTMENT,COUNT(DEPARTMENT) FROM worker GROUP BY DEPARTMENT;

-- AVG salary from department
SELECT DEPARTMENT,AVG(SALARY) FROM worker GROUP BY DEPARTMENT;

-- MIN
SELECT DEPARTMENT,MIN(SALARY) AS MINI FROM worker GROUP BY DEPARTMENT;

-- SUM
SELECT DEPARTMENT,SUM(SALARY) FROM worker GROUP BY DEPARTMENT;

-- HAVING CLAUSE
/*
	1.WHERE clause is used to filter rows from table based on specific condition.
    HAVING clause is used to filter rows from groups based on specific condition.
    2.HAVING clause is used after GROUP BY clause,but WHERE is used before GROUP BY.
    3.If you are using HAVING,GROUP BY is necessary.
    4.WHERE can be used with SELECT,UPDATE and DELETE keywords,while GROUP BY is used with SELECT.
*/

SELECT DEPARTMENT,COUNT(DEPARTMENT) FROM worker GROUP BY DEPARTMENT;
SELECT DEPARTMENT,COUNT(DEPARTMENT) FROM worker GROUP BY DEPARTMENT HAVING COUNT(DEPARTMENT)>2;
