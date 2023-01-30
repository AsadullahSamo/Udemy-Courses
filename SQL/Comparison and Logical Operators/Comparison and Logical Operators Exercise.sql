-- 0
-- 1
-- 1

-- Select all books written before 1980 (not inclusive)
SELECT title FROM books WHERE released_year < 1980;

-- Select all books whose author lname is either Eggers OR Chabon
SELECT title FROM books WHERE author_lname IN('Eggers', 'Chabon');

-- SELECT books WHERE author_lname is Lahiri AND published after 2000;
SELECT title FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

-- Select all books where author name starts with C or S
SELECT title, author_lname FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

-- If title contains stories --> Short Stories
-- Just Kids and A Heartbreaking Work--> Memoir
-- Everything Else -> Novel

SELECT title, author_lname, 
CASE
	WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title LIKE '%Just Kids%' OR title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
    ELSE 'Novel'
    END AS TYPE
FROM books;

-- Make This Happen
SELECT author_fname, author_lname,
CASE
	WHEN COUNT(title) = 1 THEN '1 book'
    ELSE CONCAT(COUNT(title), ' books')
    END AS COUNT
FROM books
GROUP BY author_fname, author_lname; 