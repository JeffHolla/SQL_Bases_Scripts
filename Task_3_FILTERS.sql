-- 2. ���������� ������ � �������� � �������������� ���������� (EXISTS, IN, ALL, SOME/ANY, BETWEEN, LIKE).

----------- EXISTS -----------
----- ���� ���������� ���� ���-�� �� �������
--SELECT ProductOrder.IdOrder, ProductOrder.IdProduct
--FROM ProductOrder
----WHERE EXISTS(SELECT * FROM Car WHERE Car.IdTypeOfCar = 3)
--WHERE EXISTS(SELECT * FROM [Order])


----------- IN -----------
----- �������� ���������� �������. �������� ���� OR
--SELECT *
--FROM Driver 
--WHERE [Name] IN('������', '�������')

----SELECT *
----FROM Driver 


----------- ALL -----------
----- ����� ��� �������� ���������� ���������
--SELECT *
--FROM Driver, CarDriver
--WHERE CarDriver.IdCar = All(Select IdCar From Car Where IdTypeOfCar = 1)


----------- SOME/ANY -----------
----- ����� �����-���� �������� ���������� ���������
--SELECT *
--FROM Driver, CarDriver
--WHERE CarDriver.IdCar = Any(Select IdCar From Car Where IdTypeOfCar IN(2, 3))


----------- BETWEEN -----------
SELECT *
FROM [Order]
WHERE Price BETWEEN 50 and 300  -- ����������������� ��� �������� ���


----------- LIKE -----------
----- % - 0, 1, ���������   |    _ - ���� ������
SELECT *
FROM Driver
WHERE [Name] Like '���%'
