--1. Запросы с использованием различных видов соединений таблиц (Inner join, Left join, Right join, Full join, Cross join, Cross apply, самосоединение).

----------- Inner join -----------
--SELECT Driver.Id, Driver.[Name], Car.ModelOfCar
--FROM Driver
--INNER JOIN CarDriver on CarDriver.Id = Driver.Id 
--INNER JOIN Car on Car.Id = CarDriver.IdCar


----------- Left join -----------
--SELECT Driver.Id, Driver.[Name], ISNULL(Car.ModelOfCar, 'Отсутствует') CarModel
--FROM Driver
--LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
--LEFT JOIN Car on Car.Id = CarDriver.IdCar


----------- Right join -----------
--SELECT Driver.[Name], Car.ModelOfCar
--FROM Driver
--RIGHT JOIN CarDriver on CarDriver.Id = Driver.Id 
--RIGHT JOIN Car on Car.Id = CarDriver.IdCar


----------- Full join -----------
----- Full join - По сути Left + Rigth - то есть вернёт все возможные вариации 
--SELECT ISNULL(Driver.[Name], 'Водитель отсутствует') [Name],
--ISNULL(Car.ModelOfCar, 'Отсутствует') ModelOfCar
--FROM Driver
--FULL JOIN CarDriver on CarDriver.Id = Driver.Id 
--FULL JOIN Car on Car.Id = CarDriver.IdCar


----------- Cross join -----------
----- Cross join -- Каждая строка левой с !каждой! строкой правой
--SELECT Driver.[Name], Car.ModelOfCar
--FROM Driver
--CROSS JOIN Car


----------- Cross apply  -----------
----- Позволяет сокращать подзапросы
--SELECT Driver.[Name], CarDriverIdCar.IdCar
--FROM Driver
--CROSS APPLY
--(SELECT CarDriver.IdCar From CarDriver where CarDriver.Id = Driver.Id) CarDriverIdCar


----------- Самосоединение -----------
----- Соединение таблицы с самой собой - для этого нужно сделать псеводонимы для таблиц в FROM
SELECT dr1.[Name], dr2.Surname, dr2.Patronymic 
FROM Driver dr1, Driver dr2
where dr1.PassportData = dr2.PassportData
