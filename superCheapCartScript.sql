USE [SuperCheapCart]
GO
ALTER TABLE [dbo].[SubCategory] DROP CONSTRAINT [FK_Category_SubCategory]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_SubCategory_Product]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_PackageType_Product]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_PackageSize_Product]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Brand_Product]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[SubCategory]
GO
/****** Object:  Table [dbo].[ProductIcon]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[ProductIcon]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[PriceRange]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[PriceRange]
GO
/****** Object:  Table [dbo].[PackageType]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[PackageType]
GO
/****** Object:  Table [dbo].[PackageSize]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[PackageSize]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[Discount]
GO
/****** Object:  Table [dbo].[DeliveryType]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[DeliveryType]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 11/2/2017 7:55:04 PM ******/
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeliveryType]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeliveryType](
	[DeliveryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DeliveryType] PRIMARY KEY CLUSTERED 
(
	[DeliveryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Discount](
	[DiscountId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageSize]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageSize](
	[PackageSizeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PackageSize] PRIMARY KEY CLUSTERED 
(
	[PackageSizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageType]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageType](
	[PackageTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PackageType] PRIMARY KEY CLUSTERED 
(
	[PackageTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PriceRange]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PriceRange](
	[PriceRangeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PriceRange] PRIMARY KEY CLUSTERED 
(
	[PriceRangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[BrandId] [int] NULL,
	[DiscountId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[Price] [int] NULL,
	[PackageSizeId] [int] NULL,
	[PackageTypeId] [int] NULL,
	[ProductIcon] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductIcon]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductIcon](
	[ProductIconId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Url] [varchar](50) NULL,
	[width] [int] NULL,
	[height] [int] NULL,
 CONSTRAINT [PK_ProductIcon] PRIMARY KEY CLUSTERED 
(
	[ProductIconId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/2/2017 7:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

GO
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (1, N'Coalgate')
GO
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (2, N'Gillete')
GO
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (3, N'Coke')
GO
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (4, N'Pepsi')
GO
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (5, N'Vita')
GO
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (6, N'Mother Dairy')
GO
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (7, N'Bolt')
GO
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (8, N'Cool Energy')
GO
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (1, N'Beverages')
GO
INSERT [dbo].[Category] ([CategoryId], [Name]) VALUES (2, N'Dairy Products')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[DeliveryType] ON 

GO
INSERT [dbo].[DeliveryType] ([DeliveryTypeId], [Name]) VALUES (1, N'Standard')
GO
INSERT [dbo].[DeliveryType] ([DeliveryTypeId], [Name]) VALUES (2, N'Express')
GO
SET IDENTITY_INSERT [dbo].[DeliveryType] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 

GO
INSERT [dbo].[Discount] ([DiscountId], [Name]) VALUES (1, N'Mega Offer')
GO
INSERT [dbo].[Discount] ([DiscountId], [Name]) VALUES (2, N'Jumbo Offer')
GO
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
SET IDENTITY_INSERT [dbo].[PackageSize] ON 

GO
INSERT [dbo].[PackageSize] ([PackageSizeId], [Name]) VALUES (1, N'100gm - 200gm')
GO
INSERT [dbo].[PackageSize] ([PackageSizeId], [Name]) VALUES (2, N'200gm - 300gm')
GO
SET IDENTITY_INSERT [dbo].[PackageSize] OFF
GO
SET IDENTITY_INSERT [dbo].[PackageType] ON 

GO
INSERT [dbo].[PackageType] ([PackageTypeId], [Name]) VALUES (1, N'Can')
GO
INSERT [dbo].[PackageType] ([PackageTypeId], [Name]) VALUES (2, N'Bottle')
GO
INSERT [dbo].[PackageType] ([PackageTypeId], [Name]) VALUES (3, N'Wrap')
GO
SET IDENTITY_INSERT [dbo].[PackageType] OFF
GO
SET IDENTITY_INSERT [dbo].[PriceRange] ON 

GO
INSERT [dbo].[PriceRange] ([PriceRangeId], [Name]) VALUES (1, N'1 - 5')
GO
INSERT [dbo].[PriceRange] ([PriceRangeId], [Name]) VALUES (2, N'5 - 10')
GO
INSERT [dbo].[PriceRange] ([PriceRangeId], [Name]) VALUES (3, N'10 - 15')
GO
SET IDENTITY_INSERT [dbo].[PriceRange] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (1, N'Coke', 3, NULL, 1, 12, 1, 1, 1)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (2, N'Coke', 3, NULL, 1, 10, 1, 2, 2)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (3, N'Pepsi', 4, NULL, 1, 13, 1, 1, 1)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (4, N'Pepsi', 4, NULL, 1, 11, 1, 2, 2)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (5, N'Bolt Energy', 7, NULL, 2, 34, NULL, 1, 1)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (6, N'Revital', 8, NULL, 2, 112, 2, 1, 2)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (7, N'Salted Lassi', 5, NULL, 3, 10, 2, 2, 1)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (8, N'Salted Lassi', 6, NULL, 3, 10, 2, 2, 2)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (9, N'Milk', 5, NULL, 4, 34, 2, 2, 1)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [BrandId], [DiscountId], [SubCategoryId], [Price], [PackageSizeId], [PackageTypeId], [ProductIcon]) VALUES (10, N'Milk', 6, NULL, 4, 23, 2, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductIcon] ON 

GO
INSERT [dbo].[ProductIcon] ([ProductIconId], [Name], [Url], [width], [height]) VALUES (1, N'coke', N'coke url', 12, 12)
GO
INSERT [dbo].[ProductIcon] ([ProductIconId], [Name], [Url], [width], [height]) VALUES (2, N'coke', N'coke url can', 12, 12)
GO
INSERT [dbo].[ProductIcon] ([ProductIconId], [Name], [Url], [width], [height]) VALUES (3, N'Pepsi', N'pepsi url', 12, 12)
GO
INSERT [dbo].[ProductIcon] ([ProductIconId], [Name], [Url], [width], [height]) VALUES (4, N'Pepsi', N'pepsi url can', 12, 12)
GO
SET IDENTITY_INSERT [dbo].[ProductIcon] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

GO
INSERT [dbo].[SubCategory] ([SubCategoryId], [Name], [CategoryId]) VALUES (1, N'Soft Drink', 1)
GO
INSERT [dbo].[SubCategory] ([SubCategoryId], [Name], [CategoryId]) VALUES (2, N'Energy Drink', 1)
GO
INSERT [dbo].[SubCategory] ([SubCategoryId], [Name], [CategoryId]) VALUES (3, N'Salted Lassi', 2)
GO
INSERT [dbo].[SubCategory] ([SubCategoryId], [Name], [CategoryId]) VALUES (4, N'Milk', 2)
GO
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([UserId], [Name], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Ashok', CAST(N'2017-11-02 19:24:18.327' AS DateTime), N'Ashok', CAST(N'2017-11-02 19:24:18.327' AS DateTime), N'Ashok')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Brand_Product] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Brand_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_PackageSize_Product] FOREIGN KEY([PackageSizeId])
REFERENCES [dbo].[PackageSize] ([PackageSizeId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_PackageSize_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_PackageType_Product] FOREIGN KEY([PackageTypeId])
REFERENCES [dbo].[PackageType] ([PackageTypeId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_PackageType_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Product] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategory] ([SubCategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_SubCategory_Product]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_Category_SubCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_Category_SubCategory]
GO
