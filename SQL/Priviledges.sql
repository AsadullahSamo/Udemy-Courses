-- To create a user
CREATE USER 'awais'@'localhost' IDENTIFIED BY 'password';

-- To grant priviledges to user
GRANT INSERT ON book_shop.books TO 'awais'@'localhost'; -- [WITH ADMIN OPTION];     --> to grant priviledges with admin option

-- to grant session
GRANT GRANT OPTION ON *.* TO 'awais'@'localhost';

--  To see which priviledges are given to user
SHOW GRANTS FOR 'awais'@'localhost';

-- to grant all privileges
GRANT ALL PRIVILEGES ON exampledb.* TO 'asad'@'localhost';

-- to revoke priviledges
REVOKE SELECT ON exampledb.sometable FROM 'asad'@'localhost';