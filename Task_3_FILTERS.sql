-- 2. Фильтрация данных в запросах с использованием предикатов (EXISTS, IN, ALL, SOME/ANY, BETWEEN, LIKE).

----------- EXISTS -----------
----- Если существует хоть что-то из запроса
--SELECT ProductOrder.IdOrder, ProductOrder.IdProduct
--FROM ProductOrder
----WHERE EXISTS(SELECT * FROM Car WHERE Car.IdTypeOfCar = 3)
--WHERE EXISTS(SELECT * FROM [Order])


----------- IN -----------
----- Оператор сокращения запроса. Заменяет кучу OR
--SELECT *
--FROM Driver 
--WHERE [Name] IN('Сергей', 'Дмитрий')

----SELECT *
----FROM Driver 


----------- ALL -----------
----- Когда все значения подзапроса совпадают
--SELECT *
--FROM Driver, CarDriver
--WHERE CarDriver.IdCar = All(Select IdCar From Car Where IdTypeOfCar = 1)


----------- SOME/ANY -----------
----- Когда какое-либо значение подзапроса совпадает
--SELECT *
--FROM Driver, CarDriver
--WHERE CarDriver.IdCar = Any(Select IdCar From Car Where IdTypeOfCar IN(2, 3))


----------- BETWEEN -----------
SELECT *
FROM [Order]
WHERE Price BETWEEN 50 and 300  -- Подкорректировать для реальных цен


----------- LIKE -----------
----- % - 0, 1, несколько   |    _ - один символ
SELECT *
FROM Driver
WHERE [Name] Like 'Дми%'
