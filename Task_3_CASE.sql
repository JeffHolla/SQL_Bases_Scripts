-- 3. ������� � �������������� ��������� CASE.
-- CASE
SELECT Driver.[Name],
	CASE
	WHEN Car.ModelOfCar IS NULL
	THEN '�� ������ ������'
	ELSE Car.ModelOfCar
	END ModelOfCar
FROM Driver
LEFT JOIN Car
on Car.Id = Driver.Id