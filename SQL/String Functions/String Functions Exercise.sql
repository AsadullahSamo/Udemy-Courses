-- Reverse and Uppercase the following Sentence
--  "Why does my cat look at me with such hatred?"
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?')) AS REVERSE;


-- Replaces spaces with -> in title
SELECT REPLACE(title, ' ', '->') AS title FROM books;

SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

-- Full name in caps
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;

-- Take title and release year of each book and make a sentence
SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM books;

-- Print title and their length
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS short_title, 
	   CONCAT(author_lname, ',', author_fname) AS author,
	   CONCAT(stock_quantity, ' in stock') AS quantity 
       FROM books WHERE released_year = 2001;
       