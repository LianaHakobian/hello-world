LAB 1.1
SELECT Emp.BusinessEntityID, P.FirstName, P.LastName, Emp.JobTitle, Emp.BirthDate
FROM HumanResources.Employee AS Emp
INNER JOIN Person.Person AS P
ON P.BusinessEntityID=Emp.BusinessEntityID;

LAB1.2
SELECT PP.ProductID, PP.Name, C.ProductCategoryID, SubC.ProductSubcategoryID
FROM Production.Product AS PP
INNER JOIN Production.ProductSubcategory AS SubC
ON PP.ProductSubcategoryID=SubC.ProductSubcategoryID
INNER JOIN Production.ProductCategory AS C 
ON C.ProductCategoryID = SubC.ProductCategoryID;

LAB2.1
SELECT PP.ProductID, PP.Name, SOD.SalesOrderID, SOD.OrderQty
FROM Production.Product AS PP
LEFT OUTER JOIN Sales.SalesOrderDetail AS SOD
ON PP.ProductID= SOD.ProductID;

LAB2.2
SELECT SOH.SalesPersonID, SP.SalesYTD, SOH.SalesOrderID
FROM Sales.SalesOrderHeader AS SOH
LEFT OUTER JOIN Sales.SalesPerson AS SP
ON SOH.SalesPersonID=SP.BusinessEntityID;

LAB3.1
SELECT PP.ProductID, PP.Name, SOD.SalesOrderID, SOD.OrderQty
FROM Production.Product AS PP
LEFT OUTER JOIN Sales.SalesOrderDetail AS SOD
ON PP.ProductID= SOD.ProductID
WHERE SOD.SalesOrderID IS NULL;

LAB3.2
SELECT SOH.SalesPersonID, SP.SalesYTD, SOH.SalesOrderID
FROM Sales.SalesOrderHeader AS SOH
LEFT OUTER JOIN Sales.SalesPerson AS SP
ON SOH.SalesPersonID=SP.BusinessEntityID
WHERE SP.BusinessEntityID IS NULL;










