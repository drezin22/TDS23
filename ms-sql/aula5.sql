CREATE DATABASE aulajoin 

USE aulajoin 

CREATE TABLE TabelaA (
id int,
nome varchar(10) 
)

CREATE TABLE TabelaB (
id int,
nome varchar(10) 
)

SELECT * FROM sys.tables 

INSERT INTO TabelaA (id,nome) VALUES (1, 'Robo')
INSERT INTO TabelaA (id,nome) VALUES (2, 'Macaco')
INSERT INTO TabelaA (id,nome) VALUES (3, 'Samurai')
INSERT INTO TabelaA (id,nome) VALUES (4, 'Monitor')

INSERT INTO TabelaB (id,nome) VALUES (1, 'Espada')
INSERT INTO TabelaB(id,nome) VALUES (2, 'Robo')
INSERT INTO TabelaB (id,nome) VALUES (3, 'Mario')
INSERT INTO TabelaB (id,nome) VALUES (4, 'Samurai')

SELECT * FROM TabelaA A
INNER JOIN TabelaB B
ON A.nome = B.nome

SELECT * FROM TabelaA A
FULL OUTER JOIN TabelaB B
ON A.nome = B.nome

SELECT * FROM TabelaA A
LEFT JOIN TabelaB B
ON A.nome = B.nome
WHERE B.nome IS NULL

USE AdventureWorks2012
SELECT ProductID NAME, ProductNumber FROM  Production.Product
WHERE NAME LIKE '%CHAI%'
UNION 
SELECT ProductID NAME, ProductNumber FROM  Production.Product
WHERE NAME LIKE '%DECAL%'
ORDER BY NAME DESC

-- PERSON.PERSON / EMAILADDRESS
-- ID, FIRST NAME, LASTNAME, EMAIL

SELECT P.BusinessEntityID, P.FirstName, P.LastName, E.EmailAddress, HR.JobTitle 
FROM Person.Person P
INNER JOIN Person.EmailAddress E
ON P.BusinessEntityID = E.BusinessEntityID
INNER JOIN HumanResources.Employee HR
ON P.BusinessEntityID = HR.BusinessEntityID 
WHERE HR.JobTitle LIKE '%DESI%'

-- NOME DOS PRODUTOS E AS INFORMAÇÕES DE SUBCATEGORIA 
-- LISTPRICE, NOME PRODUTO, NOME DA SUBCATEGORIA 
-- PRODUCT / PRODUCTSUBCATEGORY 

SELECT PP.ListPrice, PP.Name, PS.Name
FROM Production.Product PP
INNER JOIN Production.ProductSubcategory PS
ON PP.ProductSubcategoryID = PS.ProductSubcategoryID

-- Trazer o cliente id, tipo de telefone, id do telefone, o número do telefone 
-- Personphone e phonenumbertype

SELECT PP.BusinessEntityID, PT.Name, PP.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PersonPhone PP
INNER JOIN Person.PhoneNumberType PT
ON PP.PhoneNumberTypeID = PT.PhoneNumberTypeID
INNER JOIN Person.Person PN
ON PP.BusinessEntityID = PN.BusinessEntityID

-- Pessoas que possuem cartão ou não possuem cartão: 

-- TOTAL PESSOAS
SELECT * FROM Person.Person
-- 19.972

-- PESSOAS QUE POSSUEM CARTÃO 
SELECT PP.BusinessEntityID, PP.FirstName, PC.CreditCardID
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID

-- PESSOAS QUE NÃO POSSUEM CARTÃO
SELECT PP.BusinessEntityID, PP.FirstName, PC.CreditCardID, PE.EmailAddress
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
LEFT JOIN Person.EmailAddress PE
ON PP.BusinessEntityID = PE.BusinessEntityID
WHERE PC.CreditCardID IS NULL
AND PE.EmailAddress IS NOT NULL

-- NOME DOS FUNCIONÁRIOS QUE SÃO DESIGN ENGINEER

-- CÓDIGO NA MÃO

SELECT * FROM Person.Person 
-- BusinessEntityID

SELECT * FROM HumanResources.Employee
WHERE JobTitle = 'DESIGN ENGINEER'

SELECT * FROM Person.Person
WHERE BusinessEntityID IN (5,6,15)


-- SUBSELECT

SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee
                           WHERE JobTitle = 'DESIGN ENGINEER')









