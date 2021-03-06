USE [master]
GO
/****** Object:  Database [GroceryStoreDB]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE DATABASE [GroceryStoreDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GroceryStoreDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GroceryStoreDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GroceryStoreDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GroceryStoreDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GroceryStoreDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GroceryStoreDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GroceryStoreDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET RECOVERY FULL 
GO
ALTER DATABASE [GroceryStoreDB] SET  MULTI_USER 
GO
ALTER DATABASE [GroceryStoreDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GroceryStoreDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GroceryStoreDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GroceryStoreDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GroceryStoreDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GroceryStoreDB', N'ON'
GO
ALTER DATABASE [GroceryStoreDB] SET QUERY_STORE = OFF
GO
USE [GroceryStoreDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/10/2021 1:33:07 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[AddressType] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/10/2021 1:33:07 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/10/2021 1:33:07 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FullName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/10/2021 1:33:07 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CartId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[BillingAddressId] [int] NOT NULL,
	[ShippingAddressId] [int] NOT NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[PaymentMethodStatus] [nvarchar](max) NULL,
	[CartId] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[Amount] [float] NOT NULL,
	[PaymentType] [nvarchar](max) NULL,
	[DeliveryStatus] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[CategoryId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/10/2021 1:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201020095459_oo', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027174713_1111', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027174831_pp', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201211114122_order', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201212084446_ordr', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201212091255_ordrn', N'3.1.9')
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [FullName], [Address1], [City], [State], [Country], [PostalCode], [Phone], [Email], [AddressType], [UserId]) VALUES (1, N'Vaibhavi Dalwadi', N'2175, Maisonneuve Blvd W', N'Montreal', N'Quebec', N'Canada', N'H3H1L5', N'4388663415', N'janki@gmail.com', 1, N'ce74f716-19e9-4adb-b0de-889b73d2096c')
INSERT [dbo].[Address] ([Id], [FullName], [Address1], [City], [State], [Country], [PostalCode], [Phone], [Email], [AddressType], [UserId]) VALUES (2, N'Vaibhavi Dalwadi', N'2175, Maisonneuve Blvd W', N'Montreal', N'Quebec', N'Canada', N'H3H1L5', N'4388663415', N'janki@gmail.com', 0, N'ce74f716-19e9-4adb-b0de-889b73d2096c')
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cf402bc3-2843-40c2-aff9-7b1921223c70', N'admin', N'ADMIN', N'1936ad35-9c96-4a94-8579-2bf68d40a5e2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c03cffb-cc70-44ec-b925-7be2734bd141', N'cf402bc3-2843-40c2-aff9-7b1921223c70')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (N'3c03cffb-cc70-44ec-b925-7be2734bd141', N'admin', N'ADMIN', N'admin@test.com', N'ADMIN@TEST.COM', 1, N'AQAAAAEAACcQAAAAEIU9+sVSiakrXObdsCfdSNvQHkitszn8fHIFw/1EzoyzBqUeUikSFeOLWTDNvUyDxw==', N'6KVLZVRR2S7VOFUEGH5MYVCLTD3U7MWD', N'0857790d-42b9-4e56-85f6-4e79efbfb8f1', NULL, 0, 0, NULL, 1, 0, N'Admin User')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName]) VALUES (N'ce74f716-19e9-4adb-b0de-889b73d2096c', N'Vaibhavi', N'VAIBHAVI', N'dalwadivaibhavi@outlook.com', N'DALWADIVAIBHAVI@OUTLOOK.COM', 0, N'AQAAAAEAACcQAAAAECWA6eT1IVH5d7I20ZNyKqL5V7z5bFPEZumfkWi1jwRp2XkITZP6kgVjieOHc8z5qg==', N'7RRKHJBQL6C3JHCUQ56A2LFOEA2JNXAM', N'9c1e6468-ba1e-4ba2-86a3-6c8152243dff', NULL, 0, 0, NULL, 1, 0, N'Vaibhavi Dalwadi')
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [UserId]) VALUES (1, N'ce74f716-19e9-4adb-b0de-889b73d2096c')
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Fruit & Vegetables')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Bakery')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Dairy')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([Id], [ProductId], [OrderId], [Quantity]) VALUES (1, 1, 1, 1)
INSERT [dbo].[OrderItem] ([Id], [ProductId], [OrderId], [Quantity]) VALUES (2, 6, 1, 1)
INSERT [dbo].[OrderItem] ([Id], [ProductId], [OrderId], [Quantity]) VALUES (3, 5, 2, 4)
INSERT [dbo].[OrderItem] ([Id], [ProductId], [OrderId], [Quantity]) VALUES (4, 1, 3, 1)
INSERT [dbo].[OrderItem] ([Id], [ProductId], [OrderId], [Quantity]) VALUES (5, 3, 3, 1)
INSERT [dbo].[OrderItem] ([Id], [ProductId], [OrderId], [Quantity]) VALUES (6, 3, 4, 3)
INSERT [dbo].[OrderItem] ([Id], [ProductId], [OrderId], [Quantity]) VALUES (7, 7, 4, 1)
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CreatedOn], [OrderStatus], [BillingAddressId], [ShippingAddressId], [PaymentMethod], [PaymentMethodStatus], [CartId], [UserId], [Amount], [PaymentType], [DeliveryStatus]) VALUES (1, CAST(N'2020-12-17T00:16:21.1176345' AS DateTime2), 1, 1, 2, N'Credit or Debit Card payment (Instant Pay)', N'Paid', 1, N'ce74f716-19e9-4adb-b0de-889b73d2096c', 60, N'Credit/Debit Card', 0)
INSERT [dbo].[Orders] ([Id], [CreatedOn], [OrderStatus], [BillingAddressId], [ShippingAddressId], [PaymentMethod], [PaymentMethodStatus], [CartId], [UserId], [Amount], [PaymentType], [DeliveryStatus]) VALUES (2, CAST(N'2020-12-17T01:03:03.6995145' AS DateTime2), 1, 1, 2, N'Cash on Delivery (Pay Later)', N'Paid', 1, N'ce74f716-19e9-4adb-b0de-889b73d2096c', 40, N'Pay Later', 0)
INSERT [dbo].[Orders] ([Id], [CreatedOn], [OrderStatus], [BillingAddressId], [ShippingAddressId], [PaymentMethod], [PaymentMethodStatus], [CartId], [UserId], [Amount], [PaymentType], [DeliveryStatus]) VALUES (3, CAST(N'2021-01-07T07:40:24.3676705' AS DateTime2), 0, 1, 2, N'Cash on Delivery (Pay Later)', N'Unpaid', 1, N'ce74f716-19e9-4adb-b0de-889b73d2096c', 7.94, N'Pay Later', 1)
INSERT [dbo].[Orders] ([Id], [CreatedOn], [OrderStatus], [BillingAddressId], [ShippingAddressId], [PaymentMethod], [PaymentMethodStatus], [CartId], [UserId], [Amount], [PaymentType], [DeliveryStatus]) VALUES (4, CAST(N'2021-01-07T09:17:42.5142021' AS DateTime2), 0, 1, 2, N'Credit or Debit Card payment (Instant Pay)', N'Paid', 1, N'ce74f716-19e9-4adb-b0de-889b73d2096c', 14.91, N'Credit/Debit Card', 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (1, 1)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (3, 2)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (1, 3)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (2, 4)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (1, 5)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (3, 6)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (2, 7)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (3, 8)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (1, 9)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (2, 10)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (1, 11)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (3, 12)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (2, 13)
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (1, N'Avocado (Pack of 5)', N'avocado.jpg', CAST(5.97 AS Decimal(18, 2)), N'<p>As part of guacamole, in a salad or on a bun, avocados can be used in a wide variety of recipes. In many South American countries, avocados are added to milkshakes, made into juice and are a staple for many dips. Many salads also use chopped up avocados in combination with tomatoes, onions and olives.</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (2, N'Astro Original Balkan Style Yogurt', N'yogurt.png', CAST(2.97 AS Decimal(18, 2)), N'<p>Astro Original Balkan yogourt is made with 100% all-natural ingredients.</p>

<p>It&rsquo;s thick and creamy with only 3 ingredients: skim milk, cream and active bacterial cultures.</p>

<p>Great for cooking and baking &ndash; be sure to try it in all your favourite recipes. The way yogourt is meant to be.</p>

<ul>
	<li>Thick, rich and creamy</li>
	<li>Made from natural ingredients</li>
	<li>100% kosher</li>
	<li>Contain no gelatin</li>
</ul>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (3, N'Blueberries', N'blueberries.jpg', CAST(2.97 AS Decimal(18, 2)), N'<p>Blueberries make a delicious snack on their own or with yogurt and a little honey! Naturally high in vitamin C.</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (4, N'Old El Paso Soft Tortillas Medium', N'Soft Tortillas Medium.png', CAST(2.47 AS Decimal(18, 2)), N'<p>Great food comes wrapped up with Old El Paso Flour Tortillas. Gently warmed, these light and soft tortillas are simply delicious wrapped around your favourite ingredients to create mouth-watering meals in minutes. Get creative, wrap &#39;em up and enjoy!</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (5, N'Pomegranate (Sold in singles)', N'pomegranates.jpg', CAST(1.97 AS Decimal(18, 2)), N'<p>Ready to eat, juicy &amp; sweet pomegranates. Source of vitamin C, fibre, vitamin B6.</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (6, N'Great Value Salted Butter', N'butter.jpg', CAST(4.47 AS Decimal(18, 2)), N'<p>The Great Value unsalted butter is made from 100% canadian quality milk and contains only two ingredients: cream and a touch of salt. Good for a keto diet or to enhance the taste of your food. A must to make all kinds of outstanding recipes or simply to put on your corn on the cob!</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (7, N'two-bite® Brownies', N'brownies.jpg', CAST(6.00 AS Decimal(18, 2)), N'<p>Classic two-bite&reg; brownies with a moist and chewy texture and rich chocolatey goodness in every bite.</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (8, N'Great Value Marble Cheddar Cheese', N'cheese.jpg', CAST(4.97 AS Decimal(18, 2)), N'<p>Great ValueTM Marble Cheddar Cheese:<br />
Made with 100% Canadian milk, Great ValueTM Marble Cheddar Cheese is a good source of calcium that&rsquo;s high in protein, too! This family-sized 400 g block is a great way to add the wholesome creamy goodness of cheese to any meal. Deliciously versatile, there are so many ways to please with cheese. Whether you melt it, grate it, slice it or cube it, cheddar makes everything better!</p>

<p>&bull; Good source of calcium<br />
&bull; Very high in protein<br />
&bull; 32% M.F., 37% moisture<br />
&bull; Keep refrigerated</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (9, N'Watermelon, Mini Seedless', N'watermelon.jpg', CAST(4.97 AS Decimal(18, 2)), N'<p>Mini seedless watermelon is a refreshing and tasty treat the whole family can enjoy.</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (10, N'Québon 3.25% Milk', N'milk.png', CAST(6.97 AS Decimal(18, 2)), N'<p>Why change tradition ? Qu&eacute;bon 3,25% whole milk combine all the great taste and freshness of Quebec&#39;s milk with many vitamins and minerals necessary to the maintenance of good health. From our farms to your family.</p>

<p>All the good reasons to choose Qu&eacute;bon :<br />
&bull; No antibiotics or artificial growth hormones*<br />
&bull; Milk is a preservative-free dairy product<br />
&bull; Pure taste<br />
&bull; Naturally gluten-free<br />
&bull; Only quality Canadian milk&mdash;always fresh and wholesome<br />
&bull; An excellent source of vitamin D and calcium<br />
<br />
*According to regulation currently in force in Canada, milk cannot contain antibiotic residues and artificial growth hormones are not approved for use in dairy cattle.</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (11, N'Nature Made Vitamin ', N'11.jpg', CAST(10.00 AS Decimal(18, 2)), N'<p>Target-Mins are made with specific free-form amino acids and uses a calcium-to-phosphorus and calcium-to-magnesium ratio of 2:1 to support calcium utilization. Supports body availability of calcium..</p><ul><li>Certified Gluten Free</li><li>Formulated to Maximize Calcium Absorption</li><li>Kosher</li><li>Vegan</li></ul> <p> *These statements have not been evaluated by the Food and Drug Administration. This product is not intended to diagnose, treat, cure, or prevent any disease. </p>')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (12, N'Ben & Jerry''s Chocolate Chip Cookie Dough Ice Cream', N'icecream.jpg', CAST(6.47 AS Decimal(18, 2)), N'<p>Big delicious chunks of chocolate chip cookie dough surrounded by creamy vanilla ice cream. It seems like such a no-brainer today, but in 1984 it was revolutionary.<br />
<br />
The Cookie Dough you know and love started with a simple suggestion: What if you put chunks of chocolate chip cookie dough into vanilla ice cream? That was the amazing anonymous idea submitted way back in the early days of our first Burlington, Vermont, USA, Scoop Shop. We used to have a bulletin board where people could suggest new flavours for Jerry and Ben to make&mdash;and this idea stood out. The folks at the Scoop Shop immediately went to work mixing up a batch of Cookie Dough. It was an instant hit.<br />
<br />
Initially, the flavour was only available at the Scoop Shop. When we decided to sell it in tubs, we had to figure out how to get that familiar cookie-dough taste, consistency and texture at ice cream temperatures. We teamed up with Rhino Foods and, over an incredible six-year journey, we perfected the cookie dough found in our tubs today. In 1991, Cookie Dough began appearing in freezer aisles everywhere. It has remained one of our most popular and beloved flavours ever since!<br />
<br />
We get our cocoa, sugar and vanilla from Fairtrade certified producers, while Canadian Dairy farmers provide all the milk and cream in this tub. Ben &amp; Jerry&rsquo;s ice cream is made with 100% Canadian milk and free run eggs. We also use responsibly sourced packaging.</p>

<p>✔ Ben &amp; Jerry&#39;s Chocolate Chip Cookie Dough Ice Cream Pint<br />
✔ Vanilla ice cream with gobs of chocolate chip cookie dough<br />
✔ Includes FairTrade certified cocoa, sugar &amp; vanilla<br />
✔ Ben &amp; Jerry&#39;s operates on a three-part mission that aims to create linked prosperity for everyone that&#39;s connected to our business: suppliers, employees, farmers, franchisees, customers, &amp; neighbours alike<br />
✔ Kosher certified dairy<br />
✔ Ben &amp; Jerry&#39;s uses responsibly sourced packaging</p>
')
INSERT [dbo].[Products] ([Id], [Name], [ImageUrl], [Price], [Description]) VALUES (13, N'POM® Superclub Sandwhich 100% Whole Grain Wheat Bread', N'bread.jpg', CAST(3.18 AS Decimal(18, 2)), N'<p>POM&reg; Superclub Sandwich 100% Whole Grain Wheat Bread is prepared in Quebec using our simplest ingredients for delicious soft bread. The thick-sliced bread is great for family favourites like grilled cheese.<br />
<br />
POM&reg; is very proud to be the maker of one of Quebec&#39;s favourite breads for the last 130 years. All of our sliced breads have always been prepared to reflect Quebec&#39;s love for soft, delicious bread. Made with our simplest quality ingredients and delivered across the province for the enjoyment of Quebec families since 1890, POM&reg; soft bread is an authentic homegrown classic.</p>

<p>&bull; Prepared in Quebec<br />
&bull; Source of 6 essential nutrients<br />
&bull; Our simplest ingredients<br />
&bull; No artificial flavours or colours</p>
')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItem_CartId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_CartItem_CartId] ON [dbo].[CartItem]
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItem_ProductId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_CartItem_ProductId] ON [dbo].[CartItem]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItem_OrderId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItem_OrderId] ON [dbo].[OrderItem]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItem_ProductId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItem_ProductId] ON [dbo].[OrderItem]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_BillingAddressId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_BillingAddressId] ON [dbo].[Orders]
(
	[BillingAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CartId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CartId] ON [dbo].[Orders]
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_ShippingAddressId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ShippingAddressId] ON [dbo].[Orders]
(
	[ShippingAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductCategory_ProductId]    Script Date: 1/10/2021 1:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductCategory_ProductId] ON [dbo].[ProductCategory]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Carts_CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Carts_CartId]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Carts_CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Carts_CartId]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Products_ProductId]
GO
USE [master]
GO
ALTER DATABASE [GroceryStoreDB] SET  READ_WRITE 
GO
