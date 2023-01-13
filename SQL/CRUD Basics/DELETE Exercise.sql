-- DELETE all 4 year old cats
DELETE FROM cats WHERE age = 4;
SELECT * FROM cats;

-- DELETE cats Whose age is same as their cat_id
DELETE FROM cats WHERE age = cat_id;
SELECT * FROM cats;

-- Delete All the cats
DELETE FROM cats;
SELECT * FROM cats;