-- Print the number of books in the database
SELECT COUNT(title) FROM books;

-- Print out how many books were released in each year
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- Print the total number of books in the stock
SELECT SUM(stock_quantity) FROM books;

-- Find the avg released year for each author
SELECT CONCAT(author_fname, ' ', author_lname) AS author, AVG(released_year) FROM books GROUP BY author;

-- Find the full Name of the author who wrote the longest book
SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books WHERE pages = (
	SELECT MAX(pages) FROM books
);

-- Make this happen (exercise on slide)
SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM
    books
GROUP BY released_year
ORDER BY released_year;