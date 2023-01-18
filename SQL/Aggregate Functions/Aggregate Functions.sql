-- COUNT(arg)
SELECT COUNT(*) AS 'Count all rows' FROM books;      --  Count all rows from books
SELECT COUNT(author_fname) FROM books;               --  Count all author's first names
SELECT COUNT(DISTINCT author_fname) FROM books;      --  Count all distinct first names of author
-- Question: How many row contains the
SELECT COUNT(title) FROM books WHERE title LIKE '%the%';

-- GROUP BY --> 
-- Question: How many books written by each author
SELECT author_lname FROM books GROUP BY author_lname;          -- Group the rows from books table based on author_lname --> All author with same name will be grouped into one row and counted as one row
SELECT author_lname, COUNT(title) FROM books       -- Count all books written by each author, it counts all rows in each group, not all the table(that's what we are saying to this)
GROUP BY author_lname;
-- GROUP BY with multiple cols
SELECT author_fname, author_lname fROM books GROUP BY author_lname, author_fname;
SELECT CONCAT(author_fname, ' ', author_lname) AS author, COUNT(title) FROM books GROUP BY author;

-- MIN() AND MAX()
-- Question: Find minimum released year
SELECT MIN(released_year) FROM books;
SELECT MAX(pages) FROM books;
SELECT MIN(author_lname), MAX(author_lname) FROM books;      -- it finds min and max based on alphabetical order

-- MIN/MAX with GROUP BY
-- Question Find the year each author published their first book     (In other words, group all the author with same name, then find their min year)
SELECT CONCAT(author_fname, ' ', author_lname) AS author, MIN(released_year) FROM books
GROUP BY author_lname;
SELECT CONCAT(author_fname, ' ', author_lname) AS author, 
COUNT(*) AS books_written,
MIN(released_year) AS earliest_release, 
MAX(released_year) AS latest_release,
MAX(pages) AS longest_count
FROM books
GROUP BY author;

-- Subqueries
-- Question: What if I want the title of the longest book
-- Answer: we could either do
SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;  -- But if there were two books with same max pages we will only be shown one, whereas in Subquery, we will be shown both

-- OR by 
-- subquery
SELECT title, pages FROM books WHERE pages = (
	SELECT MAX(pages) FROM books
); 

-- Question: Find title of book that was released earlier

SELECT title, released_year FROM books WHERE released_year = (
	SELECT MIN(released_year) FROM books
);

-- SUM() --> sums the entire col
SELECT CONCAT(author_fname, ' ', author_lname) AS author, SUM(pages) FROM books GROUP BY author;       -- How many pages each author have written

-- AVG()   --> SUM()/COUNT()     It finds count
SELECT AVG(stock_quantity) FROM books;
-- Question: Calculate the avg stock quantity for books released in the same year
 SELECT AVG(stock_quantity) FROM books GROUP BY released_year;