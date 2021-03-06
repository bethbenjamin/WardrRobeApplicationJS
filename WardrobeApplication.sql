USE [master]
GO
/****** Object:  Database [WardrobeDB]    Script Date: 3/18/2018 3:05:17 PM ******/
CREATE DATABASE [WardrobeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDB]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 3/18/2018 3:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](100) NULL,
	[Season] [nvarchar](100) NULL,
	[Occasion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 3/18/2018 3:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](100) NOT NULL,
	[Season] [nvarchar](100) NULL,
	[Occasion] [nvarchar](100) NULL,
	[Type] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 3/18/2018 3:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[Outfit] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[Outfit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 3/18/2018 3:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](100) NOT NULL,
	[Season] [nvarchar](100) NULL,
	[Occasion] [nvarchar](100) NULL,
	[Type] [nvarchar](100) NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Top]    Script Date: 3/18/2018 3:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
	[Type] [nvarchar](100) NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoryID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (1, N'Black Belt', N'/Content/images/acc1.jpeg', N'Black', N'All', N'All')
INSERT [dbo].[Accessory] ([AccessoryID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (2, N'Anchor Bracelet', N'/Content/images/acc2.jpeg', N'Black', N'All', N'Casual')
INSERT [dbo].[Accessory] ([AccessoryID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (3, N'Gold and Silver Hidden Button Alloy Quartz Waterproof Watches', N'/Content/images/acc3.jpeg', N'Gold and Silver', N'All', N'All')
INSERT [dbo].[Accessory] ([AccessoryID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (4, N'Black Band Apple Watch', N'/Content/images/acc4.jpeg', N'Black', N'All', N'All')
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (1, N'Black: Mid Waist Zipper Slim Straight Jeans', N'/Content/images/pants1.jpeg', N'Black', N'All', N'Casual', N'Cargo')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (2, N'Gray: Korean Style Cargo', N'/Content/images/pants2.jpeg', N'Gray', N'All', N'Casual', N'Cargo')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (3, N'Black: Soccer Cut ', N'/Content/images/pants3.jpeg', N'Black', N'All', N'Casual', N'Sweat pants')
INSERT [dbo].[Bottom] ([BottomID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (4, N'Green: Mid Waist Elastic Hole Slim Fit  Jeans', N'/Content/images/pants4.jpeg', N'Mossy Green', N'All', N'Casual', N'Cargo')
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[Outfit] ON 

INSERT [dbo].[Outfit] ([Outfit], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (1003, 7, 2, 2, 1)
INSERT [dbo].[Outfit] ([Outfit], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (1004, 3, 4, 3, 2)
INSERT [dbo].[Outfit] ([Outfit], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (1005, 1, 1, 1, 3)
SET IDENTITY_INSERT [dbo].[Outfit] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (1, N'Black Ankle Top', N'/Content/images/shoe1.jpeg', N'Black Matte ', N'All', NULL, NULL)
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (2, N'Brown Leather Side Lace', N'/Content/images/shoe2.jpeg', N'Dark Brown', N'All', N'Semi-Formal', NULL)
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (3, N'Sneakers', N'/Content/images/shoe3.jpeg', N'Navy Blue / Light Blue', N'All', N'Casual', NULL)
INSERT [dbo].[Shoe] ([ShoeID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (4, N'Pointed Toe Square Low Heel Oxfords', N'/Content/images/shoe4.jpeg', N'Black', N'All', N'Formal', NULL)
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (1, N'Navy Blue: Lapel Double Patchwork Solid Slim Fit ', N'/Content/images/shirt1.jpeg', N'Navy Blue', N'Fall, Winter', N'Semi-Formal', NULL)
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (2, N'Rose: Lapel Single-Breasted Slim Dress Shirt', N'/Content/images/shirt2.jpeg', N'Rose', N'Fall, Winter', N'Semi-Formal', NULL)
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (3, N'Blue: Single Breasted Mini Plaid Printed', N'/Content/images/shirt3.jpeg', N'Blue / White', N'Fall, Winter', N'Semi-Formal, Casual', NULL)
INSERT [dbo].[Top] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (7, N'White / Gray: Single Flap Button Down', N'/Content/images/shirt5.jpeg', N'White / Gray', N'All', N'All', NULL)
SET IDENTITY_INSERT [dbo].[Top] OFF
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessory] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessory] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessory]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottom] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottom] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottom]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoe] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoe] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoe]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Top] FOREIGN KEY([TopID])
REFERENCES [dbo].[Top] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Top]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDB] SET  READ_WRITE 
GO
