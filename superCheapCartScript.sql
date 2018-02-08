
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[AddLine1] [varchar](200) NOT NULL,
	[AddLine2] [varchar](200) NULL,
	[Suburb] [varchar](100) NULL,
	[PostCode] [varchar](50) NULL,
	[State] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[ValidTo] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_AddressId] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[BrandCategory]    Script Date: 8/02/2018 3:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BrandCategory](
	[BrandCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NOT NULL,
	[CategoryId] [int] NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_BrandCategoryId] PRIMARY KEY CLUSTERED 
(
	[BrandCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[DeliveryType]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[Discount]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 8/02/2018 3:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderStatusId] [int] NOT NULL,
	[PaymentNumber] [varchar](200) NULL,
	[PaymentPartner] [varchar](200) NULL,
	[ValidTo] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderId] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/02/2018 3:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[DiscountId] [int] NULL,
	[ValidTo] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderDetailId] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 8/02/2018 3:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[ValidTo] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderStatusId] PRIMARY KEY CLUSTERED 
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageSize]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[PackageType]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[PriceRange]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[ProductIcon]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[Stock]    Script Date: 8/02/2018 3:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stock](
	[StockId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[StockStatusId] [int] NOT NULL,
	[OrderId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT (getdate()),
	[CreatedBy] [varchar](50) NOT NULL DEFAULT ('Ashok'),
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[StockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockStatus]    Script Date: 8/02/2018 3:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockStatus](
	[StockStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT (getdate()),
	[CreatedBy] [varchar](50) NOT NULL DEFAULT ('Ashok'),
 CONSTRAINT [PK_StockStatus] PRIMARY KEY CLUSTERED 
(
	[StockStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 8/02/2018 3:47:30 PM ******/
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
/****** Object:  Table [dbo].[UserProfile]    Script Date: 8/02/2018 3:47:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserProfileId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FName] [varchar](200) NOT NULL,
	[MName] [varchar](200) NULL,
	[LName] [varchar](200) NULL,
	[HomeContactNumber] [varchar](50) NULL,
	[OfficeContactNumber] [varchar](50) NULL,
	[OtherContactNumber] [varchar](50) NULL,
	[HomeAddress] [int] NULL,
	[OfficeAddress] [int] NULL,
	[OtherAddress] [int] NULL,
	[ValidTo] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_UserProfileId] PRIMARY KEY CLUSTERED 
(
	[UserProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/02/2018 3:47:30 PM ******/
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
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

GO
INSERT [dbo].[Address] ([AddressId], [AddLine1], [AddLine2], [Suburb], [PostCode], [State], [Country], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (1, N'U1 100 Shanton St', N'Near Fremental Tower', N'Fremental', N'5069', N'NSW', N'Australia', NULL, NULL, NULL)
GO
INSERT [dbo].[Address] ([AddressId], [AddLine1], [AddLine2], [Suburb], [PostCode], [State], [Country], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (2, N'12 Victoria Park', N'', N'Bedford', N'3260', N'SA', N'Australia', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Address] OFF
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
SET IDENTITY_INSERT [dbo].[BrandCategory] ON 

GO
INSERT [dbo].[BrandCategory] ([BrandCategoryId], [BrandId], [CategoryId], [ValidFrom], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[BrandCategory] ([BrandCategoryId], [BrandId], [CategoryId], [ValidFrom], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (2, 1, 2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[BrandCategory] ([BrandCategoryId], [BrandId], [CategoryId], [ValidFrom], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (4, 2, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[BrandCategory] ([BrandCategoryId], [BrandId], [CategoryId], [ValidFrom], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (5, 2, 2, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[BrandCategory] OFF
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
SET IDENTITY_INSERT [dbo].[Order] ON 

GO
INSERT [dbo].[Order] ([OrderId], [UserId], [OrderStatusId], [PaymentNumber], [PaymentPartner], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (3, 1, 1, N'Payment Number', N'Payment Partner', NULL, NULL, NULL)
GO
INSERT [dbo].[Order] ([OrderId], [UserId], [OrderStatusId], [PaymentNumber], [PaymentPartner], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (4, 1, 2, N'12313', NULL, NULL, N'Ashok', CAST(N'2018-02-08 00:41:21.427' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [DiscountId], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (4, 3, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [DiscountId], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (5, 3, 6, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [DiscountId], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (6, 3, 4, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

GO
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Name], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (1, N'New', NULL, NULL, NULL)
GO
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Name], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Pending', NULL, NULL, NULL)
GO
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Name], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Cancelled', NULL, NULL, NULL)
GO
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Name], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (4, N'In Delivery', NULL, NULL, NULL)
GO
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Name], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (5, N'Delivered', NULL, NULL, NULL)
GO
INSERT [dbo].[OrderStatus] ([OrderStatusId], [Name], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (6, N'Confirmed', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
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
SET IDENTITY_INSERT [dbo].[Stock] ON 

GO
INSERT [dbo].[Stock] ([StockId], [ProductId], [StockStatusId], [OrderId], [CreatedDate], [CreatedBy]) VALUES (1, 1, 1, NULL, CAST(N'2018-02-08 00:37:42.580' AS DateTime), N'Ashok')
GO
INSERT [dbo].[Stock] ([StockId], [ProductId], [StockStatusId], [OrderId], [CreatedDate], [CreatedBy]) VALUES (2, 1, 1, NULL, CAST(N'2018-02-08 00:39:06.613' AS DateTime), N'Ashok')
GO
INSERT [dbo].[Stock] ([StockId], [ProductId], [StockStatusId], [OrderId], [CreatedDate], [CreatedBy]) VALUES (3, 1, 1, NULL, CAST(N'2018-02-08 00:39:06.613' AS DateTime), N'Ashok')
GO
INSERT [dbo].[Stock] ([StockId], [ProductId], [StockStatusId], [OrderId], [CreatedDate], [CreatedBy]) VALUES (4, 1, 1, NULL, CAST(N'2018-02-08 00:39:06.613' AS DateTime), N'Ashok')
GO
INSERT [dbo].[Stock] ([StockId], [ProductId], [StockStatusId], [OrderId], [CreatedDate], [CreatedBy]) VALUES (5, 1, 1, NULL, CAST(N'2018-02-08 00:39:06.613' AS DateTime), N'Ashok')
GO
INSERT [dbo].[Stock] ([StockId], [ProductId], [StockStatusId], [OrderId], [CreatedDate], [CreatedBy]) VALUES (6, 1, 1, NULL, CAST(N'2018-02-08 00:39:06.613' AS DateTime), N'Ashok')
GO
INSERT [dbo].[Stock] ([StockId], [ProductId], [StockStatusId], [OrderId], [CreatedDate], [CreatedBy]) VALUES (7, 2, 1, NULL, CAST(N'2018-02-08 00:42:19.893' AS DateTime), N'Ashok')
GO
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
SET IDENTITY_INSERT [dbo].[StockStatus] ON 

GO
INSERT [dbo].[StockStatus] ([StockStatusId], [Name], [CreatedDate], [CreatedBy]) VALUES (1, N'New', CAST(N'2018-02-08 00:34:42.290' AS DateTime), N'Ashok')
GO
INSERT [dbo].[StockStatus] ([StockStatusId], [Name], [CreatedDate], [CreatedBy]) VALUES (2, N'Sold', CAST(N'2018-02-08 00:34:42.290' AS DateTime), N'Ashok')
GO
INSERT [dbo].[StockStatus] ([StockStatusId], [Name], [CreatedDate], [CreatedBy]) VALUES (3, N'GroupSold', CAST(N'2018-02-08 00:34:42.290' AS DateTime), N'Ashok')
GO
SET IDENTITY_INSERT [dbo].[StockStatus] OFF
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
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

GO
INSERT [dbo].[UserProfile] ([UserProfileId], [UserId], [FName], [MName], [LName], [HomeContactNumber], [OfficeContactNumber], [OtherContactNumber], [HomeAddress], [OfficeAddress], [OtherAddress], [ValidTo], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, N'First Name', N'Middle Name', N'Last Name', N'Home Contact Number', N'Office Contact Number', N'Other Contact Number', 1, 2, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([UserId], [Name], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Ashok', CAST(N'2017-11-02 19:24:18.327' AS DateTime), N'Ashok', CAST(N'2017-11-02 19:24:18.327' AS DateTime), N'Ashok')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[BrandCategory]  WITH CHECK ADD  CONSTRAINT [FK_Brand_Category_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[BrandCategory] CHECK CONSTRAINT [FK_Brand_Category_BrandId]
GO
ALTER TABLE [dbo].[BrandCategory]  WITH CHECK ADD  CONSTRAINT [FK_Brand_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[BrandCategory] CHECK CONSTRAINT [FK_Brand_Category_CategoryId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([OrderStatusId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
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
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Order]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Product]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_StockStatus] FOREIGN KEY([StockStatusId])
REFERENCES [dbo].[StockStatus] ([StockStatusId])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_StockStatus]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_Category_SubCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_Category_SubCategory]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_Address] FOREIGN KEY([HomeAddress])
REFERENCES [dbo].[Address] ([AddressId])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_Address]
