/* 1) 
Part A : Which is the left table and which is the right table?
Books is the left table and to_read is the right table */

/* SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
ORDER BY b.average_rating; */ 

/* Part B: When we added a WHERE tr.user_id IS NOT NULL clause(line 14), 
how did the table change? Why?
When I added "where tr.user..." I excluded any rows where there wasn't a match in to.read
That ened up filtering out all the books that have no matching record in the to_read table. 
Doing this is similar to an INNER JOIN because the rows without matches are excluded */

/* SELECT TOP 50 b.title, b.average_rating, b.books_count, tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
WHERE tr.user_id IS NOT NULL
ORDER BY b.average_rating; */


/* 2) 
Part A:Looking at the query, which table is the 'Left' and which is the 'Right'?
BooksDB.dbo.books is the left table & BooksDB.dbo.to_read is the right table

--Part B:How do the RIGHT-joined tables differ from the LEFT-joined tables in Question 1?
The right joined tables differ becuase it includes all rows from the to_read table even when 
theres no matching record in boods. */

/* SELECT TOP 300 b.title, b.average_rating, b.books_count, tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
RIGHT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id; */


/* 3) 
Part A: Look at the table and explore how it was populated. Try manipulating the query to better understand how this table works. 
Try adding a WHERE clause, or ORDER BY a column on the books table. Based on your explanation, can you think of when you might want a FULL join 
rather than a LEFT, RIGHT, OR INNER? 

I would want a Full join if I want to a complete view of both databases to see if any records are missing */

/* SELECT TOP 30 b.title, b.average_rating, b.books_count, tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
FULL JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id 
ORDER BY b.books_count ASC */

/* 4) 
Part A: What does an inner join do?
An inner join shows only the rows that both tables have matching values on specific columns 

Part B: Currently this join has an 'Is Not Null' in the WHERE clause. Is the necessary for this table? Why or Why not?
Having the Is Not Null in the WHERE clause is not necessary because its already using inner join which means only recieving
matching data from rows that include book_id.

Part C: When using SQL, you are usually returning much larger tables so every line of code will add to the compilation 
and return time. Rewrite this inner join query so that it contains no redundant code. */


-- INNER 

SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr




/* 5) 
Part A: What is the most tagged book? */



/* Part B: How many different tags have been used for the most tagged book?
Part C: What is this particular tag?


