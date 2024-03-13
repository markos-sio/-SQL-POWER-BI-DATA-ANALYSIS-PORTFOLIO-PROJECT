SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [TotalProductCost] AS ProductCost, 
  [SalesAmount] AS SalesPrice 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= 2022 
ORDER BY 
  [OrderDateKey] ASC
