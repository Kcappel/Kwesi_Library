drop table books;
drop table authors;
drop sequence seq_authors_id;
drop sequence seq_book_id;

CREATE TABLE AUTHORS ( 
	Author_ID NUMBER(2),
	First_Name VARCHAR2(15),
	Last_Name VARCHAR2(15),
	Home_State VARCHAR2(18),
		CONSTRAINT pk_author_id PRIMARY KEY (Author_ID));

CREATE TABLE BOOKS ( 
	Book_ID NUMBER(2),
	Title VARCHAR2(55),
	Author_ID NUMBER(2),
	Author_Name VARCHAR2(45),
	Publication_Year NUMBER(4),
	Publisher VARCHAR2(30),
	Genre VARCHAR2(25),
	Price NUMBER(4,2),
	ISBN10 VARCHAR2(10),
	ISBN13 NUMBER(13),
		CONSTRAINT pk_book_id PRIMARY KEY (Book_ID),
		CONSTRAINT fk_author_id FOREIGN KEY (Author_ID)
			REFERENCES AUTHORS (Author_ID)
			ON DELETE CASCADE);

CREATE SEQUENCE seq_authors_id 
START WITH 1
INCREMENT BY 1
CACHE 3; --Change back to NOCACHE after testing

CREATE SEQUENCE seq_book_id
START WITH 1
INCREMENT BY 1
CACHE 3;--Change back to NOCACHE after testing

INSERT INTO AUTHORS--Populate AUTHORS and begin testing out that procedure for below.
VALUES(seq_authors_id.nextval, 'Matthew', 'Morris', 'Florida');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Brian', 'Christian', 'Delaware');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Herbert', 'Schildt', 'Illinois');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Stephen', 'King', 'Oklahoma');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'George', 'Bush', 'Connecticut');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Dan', 'Brown', 'New Hampshire');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Kristin', 'Hannah', 'California');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Tom', 'Clancy', 'Maryland');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Alvin', 'Toffler', 'New York');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Dale', 'Carnegie', 'Missouri');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Grant', 'Cardone', 'Louisiana');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Nelson', 'DeMille', 'New York');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Christopher', 'Paolini', 'California');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Jane', 'Austen', 'UK');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Sun', 'Tzu', 'Ancient China');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Marcus', 'Aurelius', 'Ancient Rome');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'George', 'Martin', 'New Jersey');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'James', 'Patterson', 'New York');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Stuart', 'Woods', 'Georgia');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Clive', 'Cussler', 'Illinois');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Paulo', 'Coelho', 'Brazil');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Steve', 'Lopez', 'California');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'George', 'Orwell', 'India');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Richard', 'Preston', 'Massachusetts');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Richard', 'Bach', 'Illinois');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Tim', 'Lebbon', 'UK');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Max', 'Brooks', 'New York');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Jordan', 'Ellenberg', 'Maryland');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Dan', 'Gardner', 'Canada');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Ignatius', 'Fernanandez', 'Tanzania');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Bob', 'Bryla', 'Illinois');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Michael', 'McLaughlin', 'Colorado');
INSERT INTO AUTHORS
VALUES(seq_authors_id.nextval, 'Peter', 'Hamilton', 'UK');

--For below, create a trigger that updates the Author_ID column using the assigned value from the AUTHORS TABLE.
--Set define off so SQL doesnt prompt for a substitution variable.
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Oracle Certification Prep', 1, 'Matthew Morris', 2016, 'ODB Press',
'Education', 14.99, '194140409X', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Algorithms to Live By', 2, 'Brian Christian/Tom Griffiths', 2016, 'Picador',
'Science', 18.00, NULL, 9781250118363);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Java: A Beginners Guide 6th Ed.', 3, 'Herbert Schildt', 2014, 'McGraw-Hill Education',
'Education', 40.00, NULL, 9780071809252);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, '11/22/1963', 4, 'Stephen King', 2011, 'Scribner', 
'Alternate History', 35.00, NULL, 9781451627282);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Decision Points', 5, 'George W. Bush', 2010, 'Crown Publishers',
'Memoir', 35.00, NULL, 9780307590619);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Mr. Mercedes', 4, 'Stephen King', 2014, 'Scribner',
'Crime Fiction', 30.00, NULL, 9781476754451);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Lost Symbol', 6, 'Dan Brown', 2009, 'Doubleday', 
'Detective Fiction', 29.95, NULL, 9780385504225);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Nightingale', 7, 'Kristin Hannah', 2015, 'St. Martins Press',
'Historical Fiction', 27.99, NULL, 9780312577223);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Clear & Present Danger', 8, 'Tom Clancy', 1989, 'Putnam',
'Govt. Fiction', 8.99, '0399134409', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Dark Tower VII', 4, 'Stephen King', 2004, 'Grant', 
'Fantasy', 18.95, NULL, 9781880418628);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Third Wave', 9, 'Alvin Toffler', 1980, 'Bantam Books', 
'Futurology', 3.95, '0517327198', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Stand', 4, 'Stephen King', 1978, 'Doubleday',
'Apocalyptic Fiction', 16.95, NULL, 9780385121682);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'How to Win Friends & Influence People', 10, 'Dale Carnegie', 1936, 'Simon & Schuster',
'Life Enrichment', 16.95, '1439167346', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The 10X Rule', 11, 'Grant Cardone', 2011, 'Wiley',
'Life Enrichment', 24.95, NULL, 9780470627600);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Lions Game', 12, 'Nelson DeMille', 2000, 'Grand Central Publishing',
'Govt. Fiction', 15.95, NULL, 978044660826);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Mist', 4, 'Stephen King', 1980, 'Viking Press',
'Supernatural Horror', 6.99, NULL, 9780451223296);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Inferno', 6, 'Dan Brown', 2013, 'Doubleday', 
'Detective Fiction', 16.00, NULL, 9780385537858);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Eldest', 13, 'Christopher Paolini', 2005, 'Alfred A. Knoph',
'Fantasy', 12.99, '037582670X', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Pride & Prejudice & Zombies', 14, 'Jane Austen', 2009, 'Quirk Books',
'Comical Fiction', 12.95, NULL, 9781594743344);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Art of War', 15, 'Sun Tzu', 2009, 'Nabla',
'Historical Strategy', 3.99, NULL, 9781936276011);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Meditations', 16, 'Marcus Aurelius', 2014, 'Black & White Classics',
'Historical Non-Fiction', 7.99, NULL, 9781503280465);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'A Game of Thrones', 17, 'George RR Martin', 1996, 'Bantam Spectra',
'Medival Fantasy', 8.99, '0553103547', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'A Clash of Kings', 17, 'George RR Martin', 1999, 'Bantam Spectra',
'Medival Fantasy', 8.99, '0553108034', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'A Storm of Swords', 17, 'George RR Martin', 2000, 'Bantam Spectra',
'Medival Fantasy', 9.99, '0553106635', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'A Feast For Crows', 17, 'George RR Martin', 2005, 'Bantam Spectra',
'Medival Fantasy', 9.99, '0553801503', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'A Dance With Dragons', 17, 'George RR Martin', 2011, 'Bantam Spectra',
'Medival Fantasy', 9.99, NULL, 9780553801477);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Truth or Die', 18, 'James Patterson', 2015, 'Little, Brown and Company',
'Thriller', 28.00, '0316407011', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Naked Greed', 19, 'Stuart Woods', 2015, 'G.P. Putnams Sons',
'Thriller', 9.99, NULL, 9780451477217);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Assassin', 20, 'Clive Cussler', 2015, 'G.P. Putnams Sons',
'Thriller', 9.99, NULL, 9780425280171);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Alchemist', 21, 'Paulo Coelho', 1988, 'Harper Touch',
'Fantasy Fiction', 7.99, '0062502174', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Da Vinci Code', 6, 'Dan Brown', 2003, 'Doubleday',
'Crime Fiction', 9.99, '0385504209', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Dark Tower III', 4, 'Stephen King', 1991, 'Grant', 
'Fantasy', 7.99, NULL, 9780937986172);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Shining', 4, 'Stephen King', 1977, 'Doubleday', 
'Supernatural Horror', 8.99, NULL, 9780385121675);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Soloist', 22, 'Steve Lopez', 2010, 'Penguin Publishing',
'Fiction', 15.99, NULL, 9780425238363);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, '1984', 23, 'George Orwell', 1949, 'Secker & Warburg',
'Dystopian Fiction', 9.99, NULL, 9780451524935);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Hot Zone', 24, 'Richard Preston', 1995, 'Anchor',
'Thriller', 7.99, '0385479565', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Jonathan Livingston Seagull', 25, 'Richard Bach', 1970, 'Macmillian',
'Life Enrichment', 7.63, NULL, 9781476793313);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Alien: Out of the Shadows', 26, 'Tim Lebbon', 2014, 'Titan Books', 
'Sci-Fi Horror', 7.99, NULL, 9781781162682);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'World War Z', 27, 'Max Brooks', 2006, 'Crown Publishers', 
'Apocalyptic Fiction', 14.95, '0307346609', NULL);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Wild Cards I', 17, 'George RR Martin', 1987, 'Bantam Spectra',
'Superhero Fiction', 8.99, NULL, 9780553261905);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'How Not to Be Wrong', 28, 'Jordan Ellenberg', 2014, 'Penguin Publishing',
'Life Enrichment', 17.00, NULL, 9781594205224);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Superforecasting', 29, 'Dan Gardner/Philip E. Tetlock', 2015, 'Broadway Books',
'Life Enrichment', 17.00, NULL, 9780804136716);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Beginning Oracle Database Administration 12c', 30, 'Itnatius Fernandez', 2015, 'Apress',
'Education', 33.86, NULL, 9781484201947);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Oracle Database 12c DBA Handbook', 31, 'Bob Bryla', 2015, 'Oracle Press',
'Education', 65.00, NULL, 9780071798785);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'Oracle Database 12c PL/SQL Programming', 32, 'Michael McLaughlin', 2014, 'Oracle Press',
'Education', 70.00, NULL, 9780071812436);
INSERT INTO BOOKS (Book_ID, Title, Author_ID, Author_Name, Publication_Year, Publisher, Genre, Price, ISBN10, ISBN13)
VALUES (seq_book_id.nextval, 'The Reality Dysfunction', 33, 'Peter F. Hamilton', 1996, 'Orbit', 
'Science Fiction', 19.00, NULL, 9780316021807); 


