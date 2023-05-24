SELECT * FROM Person.Person
WHERE BusinessEntityID = 5 
OR BusinessEntityID = 111
OR BusinessEntityID = 23

SELECT * FROM Production.Product
WHERE Weight > 500
AND Weight <= 700

SELECT * FROM HumanResources.Employee
WHERE MaritalStatus = 'M'  
AND SalariedFlag = 1
AND BirthDate <= '1983/01/01' 

SELECT * FROM Person.Person
WHERE FirstName = 'Peter'
AND LastName = 'Krebs'

SELECT * FROM PERSON.EmailAddress
WHERE BusinessEntityID = 26

SELECT Person.FirstName, Person.Person.LastName, person.EmailAddress.EmailAddress
FROM person.person, person.EmailAddress
WHERE PERSON.BusinessEntityID = EmailAddress.BusinessEntityID
AND Person.BusinessEntityID = 26

SELECT COUNT(*) AS 'QTDE DE PRODUTOS' FROM Production.Product 

SELECT DISTINCT NAME FROM Production.Product

SELECT DISTINCT (TITLE) FROM Person.Person
WHERE Title = 'Ms.'
SELECT DISTINCT TITLE FROM Person.Person

SELECT ListPrice FROM Production.Product
WHERE ListPrice >= 1000
AND ListPrice <= 1500

SELECT LISTPRICE FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500

SELECT * FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'

SELECT * FROM Person.Person
WHERE BusinessEntityID = 5 
OR BusinessEntityID = 111
OR BusinessEntityID = 23

SELECT * FROM Person.Person
WHERE BusinessEntityID IN (5,121,23)

SELECT * FROM Person.Person
WHERE FirstName LIKE 'Ro_'

-- Tarefa BD

SELECT COUNT(*) AS 'QTDE DE PRODUTOS' FROM Production.Product 

SELECT ListPrice FROM Production.Product
WHERE ListPrice > 1500 

SELECT COUNT(*) AS 'QTDE DE PESSOAS' FROM Person.Person
WHERE LastName LIKE 'P%'

SELECT * FROM Person.Person
WHERE LastName LIKE 'P%'

SELECT COUNT(DISTINCT City) AS 'QTDE DE CIDADES' FROM Person.Address  






/*
AND - E
OR - OU 
NOT - ACOMPANHANDO 


=
>
<
<>
>=
<=

*/
