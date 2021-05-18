Lab 1.1.
SELECT PP.Name, PP.ProductID
FROM Production.Product AS PP
WHERE PP.ProductID IN (SELECT ProductID FROM Sales.SalesOrderDetail);

Lab 1.2. 
SELECT PP.Name, PP.ProductID
FROM Production.Product AS PP
WHERE ProductID NOT IN (SELECT ProductID FROM Sales.SalesOrderDetail);

Lab 2.1.

SELECT ProductID, Name, Color,
       (SELECT SUM(OrderQty) FROM Sales.SalesOrderDetail
       WHERE ProductID=PP.ProductID) AS TotalQty
FROM Production.Product AS PP
WHERE PP.FinishedGoodsFlag=1;

Lab 2.2.

SELECT ProductID, Name, Color,
       (SELECT SUM(OrderQty) FROM Sales.SalesOrderDetail
       WHERE ProductID=PP.ProductID) AS TotalQty,
       (SELECT AVG(OrderQty) FROM Sales.SalesOrderDetail
       WHERE ProductID=PP.ProductID) AS AverageQty
FROM Production.Product AS PP
WHERE PP.FinishedGoodsFlag=1;

Lab 3.1.

WITH Sales AS (
    SELECT ProductID, SUM(OrderQty) AS TotalQty
    FROM Sales.SalesOrderDetail AS SOD
    GROUP BY ProductID)
    SELECT PP.ProductID, Name, Color, TotalQty
    FROM Production.Product AS PP
    INNER JOIN Sales ON Sales.ProductID=PP.ProductID
    ORDER BY ProductID;

Lab 3.2.

WITH Sales AS (
    SELECT ProductID, SUM(OrderQty) AS TotalQty, AVG(OrderQty) AS AverageQty
    FROM Sales.SalesOrderDetail AS SOD
    GROUP BY ProductID)
    SELECT PP.ProductID, Name, Color, TotalQty, AverageQty
    FROM Production.Product AS PP
    INNER JOIN Sales ON Sales.ProductID=PP.ProductID
    ORDER BY ProductID;

LAB 4.

SELECT Emp.BusinessEntityID, FirstName, LastName, 'Employee' AS Title
FROM Person.Person AS PP
INNER JOIN HumanResources.Employee AS Emp
ON Emp.BusinessEntityID=PP.BusinessEntityID

UNION ALL
SELECT JC.BusinessEntityID, PP.FirstName, PP.LastName, 'Job Candidate' AS Title
FROM Person.Person AS PP
INNER JOIN HumanResources.JobCandidate AS JC
ON JC.BusinessEntityID=PP.BusinessEntityID

UNION ALL
SELECT C.PersonID, PP.FirstName, PP.LastName, 'Customer' AS Title
FROM Person.Person AS PP
INNER JOIN Sales.Customer AS C
ON C.PersonID=PP.BusinessEntityID

UNION ALL
SELECT SP.BusinessEntityID, PP.FirstName, PP.LastName, 'Salesperson' AS Title
FROM Person.Person AS PP
INNER JOIN Sales.SalesPerson AS SP
ON SP.BusinessEntityID=PP.BusinessEntityID
ORDER BY BusinessEntityID;