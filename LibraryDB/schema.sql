CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE authors(
	authorID INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE books(
	bookID INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
	authorID INT,
    ISBN VARCHAR(50),
    stockcount INT,
    FOREIGN KEY(authorID) REFERENCES authors(authorID)
);

CREATE TABLE members(
	memberID INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    joinedDate DATE
);

CREATE TABLE borrowrecords(
	borrowID INT PRIMARY KEY AUTO_INCREMENT,
	bookID INT,
    memberID INT,
    borrowDate DATE,
    dueDate DATE,
    returnDate DATE NULL,
    FOREIGN KEY(bookID) REFERENCES books(bookID),
    FOREIGN KEY(memberID) REFERENCES members(memberID)
);

ALTER TABLE authors
AUTO_INCREMENT = 100;
ALTER TABLE books
AUTO_INCREMENT = 200;
ALTER TABLE members
AUTO_INCREMENT = 300;
ALTER TABLE borrowrecords
AUTO_INCREMENT = 400;
