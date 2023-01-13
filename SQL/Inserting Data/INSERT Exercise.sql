use mydb;
--  Create Table people 
-- 	. first_name - 20 char limit
--  . last_name - 20 char limit
--  . age
CREATE TABLE people(
	first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

--  Single Inserts
INSERT INTO people VALUES ('Tina', 'Belcher', 13);
INSERT INTO people VALUES ('Bob', 'Belcher', 42);
-- Multiple Inserts
INSERT INTO people 
VALUES ('Linda', 'Belcher', 45),
	   ('Philip', 'Frond', 38),
	   ('Calvin', 'Fischoeder', 45);
SELECT * FROM people;