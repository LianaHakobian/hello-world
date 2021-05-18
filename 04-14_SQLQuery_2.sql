
SELECT *
FROM [Application].[People];

SELECT [InvoiceID], [CustomerID], [OrderID], [InvoiceDate], [DeliveryInstructions]
FROM [Sales].[Invoices]
ORDER BY [CustomerID];

SELECT TOP 10 [OrderID], [CustomerID], [OrderDate]
FROM[Sales].[Orders]
ORDER BY [OrderDate]DESC; 

SELECT TOP 10 [OrderID] AS "Order ID", [CustomerID] AS 'Customer ID', [OrderDate] AS 'Order Date'
FROM[Sales].[Orders]
ORDER BY [OrderDate]DESC;

SELECT DISTINCT [CustomerID]
FROM [Sales].[Orders];

SELECT DISTINCT [CustomerID]
FROM [Sales].[Orders]
WHERE [CustomerID] BETWEEN 1 AND 100;

SELECT SO.[OrderID], SO.[CustomerID], SO.[OrderDate]
FROM[Sales].[Orders] AS SO
WHERE [CustomerID] IN (832, 77,191);

SELECT [OrderID], [CustomerID], [OrderDate] 
FROM [Sales].[Orders]
WHERE [OrderDate] BETWEEN '2014-01-01' AND '2014-12-31'AND [CustomerID] IN (832, 77,191);
 
SELECT [CustomerID], [CustomerName], [DeliveryCityID]
FROM [Sales].[Customers]
WHERE [CustomerName] <> 'Tailspin Toys';

SELECT [StockItemID], [StockItemName], [ColorID], [Brand]
FROM [Warehouse].[StockItems]
WHERE [ColorID] IS NOT NULL AND [StockItemName] LIKE 'USB%';

SELECT [StockItemID], [StockItemName], [ColorID], [Brand]
FROM [Warehouse].[StockItems]
WHERE [ColorID] IS NULL AND [Brand] IS NULL;