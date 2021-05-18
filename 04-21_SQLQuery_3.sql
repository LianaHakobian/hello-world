LAB 1.1
SELECT [ProductID], [Color], [Name],
       [Name]+': '+ISNULL([Color],'N/A') AS 'Description'
FROM [Production].[Product];
LAB 1.2
SELECT [MinQty], [MaxQty], [SpecialOfferID],
       (MaxQty-MinQty) AS Difference, [Description]
FROM [Sales].[SpecialOffer];
LAB 2.1
SELECT[BusinessEntityID], UPPER([FirstName]) AS 'FirstName', UPPER ([LastName]) AS 'LastName' 
FROM [Person].[Person];
LAB 2.2
SELECT LEFT([FirstName],1) AS 'FirstInitial', [LastName] AS 'LastName'
FROM [Person].[Person];
LAB 2.3
SELECT REVERSE([LastName]) AS emaNtsaL
FROM [Person].[Person];
LAB 3.1
SELECT[SalesOrderID], [OrderDate], [ShipDate], DATEDIFF(DAY,[OrderDate],[ShipDate]) AS #ofDays
FROM[Sales].[SalesOrderHeader];
LAB 3.2
SELECT LEFT([OrderDate], 11) AS 'Order Date', FORMAT([ShipDate], 'yyyy-mm-dd') AS 'Ship Date', CONVERT(varchar(10), [DueDate], 20) AS 'Due Date' 
FROM [Sales].[SalesOrderHeader];
LAB 3.3
SELECT [OrderDate], [SalesOrderID], DATEADD(MONTH, 6, [OrderDate]) AS InSixMonthsOrderDate
FROM [Sales].[SalesOrderHeader];