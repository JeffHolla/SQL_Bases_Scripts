USE [master]
GO
/****** Object:  Database [TransportTransitFinal_Var_6]     Script Date: 05.04.2021 18:06:11 ******/
CREATE DATABASE [TransportTransitFinal_Var_6] 
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TransportTransit_Var_6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TransportTransitFinal_Var_6.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TransportTransit_Var_6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TransportTransitFinal_Var_6_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TransportTransitFinal_Var_6] .[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET ARITHABORT OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET  DISABLE_BROKER 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET  MULTI_USER 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET DB_CHAINING OFF 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TransportTransitFinal_Var_6] 
GO
/****** Object:  Table [dbo].[Car]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarNumber] [varchar](50) NOT NULL,
	[ModelOfCar] [varchar](50) NOT NULL,
	[IdTypeOfCar] [int] NOT NULL,
 CONSTRAINT [PK_CAR] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarDriver]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarDriver](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCar] [int] NOT NULL,
	[IdDriver] [int] NOT NULL,
	[WorkingUntil] [datetime] NOT NULL,
 CONSTRAINT [PK_CARDRIVER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarTypeProductType]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarTypeProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCarType] [int] NOT NULL,
	[IdProductType] [int] NOT NULL,
 CONSTRAINT [PK_CarTypeProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Patronymic] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CLIENT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DestinationAddress]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DestinationAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DESTINATIONADDRESS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Patronymic] [varchar](50) NOT NULL,
	[PassportData] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DRIVER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderCreatingTime] [datetime] NOT NULL,
	[IdCarDriver] [int] NOT NULL,
	[IdStorageAddress] [int] NOT NULL,
	[IdDestinationAddress] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[DateSheduledDeliver] [datetime] NOT NULL,
	[DateRealDelivered] [datetime] NOT NULL,
	[IdClient] [int] NOT NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[IdTypeOfProduct] [int] NOT NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOrder]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOrder](
	[Count] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdOrder] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StorageAddress]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_STORAGEADDRESS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfCar]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfCar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeOfCar] [varchar](50) NOT NULL,
	[AllowableWeightInTons] [real] NOT NULL,
 CONSTRAINT [PK_TYPEOFCAR] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfProduct]    Script Date: 05.04.2021 18:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeOfProduct] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TYPEOFPRODUCT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__TypeOfPr__60666C78542896A7] UNIQUE NONCLUSTERED 
(
	[TypeOfProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_TypeOfCar] FOREIGN KEY([IdTypeOfCar])
REFERENCES [dbo].[TypeOfCar] ([Id])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_TypeOfCar]
GO
ALTER TABLE [dbo].[CarDriver]  WITH CHECK ADD  CONSTRAINT [FK_CarDriver_Car] FOREIGN KEY([IdDriver])
REFERENCES [dbo].[Car] ([Id])
GO
ALTER TABLE [dbo].[CarDriver] CHECK CONSTRAINT [FK_CarDriver_Car]
GO
ALTER TABLE [dbo].[CarDriver]  WITH CHECK ADD  CONSTRAINT [FK_CarDriver_Driver] FOREIGN KEY([IdDriver])
REFERENCES [dbo].[Driver] ([Id])
GO
ALTER TABLE [dbo].[CarDriver] CHECK CONSTRAINT [FK_CarDriver_Driver]
GO
ALTER TABLE [dbo].[CarTypeProductType]  WITH CHECK ADD  CONSTRAINT [FK_CarTypeProductType_TypeOfCar] FOREIGN KEY([IdCarType])
REFERENCES [dbo].[TypeOfCar] ([Id])
GO
ALTER TABLE [dbo].[CarTypeProductType] CHECK CONSTRAINT [FK_CarTypeProductType_TypeOfCar]
GO
ALTER TABLE [dbo].[CarTypeProductType]  WITH CHECK ADD  CONSTRAINT [FK_CarTypeProductType_TypeOfProduct] FOREIGN KEY([IdProductType])
REFERENCES [dbo].[TypeOfProduct] ([Id])
GO
ALTER TABLE [dbo].[CarTypeProductType] CHECK CONSTRAINT [FK_CarTypeProductType_TypeOfProduct]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_CarDriver] FOREIGN KEY([IdCarDriver])
REFERENCES [dbo].[CarDriver] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_CarDriver]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_DestinationAddress] FOREIGN KEY([IdDestinationAddress])
REFERENCES [dbo].[DestinationAddress] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_DestinationAddress]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_StorageAddress] FOREIGN KEY([IdStorageAddress])
REFERENCES [dbo].[StorageAddress] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_StorageAddress]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_TypeOfProduct] FOREIGN KEY([IdTypeOfProduct])
REFERENCES [dbo].[TypeOfProduct] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_TypeOfProduct]
GO
ALTER TABLE [dbo].[ProductOrder]  WITH CHECK ADD  CONSTRAINT [FK_ProductOrder_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[ProductOrder] CHECK CONSTRAINT [FK_ProductOrder_Order]
GO
ALTER TABLE [dbo].[ProductOrder]  WITH CHECK ADD  CONSTRAINT [FK_ProductOrder_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[ProductOrder] CHECK CONSTRAINT [FK_ProductOrder_Product]
GO
USE [master]
GO
ALTER DATABASE [TransportTransitFinal_Var_6]  SET  READ_WRITE 
GO
