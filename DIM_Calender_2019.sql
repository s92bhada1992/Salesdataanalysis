--Cleansed Dm_datetable

SELECT [DateKey]
      ,[FullDateAlternateKey] as date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as day
      --,[SpanishDayNameOfWeek]
      ---,[FrenchDayNameOfWeek]
     -- ,[DayNumberOfMonth]
      ---,[DayNumberOfYear]
      ,[WeekNumberOfYear] as Weeknumber
      ,[EnglishMonthName] as Month
	  , left([EnglishMonthName],3) as Monthshort
      ---,[SpanishMonthName]
     -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] as MonthNumber
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year
     -- ,[CalendarSemester]
      --,[FiscalQuarter]
      ---,[FiscalYear]
      ---,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  where CalendarYear>= 2019
