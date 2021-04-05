IF (EXISTS (SELECT name 
FROM master.dbo.sysdatabases [StringGenerator]))--Если существует такая функция, то дропнуть её и создать(после go)
Drop function [dbo].[StringGenerator]
go
CREATE Function [dbo].[StringGenerator]--Генерадтор рандомных строк на основе NEWID()
     (@nchar_seed uniqueidentifier, @max_count int)--(NEWID(), int)
	 returns nvarchar(40)
	 as
	begin
		declare @string nvarchar(40)
		set @string=SUBSTRING(CONVERT(varchar(40), @nchar_seed), 0, @max_count+1)
		set @string=REPLACE(@string, '-', 'O')
		return(@string)
	end
	go

--/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 20 [IDProduct]
      ,[Description]
      ,[InStock]
  FROM [Sales4].[dbo].[Product]

  SELECT TOP 20 [IDClient]
      ,[FirstName], [LastName], [Address], [Phone]
  FROM [Sales4].[dbo].[Client]

  SELECT TOP 20 [IDOrder]
      ,[IDProduct], [Qty], [Price]
  FROM [Sales4].[dbo].[Amount]

  SELECT TOP 20 [IDOrder]
      ,[IDClient], [OrdDate]
  FROM [Sales4].[dbo].[Order]

  DELETE From [Sales4].[dbo].[Order]
  DELETE From [Sales4].[dbo].[Amount]
  DELETE From [Sales4].[dbo].[Client]
  DELETE From [Sales4].[dbo].[Product]
  --


--Client
SET IDENTITY_INSERT [Sales4].[dbo].[Client] ON

INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (5, N'Фролов1', N'Игорь1', N'Саратов, Навашина 34', N'9276557697')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (6, N'Тихонова1', N'Анна1', N'Саратов, Строителей 4', N'9576555698')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (7, N'Фролов2', N'Игорь2', N'Саратов, Навашина 34', N'9276557447')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (8, N'Тихонова2', N'Анна2', N'Саратов, Строителей 4', N'9576533698')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (9, N'Фролов3', N'Игорь3', N'Саратов, Навашина 34', N'9276557227')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (10, N'Тихонова3', N'Анна3', N'Саратов, Строителей 4', N'9576511698')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (11, N'Фролов4', N'Игорь4', N'Саратов, Навашина 34', N'9276557527')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (12, N'Тихонова4', N'Анна4', N'Саратов, Строителей 4', N'9576587698')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (13, N'Фролов5', N'Игорь5', N'Саратов, Навашина 34', N'9571187698')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (14, [dbo].StringGenerator(NewID(),5), [dbo].StringGenerator(NewID(),5), [dbo].StringGenerator(NewID(),5), N'9576987698')
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (15, [dbo].StringGenerator(NewID(),5), [dbo].StringGenerator(NewID(),5), [dbo].StringGenerator(NewID(),5), N'9576987612')
--Test Client
INSERT INTO [Sales4].[dbo].[Client]([IDClient], [LastName], [FirstName], [Address], [Phone])VALUES (770, N'Clearly', N'Test', N'Not Saratov', N'0000000000')


SET IDENTITY_INSERT [Sales4].[dbo].[Client] OFF


--Product
SET IDENTITY_INSERT [Sales4].[dbo].[Product] ON

INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (5, N'Lel', 5)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (6, N'Lel_2', 2)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (7, N'Lel3', 15)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (8, N'Lel_42', 22)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (10, N'Lel_52', 32)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (11, N'Lel6', 45)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (12, N'Lel_72', 52)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (13, N'Lel_82', 1)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (14, N'Lel9', 7)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (15, N'Lel_12', 82)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (9, N'Lel_9', 9)
--test Products
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (99, N'Test_5', 19)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (88, N'Test_55', 18)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (77, N'Test_7', 7)
INSERT INTO [Sales4].[dbo].[Product] ([IDProduct], [Description], [InStock])VALUES (17, N'Test_77', 77)




SET IDENTITY_INSERT [Sales4].[dbo].[Product]  OFF


--Order
SET IDENTITY_INSERT [Sales4].[dbo].[Order] ON

INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (5, 1, '1955-12-3')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (6, 2, '1955-12-4')--,smaldatetime
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (7, 3, '1955-12-5')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (8, 4, '1955-12-6')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (9, 5, '1955-12-7')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (10, 6, '1955-12-8')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (11, 7, '1955-12-9')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (12, 8, '1955-12-1')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (13, 9, '1955-12-3')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (14, 10, '1955-12-2')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (15, 11, '1955-12-5')
--Test Orders
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (5, 87, '1955-15-09')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (5, 88, '1955-16-09')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (7, 89, '1955-19-09')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (7, 90, '1955-17-09')

INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (5, 91, '1955-15-09')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (5, 92, '1955-16-09')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (7, 93, '1955-19-09')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (7, 94, '1955-17-09')

INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (5, 95, '1955-15-09')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (5, 96, '1955-16-09')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (7, 77, '1955-19-09')
INSERT INTO [Sales4].[dbo].[Order]([IDClient], [IDOrder], [OrdDate])VALUES (7, 17, '1955-17-09')

SET IDENTITY_INSERT [Sales4].[dbo].[Order] OFF


--Amount
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (1, 5, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (2, 6, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (3, 7, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (4, 8, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (5, 9, RAND()+20, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (6, 10, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (7, 11, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (8, 12, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (9, 13, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (10, 14, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (11, 15, RAND()*100, RAND()*120)
--Test Amounts
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (95, 14, RAND()*100, RAND()*120)
INSERT INTO [Sales4].[dbo].[Amount]([IDOrder], [IDProduct], [Qty], [Price])VALUES (96, 15, RAND()*100, RAND()*120)
