SELECT 
  pro.[ProductKey], 
  pro.[ProductAlternateKey], 
  pro.[EnglishProductName] AS ProductName, 
  ISNULL (
    cat.[EnglishProductCategoryName], 
    'Uncategorized'
  ) AS Category, 
  ISNULL (
    sub.[EnglishProductSubcategoryName], 
    'Uncategorized'
  ) AS SubCategory, 
  ISNULL (pro.[Color], 'Uncolored') AS [Product Color], 
  ISNULL (pro.[Size], 'Unsized') AS [Product Size], 
  pro.[Weight], 
  pro.[ModelName], 
  ISNULL (
    pro.[EnglishDescription], 'Undescribed'
  ) AS [Description], 
  ISNULL (pro.[Status], 'Not current') AS [Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS pro 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] AS sub ON pro.[ProductSubcategoryKey] = sub.[ProductSubcategoryKey] 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] AS cat ON sub.[ProductSubcategoryKey] = cat.[ProductCategoryKey] 
ORDER BY 
  pro.[ProductKey] ASC
