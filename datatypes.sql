-- signed and unsigned int unsigned tinyint takes values between 0-127 --

CREATE TABLE student1(
	id INT PRIMARY KEY,
    roll INT UNSIGNED,
    name VARCHAR(255)
);

SELECT * FROM student1;