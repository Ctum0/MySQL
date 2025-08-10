-- Listing Books With Authors
SELECT title,first_name,last_name 
FROM books
INNER JOIN authors
ON books.authorID = authors.authorID;

-- Finding Books That Are Not Returned With Names
SELECT first_name,last_name,borrowDate,dueDate,returnDate 
FROM borrowrecords
INNER JOIN members
ON borrowrecords.memberID = members.memberID
WHERE returnDate IS NULL;

-- Couting Borrows Per member
SELECT COUNT(*) AS Count ,members.memberID,members.first_name ,members.last_name 
FROM borrowrecords
INNER JOIN members
ON borrowrecords.memberID = members.memberID
GROUP BY memberID;

-- Most Borrowed Book
SELECT COUNT(*) AS Count, books.title
FROM borrowrecords
INNER JOIN books
ON borrowrecords.bookID = books.bookID
GROUP BY borrowrecords.bookID
ORDER BY Count DESC
LIMIT 1;




