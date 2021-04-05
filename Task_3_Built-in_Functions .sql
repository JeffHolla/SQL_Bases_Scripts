-- 4. Использование встроенных функций (
--    функций преобразования типов (CAST, CONVERT),
--    функций для проверки значений NULL (ISNULL, NULLIF),
--    COALESCE логических функций (CHOOSE,  IIF)
--    ).

----------- CAST ----------- Например для лучшего представления или операций
--Select *
--from [Order]

--Select [Order].Id, CAST([Order].OrderCreatingTime as smalldatetime) OrderCreatingTime
--From [Order]

----------- CONVERT -----------
--Select [Order].Id, CONVERT(smalldatetime, [Order].OrderCreatingTime) OrderCreatingTime
--From [Order]

----------- ISNULL -----------
--SELECT Driver.Id, Driver.[Name], ISNULL(Car.ModelOfCar, 'Отсутствует') CarModel
----SELECT *  -- Покажет всю соединённую таблицу
--From Driver 
--LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
--Left JOIN Car on Car.Id = CarDriver.IdCar

--Select * From Car

--Select * from CarDriver

----------- NULLIF ----------- Можно использовать как обратный из null; 
-- Можно смотреть есть ли данные в колонках, если нет, то возвращать первую и т.д.
-- Можно использовать как замену CASE
--SELECT Driver.Id, Driver.[Name],  NULLIF(Car.Id, 1) CarModel  -- Исключим id машины 1
--From Driver 
--LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
--Left JOIN Car on Car.Id = CarDriver.IdCar

----------- COALESCE ----------- Переписывается оптимизатором как 
-- Case WHEN (expression1 IS NOT NULL) THEN expression1 ...
-- В общем, находит первый не NULL, в случае неудачи возвращает Null
--SELECT DISTINCT Driver.[Name], --[Order].* 
--COALESCE(Car.Id, Car.ModelOfCar, Car.IdTypeOfCar, [Order].IdCarDriver) CoalesceValues
--FROM Driver
--LEFT JOIN Car on Car.Id = Driver.Id
--LEFT JOIN [Order] on [Order].IdCarDriver = 
--(Select IdCarDriver From CarDriver Where CarDriver.IdCar = Car.Id)

----------- CHOOSE -----------
-- Позволяет задавать по индексу имена
-- Позволяет выбирать из списка значений
--SELECT Driver.Id, Driver.[Name], 
--CHOOSE(CarDriver.IdCar, 'Газель', 'Газель удлинённая', 'Фура 5 тонн', 'Фура 10 тонн','Рефрижератор') CarTypes
--From Driver
--LEFT JOIN CarDriver on CarDriver.Id = Driver.Id

--Select * from TypeOfCar

----------- IIF -----------
-- Буквально тернарник из C#
-- IIF( boolean_expression, true_value, false_value )
SELECT Driver.Id, Driver.[Name], 
IIF(Car.ModelOfCar IS NULL, 'Отсутствует', Car.ModelOfCar) CarModel
From Driver 
LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
Left JOIN Car on Car.Id = CarDriver.IdCar