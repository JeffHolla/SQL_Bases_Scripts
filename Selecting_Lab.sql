
--------------Lab_4-----------------
----Задание 1.
--Select *
--from [Sales4].[dbo].[Order]
--where (OrdDate >= '01-09-1955') and (OrdDate < '01-10-1955')
--Order by OrdDate


----Задание 2.
--SELECT IDClient
--FROM [Sales4].[dbo].[Order]
--where (OrdDate >= '01-09-1955') and (OrdDate < '01-10-1955')
--GROUP BY IDClient
--HAVING COUNT(*) > 3


----Задание 3.
--Select *
--from [Sales4].[dbo].[Order]
--where [Order].IDOrder=(Select IDOrder from dbo.Amount 
--where Amount.IDProduct = (Select IDProduct from dbo.[Product] where [Description] = ('Lel_9') ))


----Задание 4.
--Select [Client].[FirstName] as 'Имя',
--[Client].[LastName] as 'Фамилия'
--from [Sales4].[dbo].[Client]
--where Client.IDClient in (Select [Order].IDClient from [Sales4].[dbo].[Order] 
--where (OrdDate >= '01-09-1955') and (OrdDate < '01-10-1955'))


----Задание 5.
--select *
--from [Sales4].[dbo].[Order] o
--where 50 < (Select SUM([Price]) from [Sales4].[dbo].[Amount] a where a.IDOrder = o.IDOrder)--Нужно умножать на QTY в SUM?


----Задание 6.
--select [Product].[Description], [Amount].[Price], [Amount].[Qty], Qty * Price as 'Стоимость'
--from [Sales4].[dbo].[Amount], [Sales4].[dbo].[Product], [Sales4].[dbo].[Order]
--where [Product].IDProduct = [Amount].IDProduct and [Amount].IDOrder = [Order].IDOrder


----Задание 7.
--select IDProduct 
--from [Sales4].[dbo].[Amount]
--where IDOrder in (select IDOrder from [Sales4].[dbo].[Order] where IDClient = 5)


----Задание 8.
select Client.FirstName, Client.LastName
from Sales4.dbo.Client
where Client.IDClient Not in (select [Order].IDClient from Sales4.dbo.[Order])
