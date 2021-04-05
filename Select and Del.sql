--/****** Script for SelectTopNRows command from SSMS  ******/
declare @count int = 20
--set @count = 20
SELECT TOP (@count) [IDProduct]
      ,[Description]
      ,[InStock]
  FROM [Sales4].[dbo].[Product]

  SELECT TOP (@count) [IDClient]
      ,[FirstName], [LastName], [Address], [Phone]
  FROM [Sales4].[dbo].[Client]

  SELECT TOP (@count) [IDOrder]
      ,[IDClient], [OrdDate]
  FROM [Sales4].[dbo].[Order]

    SELECT TOP (@count) [IDOrder]
      ,[IDProduct], [Qty], [Price]
  FROM [Sales4].[dbo].[Amount]


  DELETE From [Sales4].[dbo].[Order]
  DELETE From [Sales4].[dbo].[Amount]
  DELETE From [Sales4].[dbo].[Client]
  DELETE From [Sales4].[dbo].[Product]
  --