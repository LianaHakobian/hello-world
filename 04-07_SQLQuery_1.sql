
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