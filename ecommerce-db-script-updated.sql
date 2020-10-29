USE [master]
GO
/****** Object:  Database [eCommerce]    Script Date: 8/26/2018 11:15:38 PM ******/
CREATE DATABASE [eCommerce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eCommerce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\eCommerce.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eCommerce_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\eCommerce_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [eCommerce] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eCommerce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eCommerce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eCommerce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eCommerce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eCommerce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eCommerce] SET ARITHABORT OFF 
GO
ALTER DATABASE [eCommerce] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eCommerce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eCommerce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eCommerce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eCommerce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eCommerce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eCommerce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eCommerce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eCommerce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eCommerce] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eCommerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eCommerce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eCommerce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eCommerce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eCommerce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eCommerce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eCommerce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eCommerce] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eCommerce] SET  MULTI_USER 
GO
ALTER DATABASE [eCommerce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eCommerce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eCommerce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eCommerce] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eCommerce] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [eCommerce] SET QUERY_STORE = OFF
GO
USE [eCommerce]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [eCommerce]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/26/2018 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/26/2018 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[BirthDate] [datetime] NULL,
	[CreatedOnDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CreatedByUserId] [nvarchar](450) NULL,
	[CreatedOnDate] [datetime] NULL,
	[LasUpdatedByUserId] [nvarchar](450) NULL,
	[LastUpdatedOnDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailSettings]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Server] [nvarchar](100) NULL,
	[PortNumber] [int] NULL,
	[EmailFrom] [nvarchar](100) NULL,
	[Password] [nvarchar](max) NULL,
	[EmailTo] [nvarchar](100) NULL,
 CONSTRAINT [PK_EmailSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[ShippingId] [int] NULL,
	[Payed] [bit] NULL,
	[StatusId] [int] NULL,
	[CreatedByUserId] [nvarchar](450) NULL,
	[CreatedOnDate] [datetime] NULL,
	[LasUpdatedByUserId] [nvarchar](450) NULL,
	[LastUpdatedOnDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[OrderId] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[Total] [decimal](18, 2) NULL,
	[CreatedByUserId] [nvarchar](450) NULL,
	[CreatedOnDate] [datetime] NULL,
	[LasUpdatedByUserId] [nvarchar](450) NULL,
	[LastUpdatedOnDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[IsSale] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[IsOnSale] [bit] NULL,
	[CreatedByUserId] [nvarchar](450) NULL,
	[CreatedOnDate] [datetime] NULL,
	[LasUpdatedByUserId] [nvarchar](450) NULL,
	[LastUpdatedOnDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](200) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[CreatedByUserId] [nvarchar](450) NULL,
	[CreatedOnDate] [datetime] NULL,
	[LasUpdatedByUserId] [nvarchar](450) NULL,
	[LastUpdatedOnDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Upload]    Script Date: 8/26/2018 11:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Upload](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[ProductId] [int] NULL,
	[IsThumbnail] [bit] NULL,
	[IsCarousel] [bit] NULL,
	[CreatedByUserId] [nvarchar](450) NULL,
	[CreatedOnDate] [datetime] NULL,
	[LasUpdatedByUserId] [nvarchar](450) NULL,
	[LastUpdatedOnDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Upload] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.0.1-rtm-125')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'176aa2a7-0897-4d51-b1df-d3bcf5728c2a', N'278b1e62-b585-424c-8f78-16412c25c5e5', N'Admin', N'ADMIN')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'fbfd651f-3779-4822-b549-4e4bbce5b8a1', N'32a47d98-383b-43c4-a2f7-a42b08d41707', N'Customer', N'CUSTOMER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', N'176aa2a7-0897-4d51-b1df-d3bcf5728c2a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8be5022d-4dd9-4d4b-89af-8e34cc654cb3', N'fbfd651f-3779-4822-b549-4e4bbce5b8a1')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName], [BirthDate], [CreatedOnDate], [IsDeleted]) VALUES (N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', 0, N'b35b3e13-7c2d-4798-9c42-75eff0f12af0', N'admin@admin.com', 0, 1, NULL, N'ADMIN@ADMIN.COM', N'ADMIN@ADMIN.COM', N'AQAAAAEAACcQAAAAEEucPQq83VT0tV0vy5RK3YioQedbysYq3cZsJBE0SMvQJy8YbEOqgxOhKmRjSjw+vg==', NULL, 0, N'2fbdb2c9-d3e0-4f1a-9330-aa991650039c', 0, N'test@test.com', N'Test', N'User', CAST(N'1996-04-14T00:00:00.000' AS DateTime), CAST(N'2017-12-29T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName], [BirthDate], [CreatedOnDate], [IsDeleted]) VALUES (N'8be5022d-4dd9-4d4b-89af-8e34cc654cb3', 0, N'd83ac4db-3401-423a-a62b-eab229f3fd61', N'test@test.com', 0, 1, NULL, N'TEST@TEST.COM', N'TEST@TEST.COM', N'AQAAAAEAACcQAAAAEI4kJ6yjKd97nXheBPMTBVv6k+/DAFwiAHxWYijXCl2SkgtZLbDosV4OAwuMIl8GFA==', NULL, 0, N'4829442b-81c7-420a-9042-f83c5e63681c', 0, N'admin@admin.com', N'Test', N'User', CAST(N'2007-02-03T00:00:00.000' AS DateTime), CAST(N'2018-01-16T15:43:28.487' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1, N'Computers', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2, N'Phones', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (3, N'Accessories', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (4, N'Gaming', NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [ShippingId], [Payed], [StatusId], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1004, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(39.99 AS Decimal(18, 2)), 1003, 1, 3, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-03T20:15:35.653' AS DateTime), N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-11T16:44:40.833' AS DateTime), 0)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [ShippingId], [Payed], [StatusId], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1005, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(1549.97 AS Decimal(18, 2)), 1004, 1, 1, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-11T18:07:18.487' AS DateTime), N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-16T15:45:44.323' AS DateTime), 0)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [ShippingId], [Payed], [StatusId], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1006, N'8be5022d-4dd9-4d4b-89af-8e34cc654cb3', CAST(29.99 AS Decimal(18, 2)), 1005, 1, 3, N'8be5022d-4dd9-4d4b-89af-8e34cc654cb3', CAST(N'2018-01-16T15:43:57.803' AS DateTime), N'8be5022d-4dd9-4d4b-89af-8e34cc654cb3', CAST(N'2018-01-16T15:51:36.210' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [ProductId], [OrderId], [Price], [Quantity], [Total], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1006, 2120, 1004, CAST(39.99 AS Decimal(18, 2)), 1, CAST(39.99 AS Decimal(18, 2)), N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-03T20:15:35.783' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [OrderId], [Price], [Quantity], [Total], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1008, 2120, 1005, CAST(29.99 AS Decimal(18, 2)), 1, CAST(29.99 AS Decimal(18, 2)), N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-11T20:02:20.360' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [OrderId], [Price], [Quantity], [Total], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1010, 2119, 1005, CAST(759.99 AS Decimal(18, 2)), 2, CAST(1519.98 AS Decimal(18, 2)), N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-11T20:09:39.060' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[OrderDetails] ([Id], [ProductId], [OrderId], [Price], [Quantity], [Total], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1011, 2120, 1006, CAST(29.99 AS Decimal(18, 2)), 3, CAST(29.99 AS Decimal(18, 2)), N'8be5022d-4dd9-4d4b-89af-8e34cc654cb3', CAST(N'2018-01-16T15:43:57.943' AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Price] ON 

INSERT [dbo].[Price] ([Id], [ProductId], [Price], [IsSale], [IsActive]) VALUES (2014, 2114, CAST(899.99 AS Decimal(18, 2)), 0, 1)
INSERT [dbo].[Price] ([Id], [ProductId], [Price], [IsSale], [IsActive]) VALUES (2015, 2115, CAST(379.99 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Price] ([Id], [ProductId], [Price], [IsSale], [IsActive]) VALUES (2017, 2115, CAST(429.99 AS Decimal(18, 2)), 0, 1)
INSERT [dbo].[Price] ([Id], [ProductId], [Price], [IsSale], [IsActive]) VALUES (2018, 2116, CAST(232.50 AS Decimal(18, 2)), 0, 1)
INSERT [dbo].[Price] ([Id], [ProductId], [Price], [IsSale], [IsActive]) VALUES (2022, 2119, CAST(759.99 AS Decimal(18, 2)), 0, 1)
INSERT [dbo].[Price] ([Id], [ProductId], [Price], [IsSale], [IsActive]) VALUES (2023, 2119, CAST(729.99 AS Decimal(18, 2)), 1, 0)
INSERT [dbo].[Price] ([Id], [ProductId], [Price], [IsSale], [IsActive]) VALUES (2024, 2120, CAST(39.99 AS Decimal(18, 2)), 0, 1)
INSERT [dbo].[Price] ([Id], [ProductId], [Price], [IsSale], [IsActive]) VALUES (2025, 2120, CAST(29.99 AS Decimal(18, 2)), 1, 1)
SET IDENTITY_INSERT [dbo].[Price] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Description], [Quantity], [IsOnSale], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2114, N'iPhone X', N'<p>iPhone X&nbsp;</p><p>64GB</p><p>Silver</p><p><br></p>', 10, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:43:22.410' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Quantity], [IsOnSale], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2115, N'PlayStation 4 Slim, 500GB, i zi', N'<div class="ty-product-feature" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; padding: 10px; background: rgb(246, 246, 246);"><span class="ty-product-feature__label" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; width: 280px; vertical-align: top;">Garancioni nga prodhuesi:</span>&nbsp;<div class="ty-product-feature__value" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; margin-left: 5px;">1 vit</div></div><div class="ty-product-feature" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; padding: 10px;"><span class="ty-product-feature__label" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; width: 280px; vertical-align: top;">Kodi:</span>&nbsp;<div class="ty-product-feature__value" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; margin-left: 5px;">PS719866268</div></div><div class="ty-product-feature" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; padding: 10px; background: rgb(246, 246, 246);"><span class="ty-product-feature__label" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; width: 280px; vertical-align: top;">Lloji i konzolës:</span>&nbsp;<div class="ty-product-feature__value" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; margin-left: 5px;">PS4</div></div><div class="ty-product-feature" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; padding: 10px;"><span class="ty-product-feature__label" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; width: 280px; vertical-align: top;">Në ofertë që nga:</span>&nbsp;<div class="ty-product-feature__value" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; margin-left: 5px;">20. 9. 2017</div></div><div class="ty-product-feature" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; padding: 10px; background: rgb(246, 246, 246);"><span class="ty-product-feature__label" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; width: 280px; vertical-align: top;">Prodhuesi:</span>&nbsp;<div class="ty-product-feature__value" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; margin-left: 5px;">Sony</div></div><div class="ty-product-feature" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; padding: 10px;"><span class="ty-product-feature__label" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; width: 280px; vertical-align: top;">Ueb-i i prodhuesit:</span>&nbsp;<div class="ty-product-feature__value" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: inline-block; margin-left: 5px;">Sony.cz</div></div>', 3, 1, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:45:23.460' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Quantity], [IsOnSale], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2116, N'Beats By Dr.Dre Solo 3 ', N'<p style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;">Beats Solo 3 vijnë në treg me përmisime të jashtzakonshme, me zërim të qartë dhe të balansuar, jetëgjatësi të baterisë deri në 40 orë dhe me dizajn e form elegante e moderne që përshtatet me çdo përdorues.</p><p style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;">Sistemi i zërimit është i përsosur, me Beats Solo 3, zëri është i qartë, i balansuar dhe kumbues. Çdo këngë, simfoni dhe operë do të ju duket sikurse të ishte reale, e çdo notë do përjetohet deri në fund.<br style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></p><p style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;">Beats Solo 3 mund të përdoren lehtësisht nga çdo kush, ju vetëm duhet të ndizni kufjet dhe mbani afër celularin iPhone, Apple Watch, iPad apo Mac dhe në mënyrë automatike të dy pajisjet do sinkronizohen përmes Bluetooth (por që mund të përdoren edhe me pajisje tjera përmes kabllos audio 3.5mm) dhe ju mund të filloni e dëgjoni çfarëdo që dëshironi për 40 orë rresht! Jetëgjatësia e këtyre kufjeve është mundësuar nga një çip i integruar në të W1, i cili jo vetëm që e ruan baterinë por edhe mundëson që të karikohet për vetëm 3 minuta përmes teknologjisë Fast Fuel.<br style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></p><p style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;">Kufjet, përpos kualitetit të jashtzakonshëm të zërit, njihen edhe për dizajnin dhe formën elegante e moderne. Veçanti e tyre është se kanë formë ergonomike e cila përshtatet në mënyrë të përkryer më veshët dhe kokën tuaj edhe pas orëve të gjatë dëgjimi, janë pa kabllo dhe palosen tejet lehtë. Po ashtu, kufjet kanë të integruara taste komanduese dhe mikrofon për të kontrolluar volumin e zërit dhe për të pranuar telefonata edhe kur jeni në lëvizje.<br style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></p><p style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;">Me Beats Solo 3 cdo gjë përjetohet ndryshe!</p>', 5, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:55:39.810' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Quantity], [IsOnSale], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2119, N'Laptop MSI GL62 7RDX-1044CZ', N'
                            
                            <span style="color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px;">MSI GL62 është një ndër laptopët më të fuqishëm në treg me rezistencë dhe performancë të jashtzakonshme, i dizajnuar posaçërisht për të apasionuarit e lojërave. Ky laptop vjen me ekran 15.6" me kualitet Full HD dhe rezolucion 1920 x 1080, të shoqëruar me kartelë garfike NVIDIA GeForce GTX 1050 me 2GB GDDR5 përmes së cilave shfaq imazhe me kualitet të lartë, ngjyra të detajuara dhe pa ndërprerje. Si pjesë përbërëse ky laptop posedon procesor katër bërthamësh Intel Core i5-7300HQ i cili operon në frekuencë prej 2.5 GHz deri në 3.5GHz në TurboBoost. Poashtu, është i kombinuar me RAM memorie 8GB të llojit DDR4 (një modul), memorie të brendshme 1TB HDD dhe një slot për SSD M.2 PCIe / SATA Combo. MSI ka drive optik DVD ± RW, kurse për lidhje me pajisje tjera përdorë teknologjitë Wi-Fi ac, Bluetooth, apo Gigabit Ethernet, si dhe portet USB 3.0/3.1 Gen1, USB 2.0, USB-C, HDMI, mini DisplayPort dhe portin për kufje dhe mikrofon. Gjithashtu, MSI ka tastierë me ndriçim të dizajnuar veçanërisht për lojëra nga SteelSeries, kamerë HD, teknologji zërimi Nahimic 2 dhe Audio Boost dhe pa sistem operativ.</span>
                            
                        
                        
                        ', 3, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:27:01.240' AS DateTime), N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:39:21.223' AS DateTime), 0)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Quantity], [IsOnSale], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2120, N'DICOTA Bag Spin 14”', N'
                            <p style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;">Kjo çantë vjen me një dizajn të thjeshtë dhe elegant, ndërsa shërben për bartjen e laptopëve të madhësive deri 15.6”.</p><p style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;">Çanta ofron mbrojtje maksimale për laptopin tuaj, por edhe për aksesorët dhe gjërat tjera të cilat u nevojiten.</p><p style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;">Ajo është e përbërë nga materiale të qëndrueshme dhe me peshë të lehtë, ndërsa përmban edhe xhepa të vogël të cilët mund t’i shfrytëzoni për arsye të ndryshme, si për vendosjen e celularëve, kabllove, mausit etj.</p><p style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(28, 28, 28); font-family: Roboto, sans-serif; font-size: 14px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;">Dimensionet e çantës janë 450 x 320 x 160 mm.</p>
                            
                        
                        ', 15, 1, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:41:18.427' AS DateTime), N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:42:14.120' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (1027, 2114, 2)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (1028, 2115, 4)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (1029, 2116, 3)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (1036, 2119, 4)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (1037, 2119, 1)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (1039, 2120, 3)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([Id], [FullName], [Address1], [Address2], [PostalCode], [City], [State], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1003, N'Test User', N'Sava Kovacevic no.21', N'Asdas', N'17523', N'Presevo', N'Serbia', N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-11T16:44:39.760' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Shipping] ([Id], [FullName], [Address1], [Address2], [PostalCode], [City], [State], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1004, N'Test User', N'Sava Kovacevic no.21', N'Asdas', N'17523', N'Presevo', N'Serbia', N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-16T15:45:44.170' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Shipping] ([Id], [FullName], [Address1], [Address2], [PostalCode], [City], [State], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (1005, N'Test User', N'Sava Kovacevic no.21', N'Asdas', N'17523', N'Presevo', N'Serbia', N'8be5022d-4dd9-4d4b-89af-8e34cc654cb3', CAST(N'2018-01-16T15:51:36.030' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Shipping] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Name]) VALUES (1, N'Ordered')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (2, N'Processing')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (3, N'Shipped')
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[Upload] ON 

INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2126, N'~/uploads/carousels/Banner2126.png', N'Banner2126.png', NULL, 0, 1, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:40:16.313' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2127, N'~/uploads/carousels/Banner2127.png', N'Banner2127.png', NULL, 0, 1, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:40:41.690' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2128, N'~/uploads/carousels/Banner2128.png', N'Banner2128.png', NULL, 0, 1, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:40:52.120' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2129, N'~/uploads/carousels/Banner2129.png', N'Banner2129.png', NULL, 0, 1, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:41:02.233' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2130, N'~/uploads/products/2114/thumbnail.png', N'thumbnail.png', 2114, 1, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:43:22.473' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2131, N'~/uploads/products/2114/104707061-RTX3FYCV.1910x1000_74602484.jpg', N'104707061-RTX3FYCV.1910x1000_74602484.jpg', 2114, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:43:22.590' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2132, N'~/uploads/products/2114/104807567-iphone-x-11.1910x1000_74602592.JPG', N'104807567-iphone-x-11.1910x1000_74602592.JPG', 2114, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:43:22.603' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2133, N'~/uploads/products/2114/iphonexfamly-TA_74602603.jpg', N'iphonexfamly-TA_74602603.jpg', 2114, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:43:22.610' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2134, N'~/uploads/products/2114/iphonexfrontback-800x573_74602611.jpg', N'iphonexfrontback-800x573_74602611.jpg', 2114, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:43:22.623' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2135, N'~/uploads/products/2114/maxresdefault-800x450_74602624.jpg', N'maxresdefault-800x450_74602624.jpg', 2114, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:43:22.637' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2136, N'~/uploads/products/2114/vpavic_170912_1993_0010_74602636.jpg', N'vpavic_170912_1993_0010_74602636.jpg', 2114, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:43:22.647' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2137, N'~/uploads/products/2115/thumbnail.png', N'thumbnail.png', 2115, 1, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:45:23.493' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2138, N'~/uploads/products/2115/Sony_74723500.jpg', N'Sony_74723500.jpg', 2115, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:45:23.507' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2139, N'~/uploads/products/2115/Sony1_74723508.jpg', N'Sony1_74723508.jpg', 2115, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:45:23.517' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2140, N'~/uploads/products/2115/Sony2_74723516.jpg', N'Sony2_74723516.jpg', 2115, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:45:23.523' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2141, N'~/uploads/products/2115/Sony3_74723522.jpg', N'Sony3_74723522.jpg', 2115, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:45:23.530' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2142, N'~/uploads/products/2115/Sony4_74723529.jpg', N'Sony4_74723529.jpg', 2115, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:45:23.530' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2143, N'~/uploads/products/2116/thumbnail.png', N'thumbnail.png', 2116, 1, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:55:39.990' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2144, N'~/uploads/products/2116/1 (1)_75340064.jpg', N'1 (1)_75340064.jpg', 2116, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:55:40.100' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2145, N'~/uploads/products/2116/2 (1)_75340101.jpg', N'2 (1)_75340101.jpg', 2116, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:55:40.107' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2146, N'~/uploads/products/2116/3 (1)_75340108.jpg', N'3 (1)_75340108.jpg', 2116, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:55:40.117' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2147, N'~/uploads/products/2116/4 (1)_75340116.jpg', N'4 (1)_75340116.jpg', 2116, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:55:40.137' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2148, N'~/uploads/products/2116/5 (1)_75340137.jpg', N'5 (1)_75340137.jpg', 2116, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:55:40.143' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2149, N'~/uploads/products/2116/6_75340144.jpg', N'6_75340144.jpg', 2116, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T20:55:40.150' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2156, N'~/uploads/products/2119/thumbnail.png', N'thumbnail.png', 2119, 1, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:27:01.470' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2157, N'~/uploads/products/2119/0 (1)_77221489.jpg', N'0 (1)_77221489.jpg', 2119, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:27:01.560' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2158, N'~/uploads/products/2119/1 (2)_77221559.jpg', N'1 (2)_77221559.jpg', 2119, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:27:01.570' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2159, N'~/uploads/products/2119/2 (2)_77221568.jpg', N'2 (2)_77221568.jpg', 2119, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:27:01.573' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2160, N'~/uploads/products/2119/3 (2)_77221574.jpg', N'3 (2)_77221574.jpg', 2119, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:27:01.580' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2161, N'~/uploads/products/2120/thumbnail.png', N'thumbnail.png', 2120, 1, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:41:18.473' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2162, N'~/uploads/products/2120/0 (2)_78078492.jpg', N'0 (2)_78078492.jpg', 2120, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:41:18.507' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2163, N'~/uploads/products/2120/1 (3)_78078506.jpg', N'1 (3)_78078506.jpg', 2120, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:41:18.513' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2164, N'~/uploads/products/2120/2 (3)_78078514.jpg', N'2 (3)_78078514.jpg', 2120, 0, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:41:18.520' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Upload] ([Id], [Path], [FileName], [ProductId], [IsThumbnail], [IsCarousel], [CreatedByUserId], [CreatedOnDate], [LasUpdatedByUserId], [LastUpdatedOnDate], [IsDeleted]) VALUES (2165, N'~/uploads/products/2120/thumbnail.png', N'thumbnail.png', 2120, 1, 0, N'6b30f13b-77b8-452a-aca5-4b15f0ff99f6', CAST(N'2018-01-02T21:42:14.163' AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Upload] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 8/26/2018 11:15:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/26/2018 11:15:41 PM ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 8/26/2018 11:15:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 8/26/2018 11:15:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 8/26/2018 11:15:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 8/26/2018 11:15:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 8/26/2018 11:15:41 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/26/2018 11:15:41 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Cart_Payed]  DEFAULT ((0)) FOR [Payed]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsOnSale]  DEFAULT ((0)) FOR [IsOnSale]
GO
ALTER TABLE [dbo].[Upload] ADD  CONSTRAINT [DF_Upload_IsThumbnail]  DEFAULT ((0)) FOR [IsThumbnail]
GO
ALTER TABLE [dbo].[Upload] ADD  CONSTRAINT [DF_Upload_IsCarousel]  DEFAULT ((0)) FOR [IsCarousel]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Shipping] FOREIGN KEY([ShippingId])
REFERENCES [dbo].[Shipping] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Cart_Shipping]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AspNetUsers]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [FK_Price_Product]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Category]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Product]
GO
ALTER TABLE [dbo].[Upload]  WITH CHECK ADD  CONSTRAINT [FK_Upload_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Upload] CHECK CONSTRAINT [FK_Upload_Product]
GO
USE [master]
GO
ALTER DATABASE [eCommerce] SET  READ_WRITE 
GO
