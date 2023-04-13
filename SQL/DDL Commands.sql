USE mydb;
CREATE Table Students(
Id INT NOT NULL, 
Name VARCHAR(45) NOT NULL,
PRIMARY KEY(`Id`)
);

INSERT INTO Students VALUES(1, 'Asad');
INSERT INTO Students VALUES(2, 'Moiz');
INSERT INTO Students VALUES(3, 'Waryal');
INSERT INTO Students VALUES(4, 'Uzair');
INSERT INTO Students VALUES(5, 'Abbas');
INSERT INTO Students VALUES(6, 'Hassan');
INSERT INTO Students VALUES(7, 'Lahad');
-- SELECT * FROM Students;

ALTER TABLE Students ADD(GRADE VARCHAR(45), Roll_Number INT);
INSERT INTO Students VALUES(8, 'Junaid', 'A+', 03);
SELECT * FROM Students;
     