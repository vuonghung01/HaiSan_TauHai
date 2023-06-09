USE [HaiSan]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 3/22/2023 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[fullname] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[photo] [varchar](50) NULL,
	[activated] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 3/22/2023 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/22/2023 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [char](4) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/22/2023 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[orderId] [int] NULL,
	[productId] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/22/2023 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[username] [varchar](50) NULL,
	[createDate] [date] NULL,
	[address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 3/22/2023 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[productId] [int] NULL,
	[categoryId] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/22/2023 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[price] [float] NULL,
	[createDate] [date] NULL,
	[available] [bit] NULL,
	[brandId] [varchar](10) NULL,
	[images] [varchar](100) NULL,
	[detail] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 3/22/2023 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleDetails](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[accountId] [varchar](50) NULL,
	[roleId] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/22/2023 5:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role] [varchar](10) NOT NULL,
	[description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'admin', N'123', N'Admin', N'khalyhaisan2022@gmail.com', N'Red Grey Playful Food Logo.png', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'khaly', N'123', N'Nguyễn Kha Ly', N'khaly012001@gmail.com', N'Larana.png', 1)
GO
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'BN', N'BNAFOODS', N'175d114a.png')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'CL', N'CleverFood', N'31b684e8.jpg')
GO
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'HS1 ', N'Cua - Ghẹ')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'HS2 ', N'Ngao - Sò - Ốc')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'HS3 ', N'Tôm')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'HS4 ', N'Cá')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'HS5 ', N'Mực')
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (0, 0, 1, 432000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (1, 1, 10, 295000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (2, 1, 11, 150000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (3, 1, 7, 119000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (4, 1, 0, 1500000, 9)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (0, N'admin', CAST(N'2023-03-22' AS Date), N'Thủ đức')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (1, N'admin', CAST(N'2023-03-22' AS Date), N'kien giang')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (0, 0, N'HS4 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (1, 1, N'HS4 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (2, 2, N'HS4 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (3, 3, N'HS4 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (4, 4, N'HS1 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (5, 5, N'HS1 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (6, 6, N'HS1 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (7, 7, N'HS5 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (8, 8, N'HS5 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (9, 9, N'HS2 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (10, 10, N'HS2 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (11, 11, N'HS2 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (12, 12, N'HS2 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (13, 13, N'HS3 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (14, 14, N'HS3 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (15, 15, N'HS3 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (16, 16, N'HS3 ')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (17, 17, N'HS3 ')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (0, N'Cá hồi nguyên con 3kg', 1500000, CAST(N'2023-03-22' AS Date), 0, N'BN', N'["46603e4f.jpg","46603e4f.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (1, N'Cá mú nguyên con 1kg', 432000, CAST(N'2023-03-22' AS Date), 1, N'CL', N'["290ae1b4.jpg","290ae1b4.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (2, N'Cá tầm sông nguyên con 1.5kg', 600000, CAST(N'2023-03-22' AS Date), 1, N'BN', N'["17fa6a69.jpg","17fa6a69.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (3, N'Cá trứng 1 khay 500g', 85000, CAST(N'2023-03-22' AS Date), 1, N'BN', N'["c73fa708.jpg","c73fa708.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (4, N'Cua cà mau 3 con 1kg', 400000, CAST(N'2023-03-22' AS Date), 1, N'BN', N'["102a5b2b.jpg","102a5b2b.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (5, N'Cua hoàng đế 3kg', 8500000, CAST(N'2023-03-22' AS Date), 1, N'CL', N'["e5085688.jpg","e5085688.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (6, N'Ghẹ xanh 2 con 500g', 450000, CAST(N'2023-03-22' AS Date), 1, N'CL', N'["477bdc7.jpg","477bdc7.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (7, N'Mực bầu 1 khay 500g', 119000, CAST(N'2023-03-22' AS Date), 1, N'CL', N'["fdc4f631.jpg","fdc4f631.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (8, N'Mực ống size L khay 500g', 210000, CAST(N'2023-03-22' AS Date), 1, N'BN', N'["f9ffdb6a.jpg","f9ffdb6a.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (9, N'Nghêu trắng lớn 1kg', 95000, CAST(N'2023-03-22' AS Date), 1, N'CL', N'["75267085.jpg","75267085.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (10, N'Ốc Hương Sống (Size 70-80con) khay 500g', 295000, CAST(N'2023-03-22' AS Date), 1, N'CL', N'["9160d01a.jpg","9160d01a.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (11, N'Sò Dương Bi khay 1kg', 150000, CAST(N'2023-03-22' AS Date), 1, N'BN', N'["b7cab342.png","b7cab342.png"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (12, N'Thịt Hàu Sữa Tươi túi 500g', 65000, CAST(N'2023-03-22' AS Date), 1, N'BN', N'["451e8580.jpg","451e8580.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (13, N'Tôm Hùm Alaska Sống Lớn 1kg', 1350000, CAST(N'2023-03-22' AS Date), 1, N'CL', N'["5a10c8a5.jpg","5a10c8a5.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (14, N'Tôm càng xanh 1kg', 299000, CAST(N'2023-03-22' AS Date), 1, N'CL', N'["1a6142c9.jpg","1a6142c9.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (15, N'Tôm Hùm Xanh Sống 1 con 350g', 416000, CAST(N'2023-03-22' AS Date), 1, N'BN', N'["434946e2.jpg","434946e2.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (16, N'Tôm Sú Sống size 30 con 1 kg', 495000, CAST(N'2023-03-22' AS Date), 1, N'CL', N'["c7d5045c.jpg","c7d5045c.jpg"]', NULL)
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images], [detail]) VALUES (17, N'Tôm Thẻ Tươi khay 250gram, size 41-50 con/kg', 60000, CAST(N'2023-03-22' AS Date), 1, N'BN', N'["d6822fda.jpg","d6822fda.jpg"]', NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleDetails] ON 

INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (0, N'admin', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (12, N'khaly', N'user')
SET IDENTITY_INSERT [dbo].[RoleDetails] OFF
GO
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'director', N'director')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'staff', N'staff')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'user', N'user')
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([brandId])
REFERENCES [dbo].[Brands] ([id])
GO
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD FOREIGN KEY([accountId])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[Roles] ([role])
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportCost]    Script Date: 3/22/2023 5:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ReportCost] (@month INT)
AS BEGIN
SELECT 
			convert(varchar(10), o.createDate, 103) AS NgayBan,		
			COUNT(DISTINCT o.id) AS TongHoaDon,
			SUM(od.quantity * od.price) AS DoanhThu
FROM Orders o, OrderDetails od  WHERE o.id = od.orderId AND MONTH(o.createDate) = @month
GROUP BY createDate
END
GO
