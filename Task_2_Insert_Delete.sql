---------- Insert ��� StorageAddress ----------
--INSERT INTO StorageAddress([Address])
--VALUES('��������, 15');
--INSERT INTO StorageAddress([Address])
--VALUES('��������, 10');
--INSERT INTO StorageAddress([Address])
--VALUES('����������, 144');

---------- Insert ��� DestinationAddress ----------
--INSERT INTO DestinationAddress([Address])
--VALUES('��������, 75');
--INSERT INTO DestinationAddress([Address])
--VALUES('������������, 104');
--INSERT INTO DestinationAddress([Address])
--VALUES('�������, 20');

---------- Insert ��� Client ----------
--INSERT INTO Client([Name], Patronymic, Surname)
--VALUES('���������', '���������', '������');
--INSERT INTO Client([Name], Surname, Patronymic)
--VALUES('��������', '������������', '����������');
--INSERT INTO Client([Name], Surname, Patronymic)
--VALUES('�������', '����������', '������');
--INSERT INTO Client([Name], Surname, Patronymic)
--VALUES('���', '����������', '�������');
--INSERT INTO Client([Name], Surname, Patronymic)
--VALUES('������', '�������', '���������');

---------- Insert ��� TypeOfCar ----------
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons)
--VALUES('������', 1.5);
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons)
--VALUES('������ ���������', 2);
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons)
--VALUES('���� 5 ����', 5);
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons)
--VALUES('���� 10 ����', 10);
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons) -- ?
--VALUES('������������', 3);

---------- Insert ��� Car ----------
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('�582��164', '���', 1);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('�125��164', '���', 2);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('�923��164', 'MAN', 3);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('�312��164', 'Hyundai', 4);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('�512��164', 'Skywell', 3);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('�122��164', 'Skywell', 5);

---------- Insert ��� TypeOfProduct ----------
--INSERT INTO TypeOfProduct(TypeOfProduct)
--VALUES('�������');
--INSERT INTO TypeOfProduct(TypeOfProduct)
--VALUES('������');
--INSERT INTO TypeOfProduct(TypeOfProduct)
--VALUES('������������');
--INSERT INTO TypeOfProduct(TypeOfProduct) -- ?
--VALUES('���������������');
--INSERT INTO TypeOfProduct(TypeOfProduct)
--VALUES('��� ������ �������');

---------- Insert ��� Product ----------
--INSERT INTO Product(Title, Price, IdTypeOfProduct)
--VALUES('�����, 1�', 250, 1);
--INSERT INTO Product(Title, Price, IdTypeOfProduct)
--VALUES('�����, 1�', 500, 1);
--INSERT INTO Product(Title, Price, IdTypeOfProduct)
--VALUES('������, 1�', 670, 2);
--INSERT INTO Product(Title, Price, IdTypeOfProduct)
--VALUES('�����, 1�3', 230, 3);
--INSERT INTO Product(Title, Price, IdTypeOfProduct) -- ?
--VALUES('�����������', 70, 5);
--INSERT INTO Product(Title, Price, IdTypeOfProduct) -- ?
--VALUES('�����', 50, 5);

---------- Insert ��� Driver ----------
INSERT INTO Driver([Name], Patronymic, Surname, PassportData)
VALUES('�������', '���������', '������', '54 25 555555');
INSERT INTO Driver([Name], Patronymic, Surname, PassportData)
VALUES('�������', '����������', '������', '51 22 521341');
INSERT INTO Driver([Name], Patronymic, Surname, PassportData)
VALUES('������', '���������', '�������', '54 25 554312');
INSERT INTO Driver([Name], Patronymic, Surname, PassportData)
VALUES('�������', '���������', '������', '54 25 555123');

---------- Insert ��� CarDriver ----------


-----------------------
---------- Insert ��� ProductOrder ----------
--INSERT INTO ProductOrder([Count], IdProduct, IdOrder)
--VALUES(15, 1,);
--INSERT INTO ProductOrder([Count], IdProduct, IdOrder)
--VALUES(15, 1,);
--INSERT INTO ProductOrder([Count], IdProduct, IdOrder)
--VALUES(15, 1,);
