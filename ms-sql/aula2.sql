use pubs

SELECT * FROM sys.tables

SELECT * FROM dbo.authors

SELECT au_fname,
       phone
FROM dbo.authors ORDER BY au_fname DESC

SELECT * FROM dbo.sales

SELECT TOP 5 * FROM dbo.sales
ORDER BY qty DESC


SELECT * FROM DBO.authors 
WHERE state = 'CA'
AND contract = 0
ORDER BY city

SELECT * FROM authors
SELECT * FROM titleauthor

SELECT authors.*,titleauthor.*
FROM authors, titleauthor
WHERE authors.au_id = titleauthor.au_id

INSERT INTO titleauthor
VALUES (172-32-1176)






