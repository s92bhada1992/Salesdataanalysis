-- Cleaned DIM_Products Table--

SELECT  P.[ProductKey] as Product_Key
      ,P.[ProductAlternateKey] as Product_Item_Key
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,P.[EnglishProductName] as Product_Name
	  ,pc.[EnglishProductCategoryName] as Product_Category
	  ,ps.[EnglishProductSubcategoryName] as Product_Sub_Category
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
     -- ,[FinishedGoodsFlag]
      ,P.[Color] as Product_Colour
     -- ,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,P.[Size] as Product_Size
     -- ,[SizeRange]
     -- ,[Weight]
     -- ,[DaysToManufacture]
      ,P.ProductLine
     -- ,[DealerPrice]
     -- ,[Class]
      --,[Style]
      ,P.[ModelName]
      --,[LargePhoto]
      ,P.[EnglishDescription] as Product_Description
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,Isnull (p.Status, 'Outdated')as [Product_Status]
	  
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] as P
  left join [AdventureWorksDW2022].[dbo].[DimProductSubcategory] as ps   on p.ProductSubcategoryKey=ps.ProductSubcategoryKey
  left join [AdventureWorksDW2022].[dbo].[DimProductCategory] as pc on ps.ProductCategoryKey=pc.ProductCategoryKey
  order by 
  p.ProductKey
