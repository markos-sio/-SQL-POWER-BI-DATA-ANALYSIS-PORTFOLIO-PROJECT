SELECT 
  cust.[CustomerKey] AS CustomerKey, 
  cust.[FirstName] As Name, 
  cust.[LastName] AS Surname, 
  cust.[BirthDate] As BirthDate, 
  Case cust.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  cust.[YearlyIncome] AS Income, 
  cust.[TotalChildren] AS TotalChildren, 
  cust.[NumberChildrenAtHome] As ChildrenAtHome, 
  cust.[DateFirstPurchase] As DateFirstPurchase, 
  geo.[City] AS CustomerCity 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS cust 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS geo ON cust.[GeographyKey] = geo.[GeographyKey] 
ORDER BY 
  cust.[CustomerKey] ASC
