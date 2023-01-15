USE book_shop;

-- REPLACE(str, from str, to str)  --> e.g. REPLACE('Asad Samo', 'Asad', 'Junaid')     --> Now asad will be replaced with Junaid
SELECT REPLACE(title, ' ', '-') AS title FROM books;

-- REVERSE(String arg)  --> reverses the string
-- Q: Combine name with its reverse
SELECT CONCAT('Asad', REVERSE('Asad')) AS name;

-- CHAR_LENGTH(String arg)  --> Tells number of characters in a String (Also LENGTH(String arg) which returns number of characters in bytes)
SELECT CHAR_LENGTH(title), title FROM books;

-- UPPER(String str) AND LOWER(String str) --> Turns String into Uppercase OR Lowercase 

-- INSERT(String str, int start, int numOfCharsToReplace, String newStr) --> Inserts a substring in a String
SELECT INSERT('Hello Tomb Raider', 6, 0, ' There') AS 'Insert';    -- Insert There at position 6 while replacing 0 chars in Hello Tomb Raider

-- LEFT(String str, int numOfChars) AND RIGHT(String str, int numOfChars)  --> returns number of characters specified at left or right

-- REPEAT(str, numOfTimesToRepeat) --> Repeat String at given number of times
SELECT REPEAT('ha', 4);

	SELECT TRIM(LEADING '.' FROM '.....Asad') AS TRIM;  -- OR SELECT TRIM(TRAILING '.' FROM 'Asad....') AS TRIM;  OR SELECT TRIM(BOTH '.' FROM '...Asad....') AS TRIM;


