USE [master]
GO
/****** Object:  Database [Catalog]    Script Date: 26.04.2020 0:57:49 ******/
CREATE DATABASE [Catalog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Catalog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Catalog.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Catalog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Catalog_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Catalog] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Catalog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Catalog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Catalog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Catalog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Catalog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Catalog] SET ARITHABORT OFF 
GO
ALTER DATABASE [Catalog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Catalog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Catalog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Catalog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Catalog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Catalog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Catalog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Catalog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Catalog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Catalog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Catalog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Catalog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Catalog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Catalog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Catalog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Catalog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Catalog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Catalog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Catalog] SET  MULTI_USER 
GO
ALTER DATABASE [Catalog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Catalog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Catalog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Catalog] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Catalog]
GO
/****** Object:  Table [dbo].[BiblioFond]    Script Date: 26.04.2020 0:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BiblioFond](
	[IDFond] [int] NOT NULL,
	[Название] [nchar](30) NOT NULL,
	[Автор] [nchar](30) NOT NULL,
	[Читальный зал] [int] NULL,
	[Абонемент] [int] NULL,
	[Редкая литература] [bit] NOT NULL,
	[Периодика] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fonds]    Script Date: 26.04.2020 0:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fonds](
	[IDFond] [int] IDENTITY(1,1) NOT NULL,
	[Название Фонда] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Fonds] PRIMARY KEY CLUSTERED 
(
	[IDFond] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BiblioFond]  WITH CHECK ADD  CONSTRAINT [FK_BiblioFond_Fonds] FOREIGN KEY([IDFond])
REFERENCES [dbo].[Fonds] ([IDFond])
GO
ALTER TABLE [dbo].[BiblioFond] CHECK CONSTRAINT [FK_BiblioFond_Fonds]
GO
USE [master]
GO
ALTER DATABASE [Catalog] SET  READ_WRITE 
GO

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
