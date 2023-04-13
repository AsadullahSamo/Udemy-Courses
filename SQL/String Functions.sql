USE mydb;
SELECT * FROM people;

SELECT UPPER(first_name) FROM people;           -- ALSO LOWER(arg), ALSO REVERSE(args), ALSO REPLACE("John Dalton", "Dalton", "Doe") --> Replace Dalton with Doe
SELECT first_name, CHARACTER_LENGTH(first_name) FROM people;           -- ALSO LENGTH(arg) which count characters as bytes, but same result
SELECT CONCAT(first_name, "  ", last_name) AS 'Full Name' FROM people;
SELECT CONCAT_WS("A", "B", "C", "D", "E", " - ") AS 'Full Name' FROM people;      -- ADD First word/number with every string/number after it excluding last
SELECT LTRIM("      Asad") AS LTRIM FROM people;       -- ALSO RTRIM(arg), TRIM(arg)
SELECT POSITION('a' IN 'Asadullah Samo') AS POSITION;  -- ALSO INSTR(String str, String strToSearch), LOCATE('a', "Asadullah Samo", 3); --> It searches a from position 3 in Asadullah Samo
SELECT SUBSTRING('Asadullah Samo', 3) AS SUBSTRING;   -- select substring from position 3, ALSO MID(arg)
SELECT SUBSTRING('Asadullah Samo', -8, 3) AS SUBSTRING;   -- Go from last 8 characters and return 3 characters
SELECT SUBSTRING_INDEX('Asadullah samo', 'a', 2) AS 'SUBSTRING INDEX';  -- Search for second a and return all character at its left
SELECT LEFT('Asadullah Samo', 4) AS 'LEFT';      -- Returns 4 characters from left, ALSO RIGHT(String s, int no_of_characters)
SELECT RPAD('Asad', 9, 'B') AS 'RPAD';      -- String is of 9 length and add B with remaining position, ALSO LPAD()
SELECT SPACE(100) AS SPACE;         -- Gives 100 spaces
SELECT strcmp("Asad", "Junaid") AS 'String compare';    -- returns 1 if length of 1st str > 2nd str, 0 if both are equal, -1 if length of 1st str < 2nd str
SELECT FIELD("Asad", "Junaid", "Mohsin", 'Asad') AS FIELD;    -- Search first arg from rest of list
SELECT ROUND(255.6789, 2) AS Round;    -- Rounds upto 2 length
