USE [master]
GO
/****** Object:  Database [CitySales_Lab6]    Script Date: 10.05.2020 14:13:56 ******/
CREATE DATABASE [CitySales_Lab6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CitySales_Lab6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CitySales_Lab6.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CitySales4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CitySales_Lab6_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CitySales_Lab6] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CitySales_Lab6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CitySales_Lab6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET ARITHABORT OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CitySales_Lab6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CitySales_Lab6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CitySales_Lab6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CitySales_Lab6] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CitySales_Lab6] SET  MULTI_USER 
GO
ALTER DATABASE [CitySales_Lab6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CitySales_Lab6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CitySales_Lab6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CitySales_Lab6] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CitySales_Lab6]
GO
/****** Object:  UserDefinedDataType [dbo].[phone]    Script Date: 10.05.2020 14:13:56 ******/
CREATE TYPE [dbo].[phone] FROM [nchar](10) NULL
GO
/****** Object:  Table [dbo].[Amount]    Script Date: 10.05.2020 14:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amount](
	[IDOrder] [int] NOT NULL,
	[IDProduct] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Amount] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC,
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 10.05.2020 14:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[IDCity] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[IDCity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 10.05.2020 14:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[IDClient] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](20) NOT NULL,
	[LastName] [nchar](20) NOT NULL,
	[Address] [nchar](50) NOT NULL,
	[Phone] [dbo].[phone] NULL,
	[IDCity] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[IDClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [CK_Phone] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10.05.2020 14:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[IDOrder] [int] IDENTITY(1,1) NOT NULL,
	[IDClient] [int] NOT NULL,
	[OrdDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10.05.2020 14:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IDProduct] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nchar](100) NOT NULL,
	[InStock] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [CK_Description] UNIQUE NONCLUSTERED 
(
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OrdDate]  DEFAULT (getdate()) FOR [OrdDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_InStock]  DEFAULT ((0)) FOR [InStock]
GO
ALTER TABLE [dbo].[Amount]  WITH CHECK ADD  CONSTRAINT [FK_Amount_Order-IdOrder-IdOrder] FOREIGN KEY([IDOrder])
REFERENCES [dbo].[Order] ([IDOrder])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Amount] CHECK CONSTRAINT [FK_Amount_Order-IdOrder-IdOrder]
GO
ALTER TABLE [dbo].[Amount]  WITH CHECK ADD  CONSTRAINT [FK_Amount_Product] FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([IDProduct])
GO
ALTER TABLE [dbo].[Amount] CHECK CONSTRAINT [FK_Amount_Product]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_City] FOREIGN KEY([IDCity])
REFERENCES [dbo].[City] ([IDCity])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_City]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client-IdClient-IdClient] FOREIGN KEY([IDClient])
REFERENCES [dbo].[Client] ([IDClient])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client-IdClient-IdClient]
GO
ALTER TABLE [dbo].[Amount]  WITH CHECK ADD  CONSTRAINT [CK_AboveZeroPrice] CHECK  (([Price]>=(0)))
GO
ALTER TABLE [dbo].[Amount] CHECK CONSTRAINT [CK_AboveZeroPrice]
GO
ALTER TABLE [dbo].[Amount]  WITH CHECK ADD  CONSTRAINT [CK_AboveZeroQty] CHECK  (([Qty]>=(0)))
GO
ALTER TABLE [dbo].[Amount] CHECK CONSTRAINT [CK_AboveZeroQty]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [CK_Instock] CHECK  (([Instock]>=(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [CK_Instock]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ссылка на номер заказа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Amount', @level2type=N'COLUMN',@level2name=N'IDOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ссылка на номер товара' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Amount', @level2type=N'COLUMN',@level2name=N'IDProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Количество единиц товара в заказе' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Amount', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Цена товара' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Amount', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Уникальный идентификационный номер клиента, на который можно ссылаться в других таблицах' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Client', @level2type=N'COLUMN',@level2name=N'IDClient'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Имя клиента' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Client', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Фамилия клиента' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Client', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Адрес клиента' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Client', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Телефонный номер клиента' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Client', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Уникальный идентификационный номер заказа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'IDOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ссылка на номер клиента' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'IDClient'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата и время размещения заказа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'OrdDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Уникальный идентификационный номер для каждого товара' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'IDProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Короткое текстовое описание товара' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Количество единиц продукта на складе' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'InStock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ограничение на значения количества единиц на складе.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'CONSTRAINT',@level2name=N'CK_Instock'
GO
USE [master]
GO
ALTER DATABASE [CitySales_Lab6] SET  READ_WRITE 
GO
