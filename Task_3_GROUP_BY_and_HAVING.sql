-- 7. ������� � �������������� ���������� �������,
--    ����������� (GROUP BY) � ���������� ����� (HAVING).

----------- GROUP BY -----------
SELECT Car.ModelOfCar, Count(Driver.Id) CountModelCarsUsed 
From Driver
LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
RIGHT JOIN Car on Car.Id = CarDriver.IdCar 
GROUP BY Car.ModelOfCar

----------- HAVING -----------
SELECT Car.ModelOfCar, Count(Driver.Id) as CountModelCarsUsed 
From Driver
LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
RIGHT JOIN Car on Car.Id = CarDriver.IdCar 
GROUP BY Car.ModelOfCar
HAVING Count(Driver.Id) >= 1
