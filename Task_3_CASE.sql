-- 3. Запросы с использованием выражения CASE.
-- CASE
SELECT Driver.[Name],
	CASE
	WHEN Car.ModelOfCar IS NULL
	THEN 'Не задана машина'
	ELSE Car.ModelOfCar
	END ModelOfCar
FROM Driver
LEFT JOIN Car
on Car.Id = Driver.Id