-- Cleansed Dim_Customers Table

SELECT  c.CustomerKey as CustomerID
      --[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.firstname as [FirstName]
      --,[MiddleName]
      ,c.lastname as   [LastName]
	  ,c.firstname +' '+ lastName as Fullname
      --[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,case c.gender when 'M' then 'Male' 
					when 'F' then 'Female' end as Gender
      
     
	  ,c.DateFirstPurchase as DateFirstPurchase 
      --,[CommuteDistance]
	  , B.city as Customer_city 
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] as c
  left join [AdventureWorksDW2022].[dbo].[DimGeography] as  B on 
  c.GeographyKey=B.GeographyKey
  order by CustomerKey  asc