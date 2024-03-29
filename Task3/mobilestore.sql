USE [master]
GO
/****** Object:  Database [MobileStore]    Script Date: 10/20/2019 7:37:27 PM ******/
CREATE DATABASE [MobileStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MobileStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MobileStore.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MobileStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MobileStore_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MobileStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobileStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobileStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MobileStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MobileStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MobileStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MobileStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [MobileStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MobileStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MobileStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MobileStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MobileStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MobileStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MobileStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MobileStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MobileStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MobileStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MobileStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MobileStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MobileStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MobileStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MobileStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MobileStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MobileStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MobileStore] SET RECOVERY FULL 
GO
ALTER DATABASE [MobileStore] SET  MULTI_USER 
GO
ALTER DATABASE [MobileStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MobileStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MobileStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MobileStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MobileStore] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MobileStore', N'ON'
GO
USE [MobileStore]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 10/20/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 10/20/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MADM] [int] IDENTITY(1,1) NOT NULL,
	[TENDM] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DANHMUC] PRIMARY KEY CLUSTERED 
(
	[MADM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/20/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductName] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[Manufactures] [nvarchar](50) NOT NULL,
	[Condition] [nvarchar](50) NOT NULL,
	[Img] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 10/20/2019 7:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [nvarchar](50) NOT NULL,
	[TENSP] [nvarchar](50) NULL,
	[GIA] [int] NULL,
	[MOTA] [nvarchar](4000) NULL,
	[TRANGTHAI] [nvarchar](50) NULL,
	[HINH] [nvarchar](50) NULL,
	[MADM] [int] NULL,
	[SOLUONG] [int] NULL,
	[THELOAI] [nvarchar](50) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[admin] ([username], [password]) VALUES (N'a', N'a')
INSERT [dbo].[admin] ([username], [password]) VALUES (N'b', N'b')
INSERT [dbo].[admin] ([username], [password]) VALUES (N'c', N'c')
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([MADM], [TENDM]) VALUES (1, N'Apple')
INSERT [dbo].[DANHMUC] ([MADM], [TENDM]) VALUES (2, N'SamSung')
INSERT [dbo].[DANHMUC] ([MADM], [TENDM]) VALUES (3, N'Huawei')
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'aaa', 0, 0, N'bbbbb', N'Apple', N'New', N'hinh12.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'bbbb', 0, 0, N'weeeeeeeeee', N'SamSung', N'Old', N'hinh11.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'cccccc', 0, 0, N'weeeeeeeeee', N'SamSung', N'Old', N'hinh11.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'dadsd', 0, 0, N'dasdads', N'SamSung', N'New', N'hinh10.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'das', 0, 0, N'adasd', N'Apple', N'New', N'hinh9.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'Galaxy S8', 699, 200, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'SamSung', N'Refurbished', N'S8.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'iPhone 8 Plus 64GB PRODUCT RED', 1009, 250, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'Apple', N'Old ', N'iPhone8.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'Iphone X', 1009, 800, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'Apple', N'New', N'iPhoneX.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'P20 Pro 128GB Dual SIM Twilight', 899, 600, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'Huawei', N'New', N'P20.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'xxx', 0, 0, N'vvvvvvvvv', N'Apple', N'New', N'hinh10.png')
INSERT [dbo].[Product] ([ProductName], [Price], [Stock], [Description], [Manufactures], [Condition], [Img]) VALUES (N'zzz', 0, 0, N'goob', N'Apple', N'New', N'hinh88.png')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [MOTA], [TRANGTHAI], [HINH], [MADM], [SOLUONG], [THELOAI]) VALUES (N'SP01', N'Galaxy S8', 699, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'Refurbished', N'S8.png', 2, 4, N'Iphone')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [MOTA], [TRANGTHAI], [HINH], [MADM], [SOLUONG], [THELOAI]) VALUES (N'SP02', N'iPhone 8 Plus 64GB PRODUCT RED', 1009, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'Old ', N'iPhone8.png', 1, 2, N'Iphone')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [MOTA], [TRANGTHAI], [HINH], [MADM], [SOLUONG], [THELOAI]) VALUES (N'SP03', N'Iphone X', 1009, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'New', N'iPhoneX.png', 1, 6, N'Huawei')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [MOTA], [TRANGTHAI], [HINH], [MADM], [SOLUONG], [THELOAI]) VALUES (N'SP04', N'P20 Pro 128GB Dual SIM Twilight', 899, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'New', N'P20.png', 3, 7, N'Xaomi')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [MOTA], [TRANGTHAI], [HINH], [MADM], [SOLUONG], [THELOAI]) VALUES (N'SP05', N'Huawei Mate 30 Pro', 782, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'New', N'S8.png', 3, 9, N'Huawei')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [MOTA], [TRANGTHAI], [HINH], [MADM], [SOLUONG], [THELOAI]) VALUES (N'SP06', N'Iphone X 64GB', 921, N'A smart phone is a handheld personal computer with a mobile operating system and integrated mobile broadband cellular network connection for voice,SMS,and internet data communnication; most, if not all, smartphones also support Wi-Fi', N'Old', N'iPhoneX.png', 1, 3, N'Iphone')
USE [master]
GO
ALTER DATABASE [MobileStore] SET  READ_WRITE 
GO
