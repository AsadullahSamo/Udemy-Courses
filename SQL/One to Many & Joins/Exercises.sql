-- Task 01; 
CREATE TABLE students(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45)
);

CREATE TABLE papers(
	title VARCHAR(45),
    grade CHAR(2),
    student_id INT,
    foreign key(student_id) REFERENCES students(id)
);

SELECT first_name, title, grade FROM students
JOIN papers
ON students.id = papers.student_id
ORDER BY grade DESC;

SELECT first_name, title, grade FROM students
LEFT JOIN papers
ON students.id = papers.student_id;

SELECT first_name, IFNULL(title, 'MISSING') AS title, IFNULL(grade, 0) AS grade FROM students
LEFT JOIN papers
ON students.id = papers.student_id;

SELECT first_name, IFNULL(avg(grade), 0) AS average,
CASE 
		WHEN avg(grade) > 75 THEN 'PASSING'
        ELSE 'FAILING'
        END AS passing_status
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;


