USE [master]
GO
/****** Object:  Database [ETicaret]    Script Date: 30.06.2022 23:13:26 ******/
CREATE DATABASE [ETicaret]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ETicaret', FILENAME = N'C:\Users\Emre\ETicaret.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ETicaret_log', FILENAME = N'C:\Users\Emre\ETicaret_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ETicaret] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ETicaret].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ETicaret] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ETicaret] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ETicaret] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ETicaret] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ETicaret] SET ARITHABORT OFF 
GO
ALTER DATABASE [ETicaret] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ETicaret] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ETicaret] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ETicaret] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ETicaret] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ETicaret] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ETicaret] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ETicaret] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ETicaret] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ETicaret] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ETicaret] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ETicaret] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ETicaret] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ETicaret] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ETicaret] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ETicaret] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ETicaret] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ETicaret] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ETicaret] SET  MULTI_USER 
GO
ALTER DATABASE [ETicaret] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ETicaret] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ETicaret] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ETicaret] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ETicaret] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ETicaret] SET QUERY_STORE = OFF
GO
USE [ETicaret]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ETicaret]
GO
/****** Object:  Schema [HangFire]    Script Date: 30.06.2022 23:13:26 ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[CategoryDescription] [nvarchar](500) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullanımDurumları]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullanımDurumları](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kullanım] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_KullanımDurumları] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[OfferPrice] [money] NOT NULL,
	[OfferStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaims]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_OperationClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[ProductDescription] [nvarchar](500) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ColorId] [int] NULL,
	[BrandId] [int] NULL,
	[KullanımDurumuId] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[OfferOption] [bit] NULL,
	[IsSold] [bit] NULL,
	[imgUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaims]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
 CONSTRAINT [PK_UserOperationClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](80) NOT NULL,
	[PasswordHash] [varbinary](500) NOT NULL,
	[PasswordSalt] [varbinary](500) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [int] NOT NULL,
	[ExpireAt] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CX_HangFire_Counter]    Script Date: 30.06.2022 23:13:26 ******/
CREATE CLUSTERED INDEX [CX_HangFire_Counter] ON [HangFire].[Counter]
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Queue] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](200) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 30.06.2022 23:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [BrandName]) VALUES (1, N'LCW')
INSERT [dbo].[Brands] ([Id], [BrandName]) VALUES (2, N'Defacto')
INSERT [dbo].[Brands] ([Id], [BrandName]) VALUES (3, N'Koton')
INSERT [dbo].[Brands] ([Id], [BrandName]) VALUES (4, N'Nike')
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryDescription]) VALUES (1, N'T-Shirt', N'T-shirt')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryDescription]) VALUES (2, N'Kazak', N'Kazak')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryDescription]) VALUES (3, N'Ayakkabı', N'Ayakkabı')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryDescription]) VALUES (1002, N'Pantolon', N'Pantolon')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryDescription]) VALUES (1003, N'Gömlek', N'Gömlek')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryDescription]) VALUES (1004, N'Elbise', N'Elbise')
INSERT [dbo].[Categories] ([Id], [CategoryName], [CategoryDescription]) VALUES (1005, N'Ceket', N'Ceket')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (1, N'Kırmızı')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (2, N'Mavi')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (3, N'Yeşil')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (4, N'Beyaz')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (5, N'Siyah')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (6, N'Pembe')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (7, N'Kahverengi')
SET IDENTITY_INSERT [dbo].[Colors] OFF
SET IDENTITY_INSERT [dbo].[KullanımDurumları] ON 

INSERT [dbo].[KullanımDurumları] ([Id], [Kullanım]) VALUES (1, N'Sıfır')
INSERT [dbo].[KullanımDurumları] ([Id], [Kullanım]) VALUES (2, N'İkinci El')
SET IDENTITY_INSERT [dbo].[KullanımDurumları] OFF
SET IDENTITY_INSERT [dbo].[OperationClaims] ON 

INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (1, N'admin')
SET IDENTITY_INSERT [dbo].[OperationClaims] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [CategoryId], [ColorId], [BrandId], [KullanımDurumuId], [Price], [OfferOption], [IsSold], [imgUrl]) VALUES (1, N'T-Shirt Regular', N'Regular Pamuklu T-Shirt', 1, 5, 2, 1, 25.0000, 0, 0, N'https://dfcdn.defacto.com.tr/7/X3794AZ_22SM_BK81_01_02.jpg')
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [CategoryId], [ColorId], [BrandId], [KullanımDurumuId], [Price], [OfferOption], [IsSold], [imgUrl]) VALUES (2, N'Oversize Fit Bisiklet Yaka Tişört', N'Oversize Fit Bisiklet Yaka Tişört', 1, 6, 2, 1, 30.0000, 0, 0, N'https://dfcdn.defacto.com.tr/7/T7037AZ_22SP_BR3_01_02.jpg')
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [CategoryId], [ColorId], [BrandId], [KullanımDurumuId], [Price], [OfferOption], [IsSold], [imgUrl]) VALUES (3, N'Yarım Balıkçı Yaka Triko Kazak', N'Deve Tüyü Melanj
Yarım Balıkçı Yaka Triko Kazak', 2, 7, 1, 1, 60.0000, 0, 0, N'https://img-lcwaikiki.mncdn.com/mnresize/1024/-/pim/productimages/20202/4108920/l_20202-0w3321z8-dgf_a.jpg')
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [CategoryId], [ColorId], [BrandId], [KullanımDurumuId], [Price], [OfferOption], [IsSold], [imgUrl]) VALUES (7, N'Erkek Jean Pantolon', N'Açık Rodeo
760 Skinny Fit Erkek Jean Pantolon', 1002, 2, 1, 1, 90.0000, 0, 0, N'https://img-lcwaikiki.mncdn.com/mnresize/1024/-/pim/productimages/20221/5548897/l_20221-s25004z8-311_u.jpg')
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [CategoryId], [ColorId], [BrandId], [KullanımDurumuId], [Price], [OfferOption], [IsSold], [imgUrl]) VALUES (8, N'Erkek Klasik Ayakkabı', N'Siyah
Bağcıklı Erkek Klasik Ayakkabı', 3, 7, 1, 1, 16.0000, 1, 0, N'https://img-lcwaikiki.mncdn.com/mnresize/1024/-/pim/productimages/20221/5717667/l_20221-s2dm84z8-huc_a.jpg')
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [CategoryId], [ColorId], [BrandId], [KullanımDurumuId], [Price], [OfferOption], [IsSold], [imgUrl]) VALUES (9, N'Krinkle Kadın Elbise', N'Kare Yaka Düz Askılı Krinkle Kadın Elbise', 1004, 2, 1, 1, 44.0000, 1, 0, N'https://img-lcwaikiki.mncdn.com/mnresize/1024/-/pim/productimages/20221/5983135/l_20221-s2l213z8-hlm_u.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[UserOperationClaims] ON 

INSERT [dbo].[UserOperationClaims] ([Id], [UserId], [OperationClaimId]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[UserOperationClaims] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1, N'man', N'xp', N'test@gmail.com', 0x5973BCE01818C0C6E9C50C30AA8D269197E54CC71D5EF9C0368A2CE241358742C39A354289A43929866CA8189DC632DF41D5D9610C62BB5023772E96C3F2570B, 0x99B1C7DC0B19F396EB0788F6F76098C407267E1134693B3C4B4F5926C883D205121074400468659AB5886D8124B3B967D481854FDB6CF2976B723EF7CD5CC03268D7112D513B021BCEAEEBF1B66C696B1A4721D72EF659608A1652B695C24DF01A6C80EC36497406CF89BC4B9220F677AE870EE3B305561765B700B638E52212, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (2, N'hi', N'ln', N'tes2t@gmail.com', 0x48B110D1AF7C0D654DFF91918905C87FF62B7D11A57B11B3F31823C390AB3B5E7BB32E28AA00D99C4FF0A116F027884C95D2586DA26094FECAAE6E3FFF916E18, 0x67F226DC9AF5AC45A7D94CC7CE4C4EB74ADA3630003F0DC1DD77B4D116D1764D688A49307AC3C00D84BB6402E3BDDF718DBFA03CA2597F0EFFF280765AF43559DC107FFDF904D6A910CC7088CA7C79BE8501E674F97B7CD06028981D289D9DB6D8EC05C4C8DAB0ACAA259C9D25B95281698E4F8584C8449E43BDEC716EE156EA, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (3, N'string', N'string', N'string', 0x8DCD440A0EB7C3D9C4EB5C998055CF0F325C402BBB0EE393D3A69AA7FB847D6CFCD6D74AC698918F01F086898CE246D5D8278635322CD10660DA3EF4FBC617CD, 0x4C0DCD806F764F437F97E25D2EC3A8B3D91E9FADD4181E0C0F4503DAA2070B7165411257FF767962F8B2A33A3A17ED5DB1ED28E55A0A873F0BE53C574DFEF3D5AA142ADCCD7A33B6BDDAFFD541BE0751E3525E22D7992DCBF4BDF1B3DE278770511C2449674901B32DD1B0CBE1A5A5BE0DCC658E38D228A3604B8BE162D4A8BB, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1002, N'string', N'string', N'forstajodv@gmail.com', 0x5BBB105DDDCE5244C1E26BAF28885AA59AF5EDCB7E375FF5DA79049C50AACF19BE5919D6DDF114048D6C9EFC808CEB3B64369E231B304F7CEEA3DDF12688F7D7, 0xD9B7538248AE1D97C6EF94198833BD43E9F76B0DC4D8F7867B37C1CD4E69241521A31E0D71B8E374159799813A64562B6B6B0477CE0B6354B24BB09D56EA153326D753A110B1434CACD1E3FA1B48A51C33F394C179FCBFF27934738965D1254949E75AE0E890291EC7C5654600E829B683E6D5E046BC2CBEC278192473F81952, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1003, N'string', N'string', N'forstajodev@gail.com', 0x46E71AABBB78B828CBBC04F6FA5A8F3F93B7B2C3E62A02227B044C998E61C3CDD5D0B2BFAEC51DD730177F8B3F1107DA7E151882024F08128B1E2406E6014AAE, 0x31A22EA838ED3B624F88342354C21F65BAFCEDCA54A1C3B6112FC37F6E9C7E288626A314DBE95710B1311B69B2FE703AAC0FB2B1A30FC6BBFAEA92F86E56AFD0E390DFE78C8D1775ACE185F6E29430DF9BED314FA47A5DDB02CA0E7B1E9C178FFBC2765B0B21B957E3FF9C016ABB6063529FB8AD851A3CB648B784B02C9E88D7, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1004, N'string', N'string', N'forstajodev@gmal.com', 0xFF594EE14C346ACF1718134A9572D099A47791751EBE0986940286D92772BC2DEC0B5E3C74658BE4254FED4E4A9DE7593613E2CD4B0E1D61EB2EA3B0A8DF4D35, 0x1E602602882C54742E714E70B5A32D8FD7F37262C3899F5A6461812D43552433B5920B3940BC52AA69884796571B05CFF939B9A8E205178517582BA9FD853161F9F033F2714072850E4AC449379E87695CFB030CF677FA41FE10C35617DAAB134FDD2C1AD44867360DB1F2FE4B3200E975A546CCDAC3F2F98140BD70222BCC03, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1005, N'string', N'string', N'forstajodev@gms,ail.com', 0xAF9CE2789AE9DF253D18FC4A4C6FE87A71CF08F4150E879B14C801E1DC31B303A6A7877CF08ADDBBA2133D3C9975AF7EA3C695EDA111582FCE904FE24607E3F9, 0xDC9D7DE29602A589A46F5B66E0BBCA65306270E91D9191DE034D92CCC7C0138821BF498144C8BAF8FAF0DC9FCFCAC9B703E359857883168BD3B3F7670E62240BAF0017D4E37A641AB1A11C0ED8629D33FC502B3E976A462386EA605AF833B0DFD1798ACCEF6007A130F08E493F942FAE419B01FCF3EE2E37431591541F7DE1FD, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1006, N'string', N'string', N'forstajodevn@gmail.com', 0x1C6B38F62B0FD13CEF0F5690BE27FF111EF5AA6ACE58F88393C85B8CE01A5321EF325BDAA7BE13E88258F879616A1A2981753E455DDF2D4C1C3470049A195876, 0x3E5C102E7B96793B409E783975E0BAF3B04F9336480024F4BD42FC0F4091942A786C3EE263790410EE7100F71F9B0559CDF0BBCEEC631148670B9EEDC8217FA0D7E55BD718835E9A2728A2058E1700E8AA8E37F96C8693FDC4595E4D38AF3B1AB709F56189BB0E016086B9FF52788CAD428D10ABEDABA442314CD45D044074F6, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1007, N'string', N'string', N'forstajodev@gmaidl.com', 0x4A5C1EA4698FA6E977076EB5EB71D24003A40F0EAF5F335E03C79DDED8EB8E975C56F65D9876463337399BBEEDD625246FD474018513991B67D3ECC2CAC307AC, 0x55966120A7C20755C75E00FD472605B84B5F0C754230809AD3BD0959E43820C7CA7584BA0783F6D9A0525AC8FF90A72B030A6EA93A155090399E0E0FA211BECEB3BA34EC5DEF0354797E333C0868A29C6826A60B266136E72B675DF0536AF67552ADF6ECE8CC69D9BD08F0E93FB819DBCEFE514F3CFC85893DA07FC2F38F4D32, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1008, N'string', N'string', N'forstajodev@gmkail.com', 0x5FE5049A7255EC9FAA2E9C41B134A9271B983F966F5F03649C294D9992ED9C3D8E92F3AEA3CF206C9AA2EE8ED44EBBEF2F8F820435E716FB623322408E098794, 0xEDBE5BDE59954080907CE359D7DFAC8327AE2EA5D9A4A0A3F66CD1308BA30D432AD45A3D7825EF8DBD6EA8C6AA109B113DC93C56EC0D608C11861BDFDD08B8B1853974EB0F36CF7956C446FECB1A62401EA82EEECAA28F054ACF2C4879548B938F8D3145A9E7553EF60800F8075877CC4D710C72BA354331F7B8375021243881, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1009, N'string', N'string', N'forstajodev30mail.com', 0xA4BD81B9511DAD6BCBF9FBEBE5ED1954712677C48EB67B1B0664136060DD9B463CE0D0EAE3E623B10AE19DCA7C5AD15E26E95751BE647BC65E95574D9D47B480, 0x1BCF3A8BF4BBDCBE3C7538D29A4B0924CF055E00AB013974C09167C7CBC8DABA7918BF8534AB2AF548E04469F4B7898538C78041C9E72C04048C21F74DD3684B074C0C696477769BEC9BAF8945A1F21EA1CC0F5D0C3963FA77000567045F3BAD311DAC7EA691CEA25E8AC2A83B31AC9CBA44C23140F01C284F3E8A4FF457909D, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (1010, N'string', N'string', N'forstajodev@gmail.com', 0xAA255871718329DC790926330345141B6D4E57392BF6F03294E2F1F7CFE1F74E76AF9612741CDC4C4CA6C9B2EEC960BDC284DE11C0CEA40383A76DD669403FED, 0x372053488923AAAF123BAB3C72C19D993240FAA90D35E5E7F359F4E2A5A599187304D2F6D9716E35B8A74F90144649D9AE45F68FC410670433F6CA50017731F79347ECBCFB45D580E58FE7CB0D9830EA608D41455F0080C1E5D2B28578821F65DA4EFDFFD75C6FFFC5AF74544A320A4173FC193BB998D4A965125D088839A6C8, 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (2004, N'kl', N'i', N'k', 0x00333898894A6CFF42DA2568266E8E9ED4F26DE284C2F409DACFE69209E6250B012FFC54575362326EE4B8F199B1482392121A31E24BBC3E52F9106B2F728D2F, 0xD0C991A49B6C79088AF3B9135B3EEFF66987BEAA3CB4F77F066C9C0A1B7E09B8B4AC9C0B5943E7745B871CDD3877EF53C4FFB6776F5E0E957DB82B3BD2AE89F7F3C0F5C96D218106D057109945F863A6C6BAE68A53EEC682968D4202902F56147B4ADB2E461DBDF64A59B601E2FDFA8C2A0345511A3F95CD030F7283E23E8F83, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:deleted', 4, NULL)
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded', 1, NULL)
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2022-06-27', 1, CAST(N'2022-07-27T21:19:41.837' AS DateTime))
INSERT [HangFire].[Schema] ([Version]) VALUES (7)
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'desktop-jcag6eg:24036:a3e45dc9-e759-45d1-be23-4bfe527a1fc6', N'{"WorkerCount":20,"Queues":["default"],"StartedAt":"2022-06-30T16:36:28.6810361Z"}', CAST(N'2022-06-30T16:37:59.270' AS DateTime))
/****** Object:  Index [IX_HangFire_AggregatedCounter_ExpireAt]    Script Date: 30.06.2022 23:13:26 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_AggregatedCounter_ExpireAt] ON [HangFire].[AggregatedCounter]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 30.06.2022 23:13:26 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 30.06.2022 23:13:26 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
(
	[ExpireAt] ASC
)
INCLUDE([StateName]) 
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 30.06.2022 23:13:26 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
(
	[StateName] ASC
)
WHERE ([StateName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 30.06.2022 23:13:26 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Server_LastHeartbeat]    Script Date: 30.06.2022 23:13:26 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Server_LastHeartbeat] ON [HangFire].[Server]
(
	[LastHeartbeat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 30.06.2022 23:13:26 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Set_Score]    Script Date: 30.06.2022 23:13:26 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Score] ON [HangFire].[Set]
(
	[Key] ASC,
	[Score] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_Products]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_Users]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_KullanımDurumları] FOREIGN KEY([KullanımDurumuId])
REFERENCES [dbo].[KullanımDurumları] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_KullanımDurumları]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_OperationClaims] FOREIGN KEY([OperationClaimId])
REFERENCES [dbo].[OperationClaims] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_OperationClaims]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_Users]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
USE [master]
GO
ALTER DATABASE [ETicaret] SET  READ_WRITE 
GO
