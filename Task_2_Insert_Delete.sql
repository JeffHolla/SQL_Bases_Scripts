---------- Insert для StorageAddress ----------
--INSERT INTO StorageAddress([Address])
--VALUES('Кутякова, 15');
--INSERT INTO StorageAddress([Address])
--VALUES('Вольская, 10');
--INSERT INTO StorageAddress([Address])
--VALUES('Московская, 144');

---------- Insert для DestinationAddress ----------
--INSERT INTO DestinationAddress([Address])
--VALUES('Вольская, 75');
--INSERT INTO DestinationAddress([Address])
--VALUES('Астраханская, 104');
--INSERT INTO DestinationAddress([Address])
--VALUES('Чапаева, 20');

---------- Insert для Client ----------
--INSERT INTO Client([Name], Patronymic, Surname)
--VALUES('Александр', 'Сергеевич', 'Пушкин');
--INSERT INTO Client([Name], Surname, Patronymic)
--VALUES('Владимир', 'Владимирович', 'Маяковский');
--INSERT INTO Client([Name], Surname, Patronymic)
--VALUES('Николай', 'Васильевич', 'Гоголь');
--INSERT INTO Client([Name], Surname, Patronymic)
--VALUES('Лев', 'Николаевич', 'Толстой');
--INSERT INTO Client([Name], Surname, Patronymic)
--VALUES('Михаил', 'Юрьевич', 'Лермонтов');

---------- Insert для TypeOfCar ----------
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons)
--VALUES('Газель', 1.5);
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons)
--VALUES('Газель удлинённая', 2);
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons)
--VALUES('Фура 5 тонн', 5);
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons)
--VALUES('Фура 10 тонн', 10);
--INSERT INTO TypeOfCar(TypeOfCar, AllowableWeightInTons) -- ?
--VALUES('Рефрижератор', 3);

---------- Insert для Car ----------
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('т582хс164', 'ГАЗ', 1);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('с125ко164', 'ГАЗ', 2);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('к923от164', 'MAN', 3);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('р312ко164', 'Hyundai', 4);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('с512то164', 'Skywell', 3);
--INSERT INTO Car(CarNumber, ModelOfCar, IdTypeOfCar)
--VALUES('к122то164', 'Skywell', 5);

---------- Insert для TypeOfProduct ----------
--INSERT INTO TypeOfProduct(TypeOfProduct)
--VALUES('Сыпучие');
--INSERT INTO TypeOfProduct(TypeOfProduct)
--VALUES('Жидкие');
--INSERT INTO TypeOfProduct(TypeOfProduct)
--VALUES('Газообразные');
--INSERT INTO TypeOfProduct(TypeOfProduct) -- ?
--VALUES('Скоропортящиеся');
--INSERT INTO TypeOfProduct(TypeOfProduct)
--VALUES('Без особых условий');

---------- Insert для Product ----------
--INSERT INTO Product(Title, Price, IdTypeOfProduct)
--VALUES('Песок, 1т', 250, 1);
--INSERT INTO Product(Title, Price, IdTypeOfProduct)
--VALUES('Сахар, 1т', 500, 1);
--INSERT INTO Product(Title, Price, IdTypeOfProduct)
--VALUES('Молоко, 1л', 670, 2);
--INSERT INTO Product(Title, Price, IdTypeOfProduct)
--VALUES('Бутан, 1м3', 230, 3);
--INSERT INTO Product(Title, Price, IdTypeOfProduct) -- ?
--VALUES('Холодильник', 70, 5);
--INSERT INTO Product(Title, Price, IdTypeOfProduct) -- ?
--VALUES('Диван', 50, 5);

---------- Insert для Driver ----------
INSERT INTO Driver([Name], Patronymic, Surname, PassportData)
VALUES('Дмитрий', 'Сергеевич', 'Власов', '54 25 555555');
INSERT INTO Driver([Name], Patronymic, Surname, PassportData)
VALUES('Алексей', 'Викторович', 'Петров', '51 22 521341');
INSERT INTO Driver([Name], Patronymic, Surname, PassportData)
VALUES('Сергей', 'Сергеевич', 'Сергеев', '54 25 554312');
INSERT INTO Driver([Name], Patronymic, Surname, PassportData)
VALUES('Дмитрий', 'Сергеевич', 'Власов', '54 25 555123');

---------- Insert для CarDriver ----------


-----------------------
---------- Insert для ProductOrder ----------
--INSERT INTO ProductOrder([Count], IdProduct, IdOrder)
--VALUES(15, 1,);
--INSERT INTO ProductOrder([Count], IdProduct, IdOrder)
--VALUES(15, 1,);
--INSERT INTO ProductOrder([Count], IdProduct, IdOrder)
--VALUES(15, 1,);
