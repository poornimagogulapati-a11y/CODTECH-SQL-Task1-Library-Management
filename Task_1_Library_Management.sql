CREATE DATABASE library_management;

USE library_management;

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    available_copies INT DEFAULT 0
);

INSERT INTO Books (title, author, category, price, available_copies)
VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', 350.00, 5),
('Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 299.00, 4),
('Clean Code', 'Robert C. Martin', 'Programming', 650.00, 3),
('Python Crash Course', 'Eric Matthes', 'Programming', 550.00, 6),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 300.00, 2);

SELECT * FROM Books;

SELECT * FROM Books
WHERE category = 'Programming';

SELECT * FROM Books
WHERE available_copies > 0;

SELECT
    category,
    COUNT(*) AS total_books
FROM Books
GROUP BY category;

SELECT
    category,
    ROUND(AVG(price), 2) AS average_price
FROM Books
GROUP BY category;

SELECT *
FROM Books
ORDER BY price DESC
LIMIT 1;

UPDATE Books
SET available_copies = available_copies + 1
WHERE book_id = 1;

SELECT * FROM Books;