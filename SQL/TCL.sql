-- All commands before rollback will be reverted
-- Rollback only works with INSERT, UPDATE or DELETE(Not with all SQL commands)
-- First uncheck "New connections use auto-commit mode" From Edit > Preferences > SQL Execution
use book_shop;

SELECT * FROM books;

UPDATE books SET title = 'Asad' WHERE book_id = 3;
ROLLBACK;

