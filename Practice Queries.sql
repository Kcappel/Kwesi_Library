--Set Define ON/OFF allows for substituting a value for what follows the ampersand '&'
1)
SELECT title, authors.author_id, author_name --Performs right join to display contents and allows user selection on how it is ordered.
FROM books RIGHT JOIN authors
ON books.author_id = authors.author_id
ORDER BY &COLUMN_NAME;
2)
SELECT title, authors.author_id, author_name --Similar to above except it only pulls authors name starting with 'S'. Allows user selection on how it is ordered.
FROM books RIGHT JOIN authors
ON books.author_id = authors.author_id
WHERE author_name LIKE 'S%'
ORDER BY author_id;
3)
SELECT title, author_name, publication_year, isbn10 --Pulls info from selected columns where pub_year is greater than 2000. Orders by pub_year.
FROM books
WHERE publication_year > 2000
ORDER BY publication_year;
4)
SELECT genre, ROUND(AVG(price), 2) AVG_GENRE_PRICE --Simple code that averages the prices of particular genres and rounds the value to two decimal places.
FROM books
GROUP BY genre;
5)
SELECT first_name || ' ' || last_name,  --This is a SQL case statement. Notice similarities and differences between PL/SQL case statements.
    CASE home_state
    WHEN 'Illinois' THEN 'Author from Illinois'
    WHEN 'California' THEN 'Author from California'
    WHEN 'New York' THEN 'Author from New York'
    WHEN 'UK' THEN 'Author from UK'
    ELSE 'This author is not from one of the selected home state'
    END CASE
FROM authors
ORDER BY author_id;
6)
SELECT book_id, author_name, publisher, publication_year, price --This query pulls the specified information and omits Educational publishers along with any book published before 2000.
FROM books
WHERE publisher NOT LIKE 'McGraw-Hill Education'
GROUP BY publisher, book_id, author_name, price, publication_year
HAVING publication_year > 2000
ORDER BY publication_year;
7)
SELECT book_id, title, author_name --Subquery that pulls desired information where publication year is greater that 1989
FROM books
WHERE publication_year > (SELECT publication_year
                          FROM books
                          WHERE publication_year = 1989);
8)
SELECT title, author_name, publication_year --Correalated Subquery that pulls the desired information and only displays authors from Illinois
from books
WHERE 'Illinois' = (SELECT home_state
                    FROM authors
                    WHERE authors.author_id = books.author_id)
ORDER BY publication_year;
9)
SELECT table_name, status, pct_free, pct_used, num_rows, blocks --These two queries pull table information regarding the books and authors tables.
FROM user_tables
WHERE table_name = UPPER('authors');
SELECT table_name, status, pct_free, pct_used, num_rows, blocks
FROM user_tables
WHERE table_name = UPPER('books');
10)
CREATE OR REPLACE VIEW view_books_authors_details  --Creates a view containing most of the information regarding books.
AS
SELECT authors.author_id, author_name, home_state, title, publication_year, publisher, genre, price
FROM authors INNER JOIN books
ON authors.author_id = books.author_id;
SELECT * FROM view_books_authors_details ORDER BY publication_year;  --Displays the information from the above query, orders by publication_year
