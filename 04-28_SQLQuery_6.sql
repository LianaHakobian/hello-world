Question 1.

SELECT SO.OrderID, SO.CustomerID, SO.OrderDate, SOL.StockItemID, SOL.Quantity, SOL.UnitPrice,
SOL.UnitPrice * SOL.Quantity AS 'ExtendedPrice'
FROM [Sales].[Orders] AS SO
INNER JOIN Sales.OrderLines AS SOL
ON SO.OrderID=SOL.OrderID;

Question 2.

SELECT SO.OrderID, SO.CustomerID, SO.OrderDate, SOL.StockItemID, SOL.Quantity, SOL.UnitPrice, WSI.StockItemName,
SOL.UnitPrice * SOL.Quantity AS 'ExtendedPrice'
FROM [Sales].[Orders] AS SO
INNER JOIN Sales.OrderLines AS SOL
ON SO.OrderID=SOL.OrderID
INNER JOIN Warehouse.StockItems AS WSI
ON WSI.StockItemID=SOL.StockItemID;

Question 3.

SELECT SOL.StockItemID, WSI.StockItemName
FROM Sales.OrderLines AS SOL
LEFT OUTER JOIN Warehouse.StockItems AS WSI
ON WSI.StockItemID=SOL.StockItemID
WHERE SOL.OrderID IS NULL;

Question 4.

SELECT CityName, StateProvinceName, CountryName
FROM Application.StateProvinces AS ASP
LEFT OUTER JOIN Application.Countries AS AC
ON ASP.CountryID=AC.CountryID
LEFT OUTER JOIN Application.Cities AS ACT
ON ACT.StateProvinceID=ASP.StateProvinceID
ORDER BY ACT.StateProvinceID;

SELECT CityName, StateProvinceName, CountryName
FROM Application.StateProvinces AS ASP
RIGHT OUTER JOIN Application.Countries AS AC
ON ASP.CountryID=AC.CountryID
RIGHT OUTER JOIN Application.Cities AS ACT
ON ACT.StateProvinceID=ASP.StateProvinceID
ORDER BY ACT.StateProvinceID DESC;


