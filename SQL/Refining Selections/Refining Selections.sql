SELECT DISTINCT(author_lname) FROM books;

-- Select distinct author's full name, we can use both of below two 
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) AS 'Full Name' FROM books;
SELECT DISTINCT author_fname, author_lname FROM books;

-- B. ORDER BY
SELECT * FROM books;
SELECT author_fname, author_lname, pages FROM books 
ORDER BY author_fname;

-- ORDER BY (with multiple cols)
SELECT author_lname, released_year, title FROM books
ORDER BY author_lname, released_year;

-- ORDER BY With cols that are not in table, but we used as alias or concat etc
SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books
ORDER BY author;

-- LIMIT  --> Allow to control the number of results we get back
SELECT author_fname, author_lname, released_year FROM books
ORDER BY released_year LIMIT 5;            -- Returns first 5 rows with given cols sorted by released year  

-- LIMIT 2, 5    --> Starts from 3rd row and returns 5 rows
SELECT author_fname, author_lname, released_year FROM books
     ORDER BY released_year LIMIT 2, 2; 
     
-- LIKE -->  Better Searching  (Always used with wildCards --> %, _, *, [], [-] etc)
SELECT author_fname FROM books WHERE author_fname LIKE '%da%';

-- WildCards
-- 1. % --> Match in somewhere    e.g. '%n' --> end at n, 'a%' --> starts with a, '%ad%' --> ad present anywhere
-- 2. _ Exactly one character
SELECT author_fname FROM books WHERE author_fname LIKE '____';       -- --> it'will return every author who has 4 character in their length
-- 3. Escaping Wildcards   --> '%\%%' --> Means % sign anywhere