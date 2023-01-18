-- Titles that contain stories
SELECT title FROM books where title LIKE '%Stories%';

-- Find the longest book
SELECT title, pages FROM books 
ORDER BY pages DESC LIMIT 1;

-- Print a summary containing a title and year for the 3 most recent books
SELECT CONCAT(title, ' - ', released_year) AS summary FROM books
ORDER BY released_year DESC LIMIT 3;

-- Select all books with an author lname that contains a space
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- Find the three books with the lowest stock
SELECT title, released_year, stock_quantity FROM books
ORDER BY stock_quantity, title LIMIT 3;

-- Print title and author_lname, sorted first by author_lname then title
SELECT title, author_lname FROM books
ORDER BY author_lname, title;

-- Sort Alphabetically by author_lname and with Uppercase
SELECT UPPER(CONCAT('MY FAVORITE AUTHOR IS ', author_fname, ' ', author_lname, '!')) AS yell FROM books
ORDER BY author_lname;