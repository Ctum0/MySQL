INSERT INTO authors(first_name,last_name)
VALUES 	("Stephen","King"),
		("J.K","Rowling"),
        ("George","Martin"),
        ("Jane","Austen");

INSERT INTO books(title,authorID,ISBN,stockcount)
VALUES 	("The Shining",101,"9780385199657",2),
		("Harry Potter",102,"9780590353403",5),
		("A Game of Thrones",103,"9780553103540",1),
		("IT",101,"9780670813025",3),
		("Pride and Prejudice",101,"9780141439518",4);

INSERT INTO members(first_name,last_name,email,joinedDate)
VALUES	("Alex","Johnson","alex.j@gmail.com","2023-01-15"),
		("Brenda","Smith","bsmith@gmail.com","2022-11-20"),
		("Chris","Evans","cevans@gmail.com","2024-03-10");
        
INSERT INTO borrowrecords(bookID,memberID,borrowDate,dueDate,returnDate)
VALUES 	(210,301,"2024-06-01","2024-06-15","2024-06-14"),
		(211,302,"2024-05-20","2024-06-03","2024-06-05"),
		(211,301,"2024-07-10","2024-07-24","2024-07-24"),
		(212,300,"2024-08-01","2024-08-15",NULL),
		(214,302,"2024-07-25","2024-08-08",NULL),
		(213,300,"2024-07-20","2024-08-03",NULL);
