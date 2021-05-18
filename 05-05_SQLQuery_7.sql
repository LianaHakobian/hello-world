Lab 1.1
SELECT COUNT(*) AS NumberofCustomers
FROM [Sales].[Customer];

Lab 1.2
SELECT SUM (OrderQty) AS NumberofProductsOrdered
FROM [Sales].SalesOrderDetail;

Lab 1.3
SELECT ProductID, SUM(OrderQty) AS NumberofItemsOrdered
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID;

Lab 1.4
SELECT LEFT(LastName, 1) AS FirstInitial, COUNT(*) AS ItemCount
FROM Person.Person
GROUP BY LEFT(LastName, 1)
ORDER BY FirstInitial;

Lab 2.1
SELECT COUNT(SalesOrderID) AS NumberofSOIDs
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING COUNT(SalesOrderID)>3;

SELECT SalesOrderID, COUNT(*) AS LineCount
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING COUNT(*)>3;

Lab 2.2
SELECT SUM(SalesOrderID) AS SumoftheLineTotal
FROM Sales.SalesOrderDetail
GROUP BY (SalesOrderID)
HAVING SUM(SalesOrderID)>1000;

Lab 2.3
SELECT COUNT (ProductModelID) AS NumberofProductModelID
FROM Production.Product
GROUP BY ProductModelID
HAVING COUNT(ProductModelID)=1;

SELECT ProductModelID, COUNT(*) AS NumberofProductModelID
FROM Production.Product
GROUP BY ProductModelID
HAVING COUNT(*)=1;