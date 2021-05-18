Question 1.

SELECT COUNT(OrderID) AS NumberofOrders, MIN(OrderDate) AS MINDates, MAX(OrderDate) AS MAXDates
FROM Sales.Orders;

Question 2.

1 row

Question 3.

SELECT PackageTypeID, SUM(Quantity) AS SumOfQuantity
FROM Sales.OrderLines AS OL
GROUP BY PackageTypeID, TaxRate
ORDER BY TaxRate;

Question 4. 

4

Question 5.

SELECT COUNT(OrderID) AS NumberofOrders, YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth
FROM Sales.Orders AS SO
GROUP BY YEAR(OrderDate), MONTH(OrderDate);

41 rows

Question 6.

SELECT SOL.StockItemID, WSI.StockItemName, COUNT(SOL.StockItemID) AS TotalNumber, YEAR(OrderDate) AS OrderYear
FROM Sales.Orders AS SO
LEFT OUTER JOIN Sales.OrderLines AS SOL
ON SO.OrderID=SOL.OrderID
LEFT OUTER JOIN Warehouse.StockItems AS WSI
ON SOL.StockItemID=WSI.StockItemID
GROUP BY SOL.StockItemID, WSI.StockItemName, YEAR(OrderDate)
ORDER BY SOL.StockItemID;

884 rows