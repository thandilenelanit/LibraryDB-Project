-- Final Project: Library Management System
-- Database: LibraryDB
-- Author: Thandile Nelani
-- Description: Complete relational database with tables, constraints, relationships, and sample data


-- 0. Drop database if exists and create fresh database

DROP DATABASE IF EXISTS LibraryDB;
CREATE DATABASE LibraryDB;
USE LibraryDB;


-- 1. Create Books Table

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    published_year YEAR,
    isbn VARCHAR(20) UNIQUE
);


-- 2. Create Members Table

CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

-- 3. Create Loans Table

CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id) ON DELETE CASCADE
);


-- 4. Create Staff Table

CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50)
);


-- 5. Insert Sample Data into Books

INSERT INTO Books (title, author, genre, published_year, isbn) VALUES
('How to take the limits off GOD', 'Morris Cerullo', 'Fiction', 1925, '9780743273565'),
('Atomic power with God', 'Franklin Hall', 'Dystopian', 1946, '9780451524935'),
('ManOn Three Dimension', 'Kenneth E. Hagin', 'Fiction', 1994, '9780061120084'),
('Those who leave you', 'Dag Heward-mills', 'Fiction', 2011, '9780316769488');


-- 6. Insert Sample Data into Members

INSERT INTO Members (first_name, last_name, email, phone) VALUES
('Unathi', 'Ngeva', 'NgevaUF@eskom.co.za', '0784808837'),
('Fagma', 'Kahaar', 'IsaacsF@eskom.co.za', '0838847679'),
('Khanyisile', 'Ngandana', '2759118@myuwc.ac.za', '0636026373');


-- 7. Insert Sample Data into Loans

INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES
(1, 1, '2025-10-01', '2025-10-15'),
(2, 1, '2025-10-03', NULL),
(3, 2, '2025-10-05', '2025-10-20'),
(4, 3, '2025-10-07', NULL);


-- 8. Insert Sample Data into Staff

INSERT INTO Staff (name, role) VALUES
('Cingimiso Nelani', 'Librarian'),
('Zuzole Dlulemnyango', 'Assistant');



