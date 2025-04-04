CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author VARCHAR(100),
    Publishedyear INT,
    availability BOOLEAN
); 

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
  

INSERT INTO Books (title, author, Publishedyear, availability) 
VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, TRUE),
('1984', 'George Orwell', 1949, TRUE),
('To Kill a Mockingbird', 'Harper Lee', 1960, TRUE),
('The Catcher in the Rye', 'J.D. Salinger', 1951, FALSE),
('Moby-Dick', 'Herman Melville', 1851, TRUE),
('War and Peace', 'Leo Tolstoy', 1869, TRUE),
('Pride and Prejudice', 'Jane Austen', 1813, TRUE),
('The Hobbit', 'J.R.R. Tolkien', 1937, TRUE),
('The Lord of the Rings', 'J.R.R. Tolkien', 1954, FALSE),
('Fahrenheit 451', 'Ray Bradbury', 1953, TRUE),
('Brave New World', 'Aldous Huxley', 1932, TRUE),
('Crime and Punishment', 'Fyodor Dostoevsky', 1866, TRUE),
('The Odyssey', 'Homer', -800, TRUE),
('The Divine Comedy', 'Dante Alighieri', 1320, TRUE),
('Jane Eyre', 'Charlotte Brontë', 1847, TRUE),
('The Picture of Dorian Gray', 'Oscar Wilde', 1890, TRUE),
('Wuthering Heights', 'Emily Brontë', 1847, TRUE),
('The Brothers Karamazov', 'Fyodor Dostoevsky', 1880, TRUE),
('Lord of the Flies', 'William Golding', 1954, TRUE),
('The Grapes of Wrath', 'John Steinbeck', 1939, TRUE),
('The Alchemist', 'Paulo Coelho', 1988, FALSE),
('The Little Prince', 'Antoine de Saint-Exupéry', 1943, TRUE),
('The Fault in Our Stars', 'John Green', 2012, TRUE),
('The Hunger Games', 'Suzanne Collins', 2008, TRUE),
('Dune', 'Frank Herbert', 1965, TRUE),
('Ender\'s Game', 'Orson Scott Card', 1985, TRUE),
('The Road', 'Cormac McCarthy', 2006, TRUE),
('The Shining', 'Stephen King', 1977, FALSE),
('The Stand', 'Stephen King', 1978, TRUE),
('It', 'Stephen King', 1986, TRUE),
('Dracula', 'Bram Stoker', 1897, TRUE),
('Frankenstein', 'Mary Shelley', 1818, TRUE),
('The Metamorphosis', 'Franz Kafka', 1915, TRUE),
('The Bell Jar', 'Sylvia Plath', 1963, TRUE),
('Catch-22', 'Joseph Heller', 1961, TRUE),
('Slaughterhouse-Five', 'Kurt Vonnegut', 1969, TRUE),
('The Outsiders', 'S.E. Hinton', 1967, TRUE),
('The Secret Garden', 'Frances Hodgson Burnett', 1911, TRUE),
('The Chronicles of Narnia', 'C.S. Lewis', 1950, TRUE),
('Alice\'s Adventures in Wonderland', 'Lewis Carroll', 1865, TRUE),
('Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1997, TRUE),
('The Wind in the Willows', 'Kenneth Grahame', 1908, TRUE),
('Sherlock Holmes: The Complete Collection', 'Arthur Conan Doyle', 1892, TRUE),
('The Call of the Wild', 'Jack London', 1903, TRUE),
('The Jungle Book', 'Rudyard Kipling', 1894, TRUE),
('Treasure Island', 'Robert Louis Stevenson', 1883, TRUE),
('The Count of Monte Cristo', 'Alexandre Dumas', 1844, TRUE),
('Les Misérables', 'Victor Hugo', 1862, TRUE),
('The Three Musketeers', 'Alexandre Dumas', 1844, TRUE);
INSERT INTO Members (name, email, phone) 
VALUES 
('John Doe', 'john.doe@example.com', '1234567890'),
('Jane Smith', 'jane.smith@example.com', '0987654321'),
('Alice Johnson', 'alice.johnson@example.com', '1122334455'),
('Bob Brown', 'bob.brown@example.com', '5566778899'),
('Charlie Davis', 'charlie.davis@example.com', '6677889900'),
('David Evans', 'david.evans@example.com', '7788990011'),
('Ella Wilson', 'ella.wilson@example.com', '8899001122'),
('Frank Moore', 'frank.moore@example.com', '9900112233'),
('Grace Taylor', 'grace.taylor@example.com', '1011121314'),
('Hannah Anderson', 'hannah.anderson@example.com', '1213141516'),
('Isaac Thomas', 'isaac.thomas@example.com', '1314151617'),
('Jack Jackson', 'jack.jackson@example.com', '1416171819'),
('Kathy White', 'kathy.white@example.com', '1517181920'),
('Liam Harris', 'liam.harris@example.com', '1618192021'),
('Mia Martin', 'mia.martin@example.com', '1719202122'),
('Noah Lee', 'noah.lee@example.com', '1820212223'),
('Olivia Scott', 'olivia.scott@example.com', '1921222324'),
('Paul Young', 'paul.young@example.com', '2022232425'),
('Quincy King', 'quincy.king@example.com', '2123242526'),
('Rachel Adams', 'rachel.adams@example.com', '2224252627'),
('Sam Nelson', 'sam.nelson@example.com', '2325262728'),
('Tina Carter', 'tina.carter@example.com', '2426272829'),
('Uma Walker', 'uma.walker@example.com', '2527282930'),
('Vera Perez', 'vera.perez@example.com', '2628293031'),
('Will Moore', 'will.moore@example.com', '2729303132'),
('Xander Harris', 'xander.harris@example.com', '2830313233'),
('Yara Garcia', 'yara.garcia@example.com', '2931323334'),
('Zane Rodriguez', 'zane.rodriguez@example.com', '3032333435'),
('Amelia Lewis', 'amelia.lewis@example.com', '3133343536'),
('Ben Clark', 'ben.clark@example.com', '3234353637'),
('Caitlyn Walker', 'caitlyn.walker@example.com', '3335363738'),
('Derek Hall', 'derek.hall@example.com', '3436373839'),
('Eva Allen', 'eva.allen@example.com', '3537383940'),
('Finn Young', 'finn.young@example.com', '3638394041'),
('Grace Miller', 'grace.miller@example.com', '3739404142'),
('Hannah Gonzalez', 'hannah.gonzalez@example.com', '3839414243'),
('Ian Rodriguez', 'ian.rodriguez@example.com', '3940424344'),
('Jenna Morgan', 'jenna.morgan@example.com', '4041434445'),
('Kyle Lee', 'kyle.lee@example.com', '4142444546'),
('Laura Perez', 'laura.perez@example.com', '4243454647'),
('Mason Williams', 'mason.williams@example.com', '4344464748'),
('Nina Miller', 'nina.miller@example.com', '4445474849'),
('Oscar Jones', 'oscar.jones@example.com', '4546484950');
INSERT INTO Transactions (book_id, member_id, issue_date, return_date)
VALUES 
(1, 1, '2024-12-20', '2024-12-25'),
(2, 2, '2024-12-21', '2024-12-28'),
(3, 3, '2024-12-22', '2024-12-27'),
(4, 4, '2024-12-23', '2024-12-30'),
(5, 5, '2024-12-24', '2024-12-29'),
(6, 6, '2024-12-25', '2024-12-31'),
(7, 7, '2024-12-26', '2024-12-31'),
(8, 8, '2024-12-27', NULL),
(9, 9, '2024-12-28', '2024-12-30'),
(10, 10, '2024-12-29', '2024-12-31'),
(11, 11, '2024-12-30', NULL),
(12, 12, '2024-12-31', NULL),
(13, 13, '2024-12-01', '2024-12-10'),
(14, 14, '2024-12-02', NULL),
(15, 15, '2024-12-03', '2024-12-08'),
(16, 16, '2024-12-04', '2024-12-09'),
(17, 17, '2024-12-05', '2024-12-15'),
(18, 18, '2024-12-06', '2024-12-12'),
(19, 19, '2024-12-07', '2024-12-14'),
(20, 20, '2024-12-08', '2024-12-13'),
(21, 21, '2024-12-09', '2024-12-11'),
(22, 22, '2024-12-10', '2024-12-18'),
(23, 23, '2024-12-11', '2024-12-20'),
(24, 24, '2024-12-12', NULL),
(25, 25, '2024-12-13', '2024-12-21'),
(26, 26, '2024-12-14', NULL),
(27, 27, '2024-12-15', '2024-12-22'),
(28, 28, '2024-12-16', '2024-12-23'),
(29, 29, '2024-12-17', '2024-12-19'),
(30, 30, '2024-12-18', '2024-12-25'),
(31, 31, '2024-12-19', NULL),
(32, 32, '2024-12-20', NULL),
(33, 33, '2024-12-21', '2024-12-23'),
(34, 34, '2024-12-22', '2024-12-29'),
(35, 35, '2024-12-23', '2024-12-30'),
(36, 36, '2024-12-24', NULL),
(37, 37, '2024-12-25', '2024-12-30'),
(38, 38, '2024-12-26', NULL),
(39, 39, '2024-12-27', '2024-12-31'),
(40, 40, '2024-12-28', '2024-12-31'),
(41, 41, '2024-12-29', NULL),
(42, 42, '2024-12-30', '2024-12-31'),
(43, 43, '2024-12-31', NULL),
(44, 44, '2024-12-01', '2024-12-05'),
(45, 45, '2024-12-02', '2024-12-07'),
(46, 46, '2024-12-03', NULL),
(47, 47, '2024-12-04', '2024-12-10'),
(48, 48, '2024-12-05', '2024-12-09'),
(49, 49, '2024-12-06', '2024-12-12'),
(50, 50, '2024-12-07', '2024-12-14');
SET FOREIGN_KEY_CHECKS=0;

-- list of all books 
SELECT * FROM Books;
 -- Check Availability of a Book
 SELECT title, availability FROM Books WHERE book_id = 1;
 -- Retrieve all books that are currently available in the library
SELECT * 
FROM Books
WHERE availability = TRUE;

-- Insert a new book into the library
INSERT INTO Books (title, author, published_year, availability)
VALUES ('Pride and Prejudice', 'Jane Austen', 1813, TRUE);

-- Update the availability status of a specific book (book_id = 3) to indicate it is borrowed
UPDATE Books 
SET availability = FALSE 
WHERE book_id = 3;

-- Delete a book from the database by its ID
-- Be cautious when running this query to avoid accidental deletions
 DELETE FROM Books WHERE book_id = 10;

-- Count the total number of books in the library
SELECT COUNT(*) AS total_books 
FROM Books;

 -- List All Members
SELECT * FROM Members;

-- Count Books Currently Borrowed
SELECT COUNT(*) AS borrowed_books
FROM Transactions
WHERE return_date IS NULL;

-- mark book as returned
UPDATE Transactions
SET return_date = CURDATE()
WHERE transaction_id = 1;

UPDATE Books
SET availability = TRUE
WHERE book_id = 1;
--  Analyze Data
-- Most borrowed book 
SELECT 
    b.title, 
    COUNT(t.book_id) AS borrow_count
FROM Transactions t
JOIN Books b ON t.book_id = b.book_id
GROUP BY t.book_id
ORDER BY borrow_count DESC
LIMIT 5;
-- member with most transaction
SELECT 
    m.name, 
    COUNT(t.transaction_id) AS transaction_count
FROM Transactions t
JOIN Members m ON t.member_id = m.member_id
GROUP BY t.member_id
ORDER BY transaction_count DESC
LIMIT 1;

-- Mark the book with book_id = 1 as unavailable (indicating it is borrowed)
UPDATE Books 
SET availability = FALSE 
WHERE book_id = 1;

-- Record a new transaction for the borrowed book (book_id = 1) by member (member_id = 1), issued on 2024-12-22
INSERT INTO Transactions (book_id, member_id, issue_date) 
VALUES (1, 1, '2024-12-22');

-- Update the transaction to set the return date as 2024-12-25 for the transaction with transaction_id = 1
UPDATE Transactions 
SET return_date = '2024-12-25' 
WHERE transaction_id = 1;

-- Mark the book with book_id = 1 as available again (indicating it has been returned)
UPDATE Books 
SET availability = TRUE 
WHERE book_id = 1;
