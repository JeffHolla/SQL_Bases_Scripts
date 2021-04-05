-- 6. Запросы с использованием функций даты и времени (
--    DATEPART, DATEADD, DATEDIFF, GETDATE(), SYSDATETIMEOFFSET() и т.п.).

----------- DATEPART -----------
--SELECT [Order].Id, [Order].OrderCreatingTime,
--DATEPART(YEAR, [Order].OrderCreatingTime) [Year],
--DATEPART(MONTH, [Order].OrderCreatingTime) [Month],
--DATEPART(DAY, [Order].OrderCreatingTime) [Day]
--FROM [Order]

----------- DATEADD -----------
--SELECT [Order].Id, [Order].OrderCreatingTime,
--DATEADD(YEAR, 1, [Order].OrderCreatingTime) [Year],
--DATEADD(MONTH, 5, [Order].OrderCreatingTime) [Month],
--DATEADD(DAY, 3, [Order].OrderCreatingTime) [Day]
--FROM [Order]

----------- DATEDIFF -----------
--SELECT [Order].Id, [Order].OrderCreatingTime,
--DATEDIFF(YEAR, [Order].OrderCreatingTime, [Order].DateRealDelivered) [Year],
--DATEDIFF(MONTH, [Order].OrderCreatingTime, [Order].DateRealDelivered) [Month],
--DATEDIFF(DAY, [Order].OrderCreatingTime, [Order].DateRealDelivered) [Day],
--DATEDIFF(HOUR, [Order].OrderCreatingTime, [Order].DateRealDelivered) [HOUR],
--DATEDIFF(MINUTE, [Order].OrderCreatingTime, [Order].DateRealDelivered) [MINUTE],
--DATEDIFF(MINUTE, DATEADD(Hour, 5, [Order].OrderCreatingTime), [Order].DateRealDelivered) [TestMINUTE]
--FROM [Order]

----------- GETDATE -----------
--SELECT [Order].Id, [Order].OrderCreatingTime, GETDATE() CurrentDateTime
--FROM [Order]

----------- SYSDATETIMEOFFSET -----------
-- OffSet от UTC
SELECT [Order].Id, [Order].OrderCreatingTime, 
GETDATE() CurrentDateTime, SYSDATETIMEOFFSET() CurrentDateTimeWithOffset
FROM [Order]
