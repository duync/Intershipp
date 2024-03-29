USE [HotelManageSystem]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 9/26/2019 4:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROOM]    Script Date: 9/26/2019 4:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOM](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [nvarchar](50) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[Gia] [nchar](10) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_ROOM] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ACCOUNT] ON 

INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (6, N'abc', N'345', N'user')
INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (9, N'cduu', N'222', N'cleck')
INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (5, N'cduyy', N'123', N'user')
INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (3, N'clerk', N'789', N'user')
INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (8, N'duy123', N'789', N'user')
INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (4, N'duync', N'345', N'admin')
INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (10, N'jadjas', N'123', N'user')
INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (1, N'sa', N'123', N'clerk')
INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (2, N'user1', N'456', N'user')
INSERT [dbo].[ACCOUNT] ([UserID], [Username], [Password], [Role]) VALUES (7, N'xyz', N'122', N'user')
SET IDENTITY_INSERT [dbo].[ACCOUNT] OFF
SET IDENTITY_INSERT [dbo].[ROOM] ON 

INSERT [dbo].[ROOM] ([RoomID], [MaPhong], [TenPhong], [Gia], [TrangThai]) VALUES (1, N'MP001', N'abc', N'400       ', 0)
INSERT [dbo].[ROOM] ([RoomID], [MaPhong], [TenPhong], [Gia], [TrangThai]) VALUES (5, N'MP002', N'xyz', N'200       ', 0)
INSERT [dbo].[ROOM] ([RoomID], [MaPhong], [TenPhong], [Gia], [TrangThai]) VALUES (6, N'MP003', N'lkm', N'350       ', 1)
INSERT [dbo].[ROOM] ([RoomID], [MaPhong], [TenPhong], [Gia], [TrangThai]) VALUES (7, N'MP004', N'dasd', N'700       ', 1)
INSERT [dbo].[ROOM] ([RoomID], [MaPhong], [TenPhong], [Gia], [TrangThai]) VALUES (8, N'MP005', N'Single', N'250       ', 1)
INSERT [dbo].[ROOM] ([RoomID], [MaPhong], [TenPhong], [Gia], [TrangThai]) VALUES (9, N'MP006', N'Double', N'470       ', 0)
INSERT [dbo].[ROOM] ([RoomID], [MaPhong], [TenPhong], [Gia], [TrangThai]) VALUES (10, N'MP007', N'King', N'800       ', 1)
INSERT [dbo].[ROOM] ([RoomID], [MaPhong], [TenPhong], [Gia], [TrangThai]) VALUES (11, N'MP008', N'Queen', N'780       ', 0)
INSERT [dbo].[ROOM] ([RoomID], [MaPhong], [TenPhong], [Gia], [TrangThai]) VALUES (12, N'MP009', N'Apartment', N'900       ', 0)
SET IDENTITY_INSERT [dbo].[ROOM] OFF
