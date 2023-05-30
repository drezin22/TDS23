USE AdventureWorks2012

SELECT * FROM Person.Person

SELECT FIRSTNAME,UPPER(FirstName), LastName, LOWER(LastName) FROM Person.Person

--LENGHT - LEN

SELECT FirstName, LEN(FirstName) FROM Person.Person

WHERE LEN(FirstName) <= 2

SELECT FirstName, SUBSTRING(FirstName,1,3) FROM Person.Person

SELECT FirstName, SUBSTRING(FirstName,2,1) FROM Person.Person
WHERE SUBSTRING(FirstName,2,1) = '.'

SELECT * FROM Production.Product

SELECT ProductNumber, REPLACE(ProductNumber,'-','-2023-') FROM Production.Product

SELECT FirstName, MiddleName, LastName FROM Person.Person

CREATE VIEW NOMES AS 
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Mr.'

SELECT * FROM NOMES 
ORDER BY 3 DESC


SELECT P.BusinessEntityID AS ID, P.FirstName AS NOME, E.EmailAddress AS EMAIL	
FROM Person.Person P
INNER JOIN Person.EmailAddress E
ON P.BusinessEntityID = E.BusinessEntityID



