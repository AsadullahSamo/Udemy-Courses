-- INSTEAD OF TYPING THIS QUERY ALL THE TIME...
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;
 
-- WE CAN CREATE A VIEW:
CREATE VIEW full_reviews AS
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;
 
-- NOW WE CAN TREAT THAT VIEW AS A VIRTUAL TABLE 
-- (AT LEAST WHEN IT COMES TO SELECTING)
SELECT * FROM full_reviews;

-- B. Updateable views
--  If a view does not violate any rule(mentioned in the docs) then we can update it, else we can't.

-- e.g. CREATE VIEW ordered_series AS 
--      SELECT * FROM series
--      ORDER BY released_year;         -- we can update this view, as this does not violate any rule mentioned on the docs. like

-- 	INSERT INTO ordered_series VALUES('The Great', 2020, 'Comedy'); etc



-- C.  Replacing/Altering Views
     CREATE OR REPLACE VIEW ordered_series AS 
     SELECT * FROM series
     ORDER BY released_year DESC; 

	-- or we can use alter (instead of create or replace)
	ALTER VIEW ordered_series AS
	SELECT * FROM series ORDER BY released_year;
 
	DROP VIEW ordered_series;      --  	(to delete view)

-- D. HAVING (filter results from grouped rows)
SELECT title, AVG(rating) FROM full_reviews
GROUP BY title HAVING title = 'Archer'; 

SELECT title, AVG(rating), COUNT(rating) AS review_count FROM full_reviews
GROUP BY title HAVING COUNT(rating) > 1; 


-- E. WITH ROLL UP
SELECT title, AVG(rating) FROM full_reviews
GROUP BY title WITH ROLLUP;     -- The last row will be summary for the entire table (In this case, it calculates average rating of all rows as a summary)

SELECT title, COUNT(rating) FROM full_reviews
GROUP BY title WITH ROLLUP;     -- The last row will be summary for the entire table (In this case, it counts all rows as a summary)

SELECT released_year, genre, AVG(rating) FROM full_reviews
GROUP BY released_year, genre;


-- F. SQL Modes
-- 1. 
SELECT @@GLOBAL.sql_mode;
-- 2. 
SELECT @@SESSION.sql_mode;
SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- STRICT_TRANS_TABLES --> means only values from same domain is permitable