USE [TransportTransitFinal_Var_6] 
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (1, N'Александр', N'Пушкин', N'Сергеевич')
INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (2, N'Владимир', N'Владимирович', N'Маяковский')
INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (3, N'Николай', N'Васильевич', N'Гоголь')
INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (4, N'Лев', N'Николаевич', N'Толстой')
INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (5, N'Михаил', N'Юрьевич', N'Лермонтов')
INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (6, N'Александр', N'Пушкин', N'Сергеевич')
INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (7, N'Владимир', N'Владимирович', N'Маяковский')
INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (8, N'Николай', N'Васильевич', N'Гоголь')
INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (9, N'Лев', N'Николаевич', N'Толстой')
INSERT [dbo].[Client] ([Id], [Name], [Surname], [Patronymic]) VALUES (10, N'Михаил', N'Юрьевич', N'Лермонтов')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[DestinationAddress] ON 

INSERT [dbo].[DestinationAddress] ([Id], [Address]) VALUES (1, N'Вольская, 75')
INSERT [dbo].[DestinationAddress] ([Id], [Address]) VALUES (2, N'Астраханская, 104')
INSERT [dbo].[DestinationAddress] ([Id], [Address]) VALUES (3, N'Чапаева, 20')
INSERT [dbo].[DestinationAddress] ([Id], [Address]) VALUES (4, N'Вольская, 90')
INSERT [dbo].[DestinationAddress] ([Id], [Address]) VALUES (5, N'Астраханская, 120')
INSERT [dbo].[DestinationAddress] ([Id], [Address]) VALUES (6, N'Чапаева, 120')
SET IDENTITY_INSERT [dbo].[DestinationAddress] OFF
GO
SET IDENTITY_INSERT [dbo].[StorageAddress] ON 

INSERT [dbo].[StorageAddress] ([Id], [Address]) VALUES (1, N'Кутякова, 15')
INSERT [dbo].[StorageAddress] ([Id], [Address]) VALUES (2, N'Вольская, 10')
INSERT [dbo].[StorageAddress] ([Id], [Address]) VALUES (3, N'Московская, 144')
INSERT [dbo].[StorageAddress] ([Id], [Address]) VALUES (4, N'Кутякова, 150')
INSERT [dbo].[StorageAddress] ([Id], [Address]) VALUES (5, N'Вольская, 100')
INSERT [dbo].[StorageAddress] ([Id], [Address]) VALUES (6, N'Московская, 12')
SET IDENTITY_INSERT [dbo].[StorageAddress] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeOfCar] ON 

INSERT [dbo].[TypeOfCar] ([Id], [TypeOfCar], [AllowableWeightInTons]) VALUES (1, N'Газель', 1.5)
INSERT [dbo].[TypeOfCar] ([Id], [TypeOfCar], [AllowableWeightInTons]) VALUES (2, N'Газель удлинённая', 2)
INSERT [dbo].[TypeOfCar] ([Id], [TypeOfCar], [AllowableWeightInTons]) VALUES (3, N'Фура 5 тонн', 5)
INSERT [dbo].[TypeOfCar] ([Id], [TypeOfCar], [AllowableWeightInTons]) VALUES (4, N'Фура 10 тонн', 10)
INSERT [dbo].[TypeOfCar] ([Id], [TypeOfCar], [AllowableWeightInTons]) VALUES (5, N'Рефрижератор', 3)
SET IDENTITY_INSERT [dbo].[TypeOfCar] OFF
GO
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([Id], [CarNumber], [ModelOfCar], [IdTypeOfCar]) VALUES (1, N'т582хс164', N'ГАЗ', 1)
INSERT [dbo].[Car] ([Id], [CarNumber], [ModelOfCar], [IdTypeOfCar]) VALUES (2, N'с125ко164', N'ГАЗ', 2)
INSERT [dbo].[Car] ([Id], [CarNumber], [ModelOfCar], [IdTypeOfCar]) VALUES (3, N'к923от164', N'MAN', 3)
INSERT [dbo].[Car] ([Id], [CarNumber], [ModelOfCar], [IdTypeOfCar]) VALUES (4, N'р312ко164', N'Hyundai', 4)
INSERT [dbo].[Car] ([Id], [CarNumber], [ModelOfCar], [IdTypeOfCar]) VALUES (5, N'с512то164', N'Skywell', 3)
INSERT [dbo].[Car] ([Id], [CarNumber], [ModelOfCar], [IdTypeOfCar]) VALUES (6, N'к122то164', N'Skywell', 5)
SET IDENTITY_INSERT [dbo].[Car] OFF
GO
SET IDENTITY_INSERT [dbo].[Driver] ON 

INSERT [dbo].[Driver] ([Id], [Name], [Surname], [Patronymic], [PassportData]) VALUES (1, N'Дмитрий', N'Власов', N'Сергеевич', N'54 25 555555')
INSERT [dbo].[Driver] ([Id], [Name], [Surname], [Patronymic], [PassportData]) VALUES (2, N'Алексей', N'Петров', N'Викторович', N'51 22 521341')
INSERT [dbo].[Driver] ([Id], [Name], [Surname], [Patronymic], [PassportData]) VALUES (3, N'Сергей', N'Сергеев', N'Сергеевич', N'54 25 554312')
INSERT [dbo].[Driver] ([Id], [Name], [Surname], [Patronymic], [PassportData]) VALUES (4, N'Дмитрий', N'Власов', N'Сергеевич', N'54 25 554123')
INSERT [dbo].[Driver] ([Id], [Name], [Surname], [Patronymic], [PassportData]) VALUES (1002, N'Тест', N'Тестович', N'Тестов', N'54 25 552341')
INSERT [dbo].[Driver] ([Id], [Name], [Surname], [Patronymic], [PassportData]) VALUES (1003, N'Сергей', N'Сергеевич', N'Сергеев', N'54 25 552423')
INSERT [dbo].[Driver] ([Id], [Name], [Surname], [Patronymic], [PassportData]) VALUES (1004, N'Дмитрий', N'Власов', N'Сергеевич', N'54 25 555755')
INSERT [dbo].[Driver] ([Id], [Name], [Surname], [Patronymic], [PassportData]) VALUES (1005, N'Алексей', N'Петров', N'Викторович', N'51 22 521241')
SET IDENTITY_INSERT [dbo].[Driver] OFF
GO
SET IDENTITY_INSERT [dbo].[CarDriver] ON 

INSERT [dbo].[CarDriver] ([Id], [IdCar], [IdDriver], [WorkingUntil]) VALUES (1, 1, 1, CAST(N'2021-03-31T19:55:47.713' AS DateTime))
INSERT [dbo].[CarDriver] ([Id], [IdCar], [IdDriver], [WorkingUntil]) VALUES (2, 5, 2, CAST(N'2021-03-31T20:55:48.010' AS DateTime))
INSERT [dbo].[CarDriver] ([Id], [IdCar], [IdDriver], [WorkingUntil]) VALUES (3, 2, 3, CAST(N'2021-03-31T21:55:48.030' AS DateTime))
INSERT [dbo].[CarDriver] ([Id], [IdCar], [IdDriver], [WorkingUntil]) VALUES (4, 3, 4, CAST(N'2021-03-31T22:55:48.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[CarDriver] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [OrderCreatingTime], [IdCarDriver], [IdStorageAddress], [IdDestinationAddress], [Price], [DateSheduledDeliver], [DateRealDelivered], [IdClient]) VALUES (1, CAST(N'2021-03-31T19:55:48.157' AS DateTime), 1, 2, 3, 500.0000, CAST(N'2021-03-31T20:55:48.157' AS DateTime), CAST(N'2021-03-31T20:55:48.157' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [OrderCreatingTime], [IdCarDriver], [IdStorageAddress], [IdDestinationAddress], [Price], [DateSheduledDeliver], [DateRealDelivered], [IdClient]) VALUES (2, CAST(N'2021-03-31T19:55:48.207' AS DateTime), 2, 2, 1, 1000.0000, CAST(N'2021-03-31T21:55:48.207' AS DateTime), CAST(N'2021-03-31T21:55:48.207' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [OrderCreatingTime], [IdCarDriver], [IdStorageAddress], [IdDestinationAddress], [Price], [DateSheduledDeliver], [DateRealDelivered], [IdClient]) VALUES (3, CAST(N'2021-03-31T20:55:48.220' AS DateTime), 3, 1, 1, 1000.0000, CAST(N'2021-03-31T21:55:48.220' AS DateTime), CAST(N'2021-03-31T21:55:48.220' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeOfProduct] ON 

INSERT [dbo].[TypeOfProduct] ([Id], [TypeOfProduct]) VALUES (1, N'Сыпучие')
INSERT [dbo].[TypeOfProduct] ([Id], [TypeOfProduct]) VALUES (2, N'Жидкие')
INSERT [dbo].[TypeOfProduct] ([Id], [TypeOfProduct]) VALUES (3, N'Газообразные')
INSERT [dbo].[TypeOfProduct] ([Id], [TypeOfProduct]) VALUES (4, N'Скоропортящиеся')
INSERT [dbo].[TypeOfProduct] ([Id], [TypeOfProduct]) VALUES (5, N'Без особых условий')
INSERT [dbo].[TypeOfProduct] ([Id], [TypeOfProduct]) VALUES (6, N'Скоропортящиеся грузы')
INSERT [dbo].[TypeOfProduct] ([Id], [TypeOfProduct]) VALUES (7, N'Опасные грузы')
SET IDENTITY_INSERT [dbo].[TypeOfProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[CarTypeProductType] ON 

INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (1, 3, 3)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (2, 3, 4)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (3, 3, 2)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (4, 4, 3)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (5, 4, 4)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (6, 4, 2)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (7, 5, 6)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (8, 1, 3)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (9, 1, 2)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (10, 2, 3)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (11, 2, 2)
INSERT [dbo].[CarTypeProductType] ([Id], [IdCarType], [IdProductType]) VALUES (12, 2, 4)
SET IDENTITY_INSERT [dbo].[CarTypeProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [Title], [Price], [IdTypeOfProduct]) VALUES (6, N'Песок, 1т', 250.0000, 1)
INSERT [dbo].[Product] ([id], [Title], [Price], [IdTypeOfProduct]) VALUES (7, N'Сахар, 1т', 500.0000, 1)
INSERT [dbo].[Product] ([id], [Title], [Price], [IdTypeOfProduct]) VALUES (8, N'Молоко, 1л', 670.0000, 2)
INSERT [dbo].[Product] ([id], [Title], [Price], [IdTypeOfProduct]) VALUES (9, N'Бутан, 1м3', 230.0000, 3)
INSERT [dbo].[Product] ([id], [Title], [Price], [IdTypeOfProduct]) VALUES (10, N'Холодильник', 70.0000, 5)
INSERT [dbo].[Product] ([id], [Title], [Price], [IdTypeOfProduct]) VALUES (11, N'Диван', 50.0000, 5)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
