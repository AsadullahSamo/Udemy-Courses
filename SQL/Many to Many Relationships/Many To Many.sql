-- Challenge #1
SELECT title, rating FROM series
JOIN reviews
ON series.id = reviews.series_id;

-- Challenge #2
SELECT title, ROUND(AVG(rating), 2) AS avg_rating FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating;

-- Challenge #3
SELECT first_name, last_name, rating FROM reviewers
JOIN reviews
ON reviewers.id = reviews.reviewer_id;

-- Challenge #4
SELECT title AS unreviewed_series FROM series
LEFT JOIN reviews
ON series.id = reviews.series_id
WHERE rating IS NULL;

-- Challenge #5
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY genre;

-- Challenge #6
SELECT first_name, last_name, 
COUNT(rating) AS COUNT, IFNULL(MIN(rating), 0) AS MIN, IFNULL(MAX(rating), 0) AS MAX, IFNULL(AVG(rating), 0) AS AVG, 
-- CASE
-- 	WHEN COUNT(rating) = 0 THEN 'INACTIVE'
--     ELSE 'ACTIVE'
--     END AS status  
-- we can use if function, if we've two choices, else we will use case
IF(COUNT(rating) = 0, 'INACTIVE', 'ACTIVE') AS status
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

-- Challenge #7
SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;
