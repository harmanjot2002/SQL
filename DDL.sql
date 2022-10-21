-- create database --
CREATE DATABASE temp;

-- using this database --
USE temp;

/*
	To delete whole database:
		>>DROP DATABASE IF EXISTS temp;
*/

/*DDL commands:
	1.create
    2.alter
    3.drop
    4.truncate
    5.rename
*/

-- create table in temp database --
CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- insert into table --
INSERT INTO student VALUES(1,'Ankit');

SELECT * FROM student;