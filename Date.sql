SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [DayNumberOfYear], 
  [WeekNumberOfYear], 
  LEFT ([EnglishMonthName], 3) AS Mth, 
  [MonthNumberOfYear] AS MthNo, 
  [CalendarQuarter] AS Qtr, 
  [CalendarYear] AS Yr, 
  [CalendarSemester] AS Semester 
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
WHERE 
  [CalendarYear] >= 2022
