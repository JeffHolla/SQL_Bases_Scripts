-- 4. ������������� ���������� ������� (
--    ������� �������������� ����� (CAST, CONVERT),
--    ������� ��� �������� �������� NULL (ISNULL, NULLIF),
--    COALESCE ���������� ������� (CHOOSE,  IIF)
--    ).

----------- CAST ----------- �������� ��� ������� ������������� ��� ��������
--Select *
--from [Order]

--Select [Order].Id, CAST([Order].OrderCreatingTime as smalldatetime) OrderCreatingTime
--From [Order]

----------- CONVERT -----------
--Select [Order].Id, CONVERT(smalldatetime, [Order].OrderCreatingTime) OrderCreatingTime
--From [Order]

----------- ISNULL -----------
--SELECT Driver.Id, Driver.[Name], ISNULL(Car.ModelOfCar, '�����������') CarModel
----SELECT *  -- ������� ��� ���������� �������
--From Driver 
--LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
--Left JOIN Car on Car.Id = CarDriver.IdCar

--Select * From Car

--Select * from CarDriver

----------- NULLIF ----------- ����� ������������ ��� �������� �� null; 
-- ����� �������� ���� �� ������ � ��������, ���� ���, �� ���������� ������ � �.�.
-- ����� ������������ ��� ������ CASE
--SELECT Driver.Id, Driver.[Name],  NULLIF(Car.Id, 1) CarModel  -- �������� id ������ 1
--From Driver 
--LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
--Left JOIN Car on Car.Id = CarDriver.IdCar

----------- COALESCE ----------- �������������� ������������� ��� 
-- Case WHEN (expression1 IS NOT NULL) THEN expression1 ...
-- � �����, ������� ������ �� NULL, � ������ ������� ���������� Null
--SELECT DISTINCT Driver.[Name], --[Order].* 
--COALESCE(Car.Id, Car.ModelOfCar, Car.IdTypeOfCar, [Order].IdCarDriver) CoalesceValues
--FROM Driver
--LEFT JOIN Car on Car.Id = Driver.Id
--LEFT JOIN [Order] on [Order].IdCarDriver = 
--(Select IdCarDriver From CarDriver Where CarDriver.IdCar = Car.Id)

----------- CHOOSE -----------
-- ��������� �������� �� ������� �����
-- ��������� �������� �� ������ ��������
--SELECT Driver.Id, Driver.[Name], 
--CHOOSE(CarDriver.IdCar, '������', '������ ���������', '���� 5 ����', '���� 10 ����','������������') CarTypes
--From Driver
--LEFT JOIN CarDriver on CarDriver.Id = Driver.Id

--Select * from TypeOfCar

----------- IIF -----------
-- ��������� ��������� �� C#
-- IIF( boolean_expression, true_value, false_value )
SELECT Driver.Id, Driver.[Name], 
IIF(Car.ModelOfCar IS NULL, '�����������', Car.ModelOfCar) CarModel
From Driver 
LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
Left JOIN Car on Car.Id = CarDriver.IdCar