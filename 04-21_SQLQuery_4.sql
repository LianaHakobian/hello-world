Question 1.
SELECT [StockItemID], [StockItemName], CONVERT(nvarchar(100), [StockItemID]) + '_' + [StockItemName] AS 'StockItem ID_Name'
FROM [Warehouse].[StockItems];
Question 2.
SELECT StockItemID, SupplierID, ColorID, (StockItemID+SupplierID+ISNULL([ColorID],0)) AS 'SUMof3Columns'
FROM [Warehouse].[StockItems];
Question 3.
SELECT StockItemID, LEFT(StockItemName, 10) AS 'First10Char'
FROM Warehouse.StockItems;
Question 4.
SELECT OrderID, CustomerID, OrderDate, ExpectedDeliveryDate, DATEDIFF(DAY, OrderDate, ExpectedDeliveryDate) AS 'DIFFDAYS'
FROM Sales.Orders
ORDER BY 'DIFFDAYS' DESC;