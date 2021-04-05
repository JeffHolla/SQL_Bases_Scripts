set identity_insert [Catalog].dbo.Fonds ON
insert into [Catalog].dbo.Fonds(IDFond, [Название Фонда])
values(1, 'Фонд библиотечных котят')
insert into [Catalog].dbo.Fonds(IDFond, [Название Фонда])
values(2, 'Фонд просто тестовый')
insert into [Catalog].dbo.Fonds(IDFond, [Название Фонда])
values(3, 'Фонд любителей drop table')
insert into [Catalog].dbo.Fonds(IDFond, [Название Фонда])
values(4, 'Фонд фантастики')
insert into [Catalog].dbo.Fonds(IDFond, [Название Фонда])
values(5, 'Фонд романов')
insert into [Catalog].dbo.Fonds(IDFond, [Название Фонда])
values(6, 'Фонд детективов')
set identity_insert [Catalog].dbo.Fonds OFF


insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(1, N'Котята', N'Евгений', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(2, N'ТестФ', N'Касперский', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(3, N'DPTabl', N'Касперски', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(4, N'Фантаст', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(5, N'Роман с', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(6, N'Детектив', N'Олег', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(1, N'Крис', N'Котята', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(1, N'Евгений', N'Котята', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(1, N'Кот', N'Олег', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(1, N'Лемур', N'Олег', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(4, N'Хомяк', N'Олег', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(6, N'Детек', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(3, N'Как', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(3, N'Сделать', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(3, N'Drop', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(3, N'Table', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(4, N'Code', N'Евгений', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(5, N'Test', N'Каспер', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(5, N'Case', N'Каспер', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(6, N'Больше', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(5, N'Криса', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(4, N'По', N'Крис', 123, 22, 1, 0)
insert into [Catalog].dbo.BiblioFond
([IDFond],[Название],[Автор],[Читальный зал],[Абонемент],[Периодика],[Редкая литература])
values(3, N'Фондам', N'Крис', 123, 22, 1, 0)
