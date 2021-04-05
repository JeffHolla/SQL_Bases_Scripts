--1. ������� � �������������� ��������� ����� ���������� ������ (Inner join, Left join, Right join, Full join, Cross join, Cross apply, ��������������).

----------- Inner join -----------
--SELECT Driver.Id, Driver.[Name], Car.ModelOfCar
--FROM Driver
--INNER JOIN CarDriver on CarDriver.Id = Driver.Id 
--INNER JOIN Car on Car.Id = CarDriver.IdCar


----------- Left join -----------
--SELECT Driver.Id, Driver.[Name], ISNULL(Car.ModelOfCar, '�����������') CarModel
--FROM Driver
--LEFT JOIN CarDriver on CarDriver.Id = Driver.Id 
--LEFT JOIN Car on Car.Id = CarDriver.IdCar


----------- Right join -----------
--SELECT Driver.[Name], Car.ModelOfCar
--FROM Driver
--RIGHT JOIN CarDriver on CarDriver.Id = Driver.Id 
--RIGHT JOIN Car on Car.Id = CarDriver.IdCar


----------- Full join -----------
----- Full join - �� ���� Left + Rigth - �� ���� ����� ��� ��������� �������� 
--SELECT ISNULL(Driver.[Name], '�������� �����������') [Name],
--ISNULL(Car.ModelOfCar, '�����������') ModelOfCar
--FROM Driver
--FULL JOIN CarDriver on CarDriver.Id = Driver.Id 
--FULL JOIN Car on Car.Id = CarDriver.IdCar


----------- Cross join -----------
----- Cross join -- ������ ������ ����� � !������! ������� ������
--SELECT Driver.[Name], Car.ModelOfCar
--FROM Driver
--CROSS JOIN Car


----------- Cross apply  -----------
----- ��������� ��������� ����������
--SELECT Driver.[Name], CarDriverIdCar.IdCar
--FROM Driver
--CROSS APPLY
--(SELECT CarDriver.IdCar From CarDriver where CarDriver.Id = Driver.Id) CarDriverIdCar


----------- �������������� -----------
----- ���������� ������� � ����� ����� - ��� ����� ����� ������� ����������� ��� ������ � FROM
SELECT dr1.[Name], dr2.Surname, dr2.Patronymic 
FROM Driver dr1, Driver dr2
where dr1.PassportData = dr2.PassportData
