USE [master]
GO
/****** Object:  Database [P129AllupDb]    Script Date: 19.07.2022 11:32:48 ******/
CREATE DATABASE [P129AllupDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'P129AllupDb_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\P129AllupDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'P129AllupDb_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\P129AllupDb.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [P129AllupDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [P129AllupDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [P129AllupDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [P129AllupDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [P129AllupDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [P129AllupDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [P129AllupDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [P129AllupDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [P129AllupDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [P129AllupDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [P129AllupDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [P129AllupDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [P129AllupDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [P129AllupDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [P129AllupDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [P129AllupDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [P129AllupDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [P129AllupDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [P129AllupDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [P129AllupDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [P129AllupDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [P129AllupDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [P129AllupDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [P129AllupDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [P129AllupDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [P129AllupDb] SET  MULTI_USER 
GO
ALTER DATABASE [P129AllupDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [P129AllupDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [P129AllupDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [P129AllupDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [P129AllupDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [P129AllupDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [P129AllupDb] SET QUERY_STORE = OFF
GO
USE [P129AllupDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19.07.2022 11:32:48 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 19.07.2022 11:32:48 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19.07.2022 11:32:48 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19.07.2022 11:32:48 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19.07.2022 11:32:48 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19.07.2022 11:32:48 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19.07.2022 11:32:48 ******/
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
	[Name] [nvarchar](255) NULL,
	[SurName] [nvarchar](255) NULL,
	[IsAdmin] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[ConnectedAt] [datetime2](7) NULL,
	[ConnectionId] [nvarchar](255) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 19.07.2022 11:32:48 ******/
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
/****** Object:  Table [dbo].[Baskets]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baskets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Baskets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsUpdated] [bit] NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[IsMain] [bit] NOT NULL,
	[ParentId] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsUpdated] [bit] NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Text] [nvarchar](max) NULL,
	[SenderId] [nvarchar](450) NULL,
	[RecieverId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Count] [int] NOT NULL,
	[TotalPrice] [float] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[AppUserId] [nvarchar](450) NULL,
	[TotalPrice] [float] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[SurName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[TownCity] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[OrderStatus] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColorSizes]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColorSizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ProductColorSizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Price] [money] NOT NULL,
	[DiscoutnPrice] [money] NOT NULL,
	[ExTax] [money] NOT NULL,
	[Seria] [nvarchar](4) NULL,
	[Code] [int] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Count] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[HoverImage] [nvarchar](255) NULL,
	[MainImage] [nvarchar](255) NULL,
	[IsBestSeller] [bit] NOT NULL,
	[IsFeature] [bit] NOT NULL,
	[IsNewArrivel] [bit] NOT NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTags]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_ProductTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](2048) NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
	[MainTitle] [nvarchar](1024) NOT NULL,
	[SubTitle] [nvarchar](1024) NOT NULL,
	[Description] [nvarchar](2048) NOT NULL,
	[RedirectUrl] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 19.07.2022 11:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220608082635_InitialCatalog', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220608084312_CreatedTagsTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220609052351_CreatedBrandsTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220609053332_CreatedProductsTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220609053654_UpdatedProductsTableRelatedBrandsTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220609054256_CreatedProductTagsTableRelatedProductAndTagsTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220609054639_CreatedProductImagesTableRelatedProductTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220609054853_UpdatedProductImagesTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220609061350_UpdatedProductsTabdleAddedMainImageAndHoverImageColumns', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616052402_CreatedSettingsTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616053341_CreatedSlidersTableAndUpdatedSettingsTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220620062729_UpdatedProductsTableAddedNewColumns', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621063730_UpdatedBrandsTableAddedColumns', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622073439_CreatedCategoriesTabel', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622073818_UpdatedProductTableRelatedCategoryTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622074315_UpdatedCategoriesTable', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622081505_UpdatedCategoriesTableColumns', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630054530_CreatedIdedityPacketsTabels', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630061050_UpdatedAppUsersTabelsAddIsAdminColumn', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220704052612_UpdatedAspNetUsersTableAddedIsDeletedCreatedAtUpdatedAtDeletedAtColumns', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220704075219_UpdatedProductsTables', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220705064914_AddedBasketsTabel', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220705065408_UpdatedBasketsTablerelatedUserTabel', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220706075221_AddedOrdersAndOrderItemsTabel', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220706075535_UpdatedOrdersTabelAddedOrderStatusColumn', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220706083318_UpdatedOrdersTabel', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220707072545_UpdatedOrdersTabelAddedCommentColumn', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220714062407_AddedColorsTabel', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220714062456_AddedSizesTabel', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220714062712_AddedProductColorSizesTabel', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220718071825_UpdatedAppUsersTabelAddedConnectionIdAndConnectedAtColumns', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220719053823_AddedMessagesTableAndRelatedAppUsersTabel', N'3.1.25')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4e68a4ab-fbbe-4db1-ab70-ab7b7ad039e0', N'Member', N'MEMBER', N'0df2e67d-f246-469e-95b3-80a7c6f5dc4c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a3a07dff-04c8-4fed-8ea6-c8e86f7281df', N'SuperAdmin', N'SUPERADMIN', N'3ac9c75b-a7bd-49c4-8769-d2218e2cf42f')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f36c0cfd-897b-429b-ae47-4036779b416c', N'Admin', N'ADMIN', N'863fdf09-4094-4175-898e-91ab4ca3e38a')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'4e68a4ab-fbbe-4db1-ab70-ab7b7ad039e0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'21c84d0a-269c-4acc-a3ef-e246ce129f8a', N'4e68a4ab-fbbe-4db1-ab70-ab7b7ad039e0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5acfe0ce-14bb-4176-b932-db290deed110', N'4e68a4ab-fbbe-4db1-ab70-ab7b7ad039e0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c096b7b8-2f53-40ad-a87c-32a17a19d8d5', N'4e68a4ab-fbbe-4db1-ab70-ab7b7ad039e0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c310d0ea-70cf-4721-add7-ffea4f92b871', N'4e68a4ab-fbbe-4db1-ab70-ab7b7ad039e0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c7f1d941-2397-424b-8955-b377d0466a96', N'4e68a4ab-fbbe-4db1-ab70-ab7b7ad039e0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd4975f4e-fbb1-4421-b1ce-7f45ef5f5f33', N'a3a07dff-04c8-4fed-8ea6-c8e86f7281df')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [IsAdmin], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt], [ConnectedAt], [ConnectionId]) VALUES (N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'perviz', N'PERVIZ', N'perviz@code.edu.az', N'PERVIZ@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEMQefalkqRnnIJMYMqiFPx0l8tKa7tqqdYNkm10iT5RLiAkx5u3ovHJHt2TgjXo8nQ==', N'HENKWZVHYJW5Z45RSQCKGCP6UQFKRQVL', N'8fbe9187-b4e8-4aab-8a8d-70bdb5a61d75', NULL, 0, 0, NULL, 1, 0, N'Perviz Alizade', N'Perviz', 0, NULL, NULL, 0, NULL, CAST(N'2022-07-19T10:44:30.3516330' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [IsAdmin], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt], [ConnectedAt], [ConnectionId]) VALUES (N'21c84d0a-269c-4acc-a3ef-e246ce129f8a', N'elgiz', N'ELGIZ', N'elgiz@code.edu.az', N'ELGIZ@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEJYVLtBNTKhmqPio81QOOFNUhLDpYvhcxxFmfTlDs/Z5LtWqYEv7kxwtro/Ksmgw7g==', N'IYD3GNIHPT6WTRFGJOULJZ5TKIMDJJT6', N'4e732f95-5d19-42b4-9c52-ad43bcc37c68', NULL, 0, 0, NULL, 1, 0, N'Elgiz', N'Aliyev', 0, NULL, NULL, 0, NULL, NULL, N'W0gGbqFQwgs_f8DlYulyQw')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [IsAdmin], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt], [ConnectedAt], [ConnectionId]) VALUES (N'5acfe0ce-14bb-4176-b932-db290deed110', N'hamidvm', N'HAMIDVM', N'hamidvm@code.edu.az', N'HAMIDVM@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEBsmBmtheblAflb+ShJsIKAW8MVuVjWtI62gbUHKH4SlDBeZhX+23x14/YEiUDptRA==', N'RXHY6DNZOJQGQPD77LXKM2OQPFDB6EVS', N'5f163a14-52c7-48c6-b69d-eb0fea229c26', NULL, 0, 0, NULL, 1, 0, N'Hamid', N'Mammadov', 0, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [IsAdmin], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt], [ConnectedAt], [ConnectionId]) VALUES (N'c096b7b8-2f53-40ad-a87c-32a17a19d8d5', N'hamidvmP129', N'HAMIDVMP129', N'hamid.mammadov@code.edu.az', N'HAMID.MAMMADOV@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEG5CFtijZb7Dy6bVEEyQD5nOwlmVtKBKIEe3bjmgThKWvRfxJqJMVSf07xhMRdF3+w==', N'HNU6MVKZTRATNRMCJHJKYALOKVF6KJI7', N'2850e9ff-0bcc-4865-8328-9b51c2c0d0dd', NULL, 0, 0, NULL, 1, 0, N'Hamid', N'Mammadov', 0, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [IsAdmin], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt], [ConnectedAt], [ConnectionId]) VALUES (N'c310d0ea-70cf-4721-add7-ffea4f92b871', N'vasif', N'VASIF', N'vasif@code.edu.az', N'VASIF@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEPnXl3CFIUcWGgH/kQ0ZTslf35nArakFVQI9FPvjCueAoi/GQvn3mmqqwiTjF27jIg==', N'SASRSFCJ4MEJRBIWM5D35F5UNLBAZFPV', N'41b3325b-28d0-469a-94dd-4e18e2f07ac0', NULL, 0, 0, NULL, 1, 0, N'Vasif Aliyev', N'vasif', 0, NULL, NULL, 0, NULL, CAST(N'2022-07-19T10:44:32.5390792' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [IsAdmin], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt], [ConnectedAt], [ConnectionId]) VALUES (N'c7f1d941-2397-424b-8955-b377d0466a96', N'javid', N'JAVID', N'javid@code.edu.az', N'JAVID@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEDBXl1B0SV3ROsJwaJtWTI0MKyNpcWymdCS2dnWd1q3YSnWVb5kCtZEBBUy3P1f1BA==', N'AYGA5G74OBIMFAVJO6SW2TMAYE2O2VJJ', N'b0ecdd73-5403-431a-a375-d668cf96d0bd', NULL, 0, 0, NULL, 1, 0, N'Cavid', N'Alizade', 0, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [SurName], [IsAdmin], [CreatedAt], [DeletedAt], [IsDeleted], [UpdatedAt], [ConnectedAt], [ConnectionId]) VALUES (N'd4975f4e-fbb1-4421-b1ce-7f45ef5f5f33', N'SuperAdmin', N'SUPERADMIN', N'superadmin@gmail.com', N'SUPERADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJrh3eSMOI8YT2/zGtSSAFV4ZEJ9avZNeZxl3hRJGukhFm2u8kG40pL97oBvlIbVuQ==', N'IW7KL3WKLSNDGNDJRY4CU5GUVS2Z6HUH', N'59dc6a28-8735-4a42-b726-a3c23c60cccb', NULL, 0, 0, CAST(N'2022-07-04T07:07:57.0179170+00:00' AS DateTimeOffset), 1, 0, N'Super', N'Admin', 1, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Baskets] ON 

INSERT [dbo].[Baskets] ([Id], [Count], [ProductId], [AppUserId]) VALUES (3, 2, 3, N'5acfe0ce-14bb-4176-b932-db290deed110')
INSERT [dbo].[Baskets] ([Id], [Count], [ProductId], [AppUserId]) VALUES (4, 1, 12, N'5acfe0ce-14bb-4176-b932-db290deed110')
INSERT [dbo].[Baskets] ([Id], [Count], [ProductId], [AppUserId]) VALUES (5, 1, 14, N'5acfe0ce-14bb-4176-b932-db290deed110')
INSERT [dbo].[Baskets] ([Id], [Count], [ProductId], [AppUserId]) VALUES (6, 1, 15, N'5acfe0ce-14bb-4176-b932-db290deed110')
INSERT [dbo].[Baskets] ([Id], [Count], [ProductId], [AppUserId]) VALUES (7, 1, 1, N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Baskets] ([Id], [Count], [ProductId], [AppUserId]) VALUES (8, 1, 5, N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Baskets] ([Id], [Count], [ProductId], [AppUserId]) VALUES (9, 1, 9, N'c310d0ea-70cf-4721-add7-ffea4f92b871')
SET IDENTITY_INSERT [dbo].[Baskets] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (1, N'Apple1', NULL, NULL, 0, 1, CAST(N'2022-06-21T11:53:25.4768551' AS DateTime2))
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (2, N'Samsung', NULL, CAST(N'2022-06-23T09:22:05.1437882' AS DateTime2), 1, 0, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (3, N'Redmi', NULL, CAST(N'2022-06-21T12:15:44.3710010' AS DateTime2), 1, 0, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (7, N'Tets', CAST(N'2022-06-21T11:40:49.0249048' AS DateTime2), CAST(N'2022-06-21T12:15:48.6660892' AS DateTime2), 1, 0, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (8, N'Alma', CAST(N'2022-06-21T11:49:30.6818741' AS DateTime2), CAST(N'2022-06-21T12:26:59.2612639' AS DateTime2), 1, 0, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (9, N'asdasd', CAST(N'2022-06-21T11:50:41.1428601' AS DateTime2), CAST(N'2022-06-23T09:27:01.3166516' AS DateTime2), 1, 0, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (10, N'asdads', CAST(N'2022-06-21T11:52:06.2061202' AS DateTime2), CAST(N'2022-06-21T11:58:10.4859779' AS DateTime2), 0, 0, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (11, N'asdadsadasd', CAST(N'2022-06-21T11:52:40.7641356' AS DateTime2), CAST(N'2022-06-21T11:58:09.0677042' AS DateTime2), 0, 0, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (12, N'asdasda', CAST(N'2022-06-21T11:52:50.2349259' AS DateTime2), CAST(N'2022-06-21T12:12:12.7607529' AS DateTime2), 1, 0, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (13, N'asadadasdasdasdasdads', CAST(N'2022-06-21T11:53:13.7625245' AS DateTime2), CAST(N'2022-06-21T12:12:09.3877322' AS DateTime2), 1, 0, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (14, N'asdasdas', CAST(N'2022-06-21T11:57:01.6041563' AS DateTime2), CAST(N'2022-06-21T12:12:02.6406598' AS DateTime2), 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (1, N'Laptop', N'df962a51-558b-484d-876b-9f26da845f3a_20220623122926611_category-3.jpg', 1, NULL, NULL, NULL, 0, 1, CAST(N'2022-06-23T12:29:26.6173923' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (2, N'Computer', N'59c84e58-5811-4c46-a8f5-46d40cd74c45_20220623123023781_category-1.jpg', 1, NULL, CAST(N'2022-06-22T12:45:05.2476557' AS DateTime2), NULL, 0, 1, CAST(N'2022-06-23T12:30:23.7838732' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (3, N'Ele Bele', N'3d849ae3-bd17-40d4-925f-95a5e8f97220_20220623111930531_p129.jpg', 0, 2, CAST(N'2022-06-22T12:47:22.5777147' AS DateTime2), NULL, 0, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (5, N'Apple', N'fd277142-366f-453d-98f4-94b2dad51bd2_20220623123038374_category-2.jpg', 1, NULL, CAST(N'2022-06-23T10:50:35.0007451' AS DateTime2), NULL, 0, 1, CAST(N'2022-06-23T12:30:38.3757696' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (6, N'Nokia', N'0866df3b-2d69-41c9-a1cc-f2b01549a140_20220623123053123_category-3.jpg', 1, NULL, CAST(N'2022-06-23T10:57:35.4496518' AS DateTime2), NULL, 0, 1, CAST(N'2022-06-23T12:30:53.1247389' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (7, N'Nokia2', N'727c5a6c-84a0-423e-bf2e-1bbd9e6f9114_20220623123107893_category-7.jpg', 1, NULL, CAST(N'2022-06-23T10:58:05.0296770' AS DateTime2), CAST(N'2022-06-23T12:31:47.5587188' AS DateTime2), 1, 1, CAST(N'2022-06-23T12:31:07.8945753' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (8, N'asdads', N'3d849ae3-bd17-40d4-925f-95a5e8f97220_20220623111930531_p129.jpg', 1, NULL, CAST(N'2022-06-23T11:19:30.5375924' AS DateTime2), NULL, 0, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (9, N'Samsung2', N'3d849ae3-bd17-40d4-925f-95a5e8f97220_20220623111930531_p129.jpg', 1, NULL, CAST(N'2022-06-23T11:22:45.9112226' AS DateTime2), NULL, 0, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (10, N'Samsung22', N'3d849ae3-bd17-40d4-925f-95a5e8f97220_20220623111930531_p129.jpg', 1, NULL, CAST(N'2022-06-23T11:23:23.2991104' AS DateTime2), NULL, 0, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (11, N'Hamidasda', N'3d849ae3-bd17-40d4-925f-95a5e8f97220_20220623111930531_p129.jpg', 1, NULL, CAST(N'2022-06-23T11:44:50.6607506' AS DateTime2), NULL, 0, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (12, N'asdadsasdad', N'3d849ae3-bd17-40d4-925f-95a5e8f97220_20220623111930531_p129.jpg', 1, NULL, CAST(N'2022-06-23T11:54:31.8075316' AS DateTime2), NULL, 0, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [IsMain], [ParentId], [CreatedAt], [DeletedAt], [IsDeleted], [IsUpdated], [UpdatedAt]) VALUES (13, N'Samsungasd', N'3d849ae3-bd17-40d4-925f-95a5e8f97220_20220623111930531_p129.jpg', 1, NULL, CAST(N'2022-06-23T11:54:38.8556512' AS DateTime2), NULL, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name]) VALUES (1, N'Ag')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (2, N'Qara')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (3, N'Qirmizi')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (4, CAST(N'2022-07-19T10:24:24.4879258' AS DateTime2), NULL, 0, N'Salam', N'c310d0ea-70cf-4721-add7-ffea4f92b871', N'163a5966-77a5-4b47-919b-85a0bd1244e8')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (5, CAST(N'2022-07-19T10:25:11.0052140' AS DateTime2), NULL, 0, N'Salam', N'c310d0ea-70cf-4721-add7-ffea4f92b871', N'163a5966-77a5-4b47-919b-85a0bd1244e8')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (6, CAST(N'2022-07-19T10:27:47.6951055' AS DateTime2), NULL, 0, N'Necesen', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (7, CAST(N'2022-07-19T10:28:41.0220182' AS DateTime2), NULL, 0, N'Sagol', N'c310d0ea-70cf-4721-add7-ffea4f92b871', N'163a5966-77a5-4b47-919b-85a0bd1244e8')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (8, CAST(N'2022-07-19T10:28:47.9473087' AS DateTime2), NULL, 0, N'Sen Sagol', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (9, CAST(N'2022-07-19T10:28:58.7741018' AS DateTime2), NULL, 0, N'Sen Sagol', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (10, CAST(N'2022-07-19T10:30:36.4786750' AS DateTime2), NULL, 0, N'Sen Sagol', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (11, CAST(N'2022-07-19T10:33:16.8155546' AS DateTime2), NULL, 0, N'test1', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (12, CAST(N'2022-07-19T10:33:35.4134806' AS DateTime2), NULL, 0, N'asd', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (13, CAST(N'2022-07-19T10:34:17.7396187' AS DateTime2), NULL, 0, N'asd', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (14, CAST(N'2022-07-19T10:36:04.2438050' AS DateTime2), NULL, 0, N'sagol', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (15, CAST(N'2022-07-19T10:37:43.1271277' AS DateTime2), NULL, 0, N'asd', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (16, CAST(N'2022-07-19T10:38:19.9534785' AS DateTime2), NULL, 0, N'asd', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (17, CAST(N'2022-07-19T10:39:19.5859164' AS DateTime2), NULL, 0, N'asd', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (18, CAST(N'2022-07-19T10:39:30.8493598' AS DateTime2), NULL, 0, N'asd', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (19, CAST(N'2022-07-19T10:39:36.7543938' AS DateTime2), NULL, 0, N'asd', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (20, CAST(N'2022-07-19T10:40:50.3532946' AS DateTime2), NULL, 0, N'asda', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (21, CAST(N'2022-07-19T10:40:54.9204303' AS DateTime2), NULL, 0, N'asda', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
INSERT [dbo].[Messages] ([Id], [CreatedAt], [DeletedAt], [IsDeleted], [Text], [SenderId], [RecieverId]) VALUES (22, CAST(N'2022-07-19T10:40:56.5588308' AS DateTime2), NULL, 0, N'asda', N'163a5966-77a5-4b47-919b-85a0bd1244e8', N'c310d0ea-70cf-4721-add7-ffea4f92b871')
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (1, 1, 3, 899, 2, 1798)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (2, 1, 12, 699, 1, 699)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (3, 1, 14, 699, 1, 699)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (4, 1, 15, 699, 1, 699)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (5, 2, 3, 899, 2, 1798)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (6, 2, 12, 699, 1, 699)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (7, 2, 14, 699, 1, 699)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (8, 2, 15, 699, 1, 699)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (9, 3, 1, 699, 1, 699)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (10, 3, 5, 699, 1, 699)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Price], [Count], [TotalPrice]) VALUES (11, 3, 9, 699, 1, 699)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt], [AppUserId], [TotalPrice], [Name], [SurName], [Email], [Phone], [CompanyName], [Address1], [Address2], [Country], [TownCity], [State], [ZipCode], [OrderStatus], [Comment]) VALUES (1, 0, CAST(N'2022-07-06T12:36:03.5049473' AS DateTime2), NULL, NULL, N'5acfe0ce-14bb-4176-b932-db290deed110', 3895, N'Hamid as', N'Mammadov', N'hamidvm@code.edu.az', NULL, N'Code', N'Baki', N'28 May', N'Azerbaican', N'Baki', N'Nizami', N'1414', 1, N'asdasdasdasd')
INSERT [dbo].[Orders] ([Id], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt], [AppUserId], [TotalPrice], [Name], [SurName], [Email], [Phone], [CompanyName], [Address1], [Address2], [Country], [TownCity], [State], [ZipCode], [OrderStatus], [Comment]) VALUES (2, 0, CAST(N'2022-07-07T09:46:45.2169585' AS DateTime2), NULL, NULL, N'5acfe0ce-14bb-4176-b932-db290deed110', 3895, N'Hamid', N'Mammadov', N'hamidvm@code.edu.az', NULL, N'Code', N'Az', N'Az', N'Az', N'Az', N'Az', N'Az', 2, N'asdasdasd')
INSERT [dbo].[Orders] ([Id], [IsDeleted], [CreatedAt], [DeletedAt], [UpdatedAt], [AppUserId], [TotalPrice], [Name], [SurName], [Email], [Phone], [CompanyName], [Address1], [Address2], [Country], [TownCity], [State], [ZipCode], [OrderStatus], [Comment]) VALUES (3, 0, CAST(N'2022-07-19T09:13:33.8510797' AS DateTime2), NULL, NULL, N'c310d0ea-70cf-4721-add7-ffea4f92b871', 2097, N'Vasif Aliyev', N'vasif', N'vasif@code.edu.az', NULL, N'COde', N'Baki', N'Bineqedo', N'Azerbaijan', N'Baki', N'Baki', N'Az11111', 2, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductColorSizes] ON 

INSERT [dbo].[ProductColorSizes] ([Id], [ProductId], [ColorId], [SizeId], [Count]) VALUES (1, 38, 3, 4, 5)
INSERT [dbo].[ProductColorSizes] ([Id], [ProductId], [ColorId], [SizeId], [Count]) VALUES (2, 38, 2, 3, 10)
INSERT [dbo].[ProductColorSizes] ([Id], [ProductId], [ColorId], [SizeId], [Count]) VALUES (3, 38, 2, 2, 7)
SET IDENTITY_INSERT [dbo].[ProductColorSizes] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (1, N'product-1.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (2, N'product-2.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (3, N'product-3.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (6, N'product-1.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (7, N'product-2.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (8, N'product-3.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (9, N'product-4.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (10, N'product-5.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (11, N'product-1.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (12, N'product-2.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (13, N'product-3.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (14, N'product-4.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (15, N'product-5.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (16, N'product-1.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (17, N'product-2.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (18, N'product-3.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (19, N'product-4.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (20, N'product-5.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (21, N'product-1.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (22, N'product-2.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (23, N'product-3.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (24, N'product-4.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (25, N'product-5.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (26, N'product-1.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (27, N'product-2.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (28, N'product-3.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (29, N'product-4.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (30, N'product-5.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (31, N'product-1.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (32, N'product-2.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (33, N'product-3.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (34, N'product-4.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (35, N'product-5.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (36, N'product-1.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (37, N'product-2.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (38, N'product-3.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (39, N'product-4.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (40, N'product-5.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (41, N'product-1.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (42, N'product-2.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (43, N'product-3.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (44, N'product-4.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (45, N'product-5.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (46, N'product-1.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (47, N'product-2.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (48, N'product-3.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (49, N'product-4.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (50, N'product-5.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (51, N'product-1.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (52, N'product-2.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (53, N'product-3.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (54, N'product-4.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (55, N'product-5.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (56, N'product-1.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (57, N'product-2.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (58, N'product-3.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (59, N'product-4.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (60, N'product-5.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (61, N'product-1.jpg', 13)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (62, N'product-2.jpg', 13)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (63, N'product-3.jpg', 13)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (64, N'product-4.jpg', 13)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (65, N'product-5.jpg', 13)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (66, N'product-1.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (67, N'product-2.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (68, N'product-3.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (69, N'product-4.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (70, N'product-5.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (71, N'product-1.jpg', 15)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (72, N'product-2.jpg', 15)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (73, N'product-3.jpg', 15)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (74, N'product-4.jpg', 15)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (75, N'product-5.jpg', 15)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (76, N'product-1.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (77, N'product-2.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (78, N'product-3.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (79, N'product-4.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (80, N'product-5.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (81, N'2e69abc4-9922-4f84-8ae1-b5c7572a6b9e_20220704115232030_product-1.jpg', 33)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (82, N'ece698d9-4a7a-4177-96ff-2c4f9d240283_20220704115232031_product-2.jpg', 33)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (83, N'30253b16-6387-4e11-809e-92e8c66cebeb_20220704115232031_product-3.jpg', 33)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (84, N'ba09390b-32a8-4d51-a3e1-1aea661baeb6_20220704115232032_product-4.jpg', 33)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (90, N'4d652afa-764a-4692-9265-35699595be28_20220714093210516_product-1.jpg', 37)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (91, N'15066551-4200-4d91-8b6a-dbf87449c275_20220714093210516_product-2.jpg', 37)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (92, N'c24eb45d-7c92-4f6c-a23d-ddc66de8cbb4_20220714105333252_product-2.jpg', 38)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductId]) VALUES (93, N'302de213-6c46-48c3-bbbd-5246062817c5_20220714105333253_product-3.jpg', 38)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (1, N'iPhone 13', 799.0000, 699.0000, 50.0000, N'apip', 1, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-2.jpg', N'product-1.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (2, N'iPhone 13 Pro', 899.0000, 599.0000, 80.0000, N'apip', 2, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 1, N'product-3.jpg', N'product-4.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (3, N'iPhone 13 Pro max', 899.0000, 0.0000, 100.0000, N'apip', 3, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-5.jpg', N'product-6.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (4, N'Galaxy S22', 999.0000, 899.0000, 70.0000, N'saga', 4, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 2, N'product-7.jpg', N'product-8.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (5, N'Galaxy S21', 799.0000, 699.0000, 50.0000, N'saga', 5, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 2, N'product-10.jpg', N'product-9.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (6, N'A52', 399.0000, 339.0000, 50.0000, N'saga', 6, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 2, N'product-12.jpg', N'product-11.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (7, N'Poco', 499.0000, 0.0000, 50.0000, N'repo', 7, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 3, N'product-14.jpg', N'product-13.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (8, N'Poco X3 Pro', 799.0000, 699.0000, 50.0000, N'repo', 8, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 3, N'product-16.jpg', N'product-15.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (9, N'MI 5', 799.0000, 699.0000, 50.0000, N'remi', 9, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 3, N'product-1.jpg', N'product-17.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (10, N'iPhone 12', 799.0000, 699.0000, 50.0000, N'apip', 10, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 1, N'product-3.jpg', N'product-2.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (11, N'iPhone 11', 799.0000, 699.0000, 50.0000, N'apip', 11, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-5.jpg', N'product-4.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (12, N'iPhone 10', 799.0000, 699.0000, 50.0000, N'apip', 12, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 1, N'product-7.jpg', N'product-6.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (13, N'iPhone X', 799.0000, 699.0000, 50.0000, N'apip', 13, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-9.jpg', N'product-8.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (14, N'iPhone 8', 799.0000, 699.0000, 50.0000, N'apip', 14, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-11.jpg', N'product-10.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (15, N'iPhone 7', 799.0000, 699.0000, 50.0000, N'apip', 15, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 1, N'product-13.jpg', N'product-12.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (16, N'iPhone 6', 799.0000, 699.0000, 50.0000, N'apip', 16, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-15.jpg', N'product-14.jpg', 0, 0, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (17, N'Feaure iPhone 13', 799.0000, 699.0000, 50.0000, N'apip', 1, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-2.jpg', N'product-1.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (18, N'Feaure  iPhone 13 Pro', 899.0000, 599.0000, 80.0000, N'apip', 2, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 1, N'product-3.jpg', N'product-4.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (19, N'iPhone 13 Pro max', 899.0000, 0.0000, 100.0000, N'apip', 3, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-5.jpg', N'product-6.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (20, N'Galaxy S22', 999.0000, 899.0000, 70.0000, N'saga', 4, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 2, N'product-7.jpg', N'product-8.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (21, N'Galaxy S21', 799.0000, 699.0000, 50.0000, N'saga', 5, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 2, N'product-10.jpg', N'product-9.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (22, N'A52', 399.0000, 339.0000, 50.0000, N'saga', 6, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 2, N'product-12.jpg', N'product-11.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (23, N'Poco', 499.0000, 0.0000, 50.0000, N'repo', 7, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 3, N'product-14.jpg', N'product-13.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (24, N'Poco X3 Pro', 799.0000, 699.0000, 50.0000, N'repo', 8, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 3, N'product-16.jpg', N'product-15.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (25, N'MI 5', 799.0000, 699.0000, 50.0000, N'remi', 9, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 3, N'product-1.jpg', N'product-17.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (26, N'iPhone 12', 799.0000, 699.0000, 50.0000, N'apip', 10, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 1, N'product-3.jpg', N'product-2.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (27, N'iPhone 11', 799.0000, 699.0000, 50.0000, N'apip', 11, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-5.jpg', N'product-4.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (28, N'iPhone 10', 799.0000, 699.0000, 50.0000, N'apip', 12, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 1, N'product-7.jpg', N'product-6.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (29, N'iPhone X', 799.0000, 699.0000, 50.0000, N'apip', 13, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-9.jpg', N'product-8.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (30, N'iPhone 8', 799.0000, 699.0000, 50.0000, N'apip', 14, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-11.jpg', N'product-10.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (31, N'iPhone 7', 799.0000, 699.0000, 50.0000, N'apip', 15, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 0, 1, N'product-13.jpg', N'product-12.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (32, N'iPhone 6', 799.0000, 699.0000, 50.0000, N'apip', 16, N'Block out the haters with the fresh adidas® Originals Kaval Windbreaker Jacket. <br> Part of the Kaval Collection. <br> Regular fit is eased, but not sloppy, and perfect for any activity. <br> Plain-woven jacket specifically constructed for freedom of movement.', 5, 1, N'product-15.jpg', N'product-14.jpg', 0, 1, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (33, N'P129 First Product Crud', 999.0000, 0.0000, 50.0000, N'app1', 2, N'P129 First Product CrudP129 First Product CrudP129 First Product CrudP129 First Product CrudP129 First Product Crud', 10, 1, N'99999583-8eb5-4b7f-a456-26f919fa74c2_20220704115232029_product-14.jpg', N'583cb979-eef6-4a6a-9d9e-57f1af629012_20220704115232023_product-15.jpg', 1, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (34, N'P129 Second Product Crud', 899.0000, 0.0000, 50.0000, N'app1', 2, N'P129 Second Product Crud', 10, 1, N'65d4b517-5c15-402c-b0c6-b8ffc54e2f56_20220704115356851_product-4.jpg', N'2c843feb-e03d-430e-8968-5b4b48fcb0a1_20220704122929860_product-17.jpg', 0, 0, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (35, N'asdasd', 324.0000, 34.0000, 3.0000, N'apas', 2, N'sadad', 2, 1, N'79221ef4-5917-4363-916c-110d7ab02aba_20220705092111121_product-2.jpg', N'fd520fc6-6340-4eed-874d-36b568cba2cf_20220705092111116_product-1.jpg', 1, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (36, N'asd', 23.0000, 23.0000, 23.0000, N'apas', 3, N'asdasd', 2, 1, N'7b01ce62-c67a-410f-91b4-3b0318dab620_20220705092132740_product-11.jpg', N'8f990a03-80bc-4791-9d04-b8cb3eebab3f_20220705092132735_product-9.jpg', 0, 0, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (37, N'asdas', 123.0000, 12.0000, 12.0000, N'apas', 4, N'asdasd', 12, 1, N'36c387c8-c44b-44a7-afc0-85c6e7b899c3_20220714093210514_product-1.jpg', N'389386e1-278b-4eea-bad1-6178c8f6851d_20220714093210510_product-1.jpg', 0, 0, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [DiscoutnPrice], [ExTax], [Seria], [Code], [Description], [Count], [BrandId], [HoverImage], [MainImage], [IsBestSeller], [IsFeature], [IsNewArrivel], [CategoryId]) VALUES (38, N'asda', 123.0000, 12.0000, 12.0000, N'apas', 4, N'wsadads', 22, 1, N'51d29836-9399-4b24-845c-3f7c18caa80d_20220714105333251_product-1.jpg', N'68411ffb-dc16-4bf1-b5d7-21f8acd9bc98_20220714105333247_product-1.jpg', 0, 0, 1, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTags] ON 

INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (1, 1, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (2, 1, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (3, 2, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (4, 2, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (5, 3, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (6, 3, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (7, 4, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (8, 4, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (9, 5, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (10, 5, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (11, 6, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (12, 6, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (13, 7, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (14, 7, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (15, 8, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (16, 8, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (17, 9, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (18, 9, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (19, 10, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (20, 10, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (21, 11, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (22, 11, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (23, 12, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (24, 12, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (25, 13, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (26, 13, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (27, 14, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (28, 14, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (29, 15, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (30, 15, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (31, 16, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (32, 16, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (33, 14, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (34, 13, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (35, 12, 2)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (36, 4, 3)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (42, 37, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (43, 38, 1)
INSERT [dbo].[ProductTags] ([Id], [ProductId], [TagId]) VALUES (44, 38, 4)
SET IDENTITY_INSERT [dbo].[ProductTags] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (1, N'Title', N'<p>P129 Get FREE Shipping with <span class="text">$35!</span> Code: FREESHIPPING</p>')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (2, N'HeaderLogo', N'logo.png')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (3, N'SupportPhone', N'+99455555')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (4, N'Address', N'P129 45 Grand Central Terminal New York,NY 1017 United State USA')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (5, N'Phone', N'123-456-78954')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (6, N'Email', N'email@yourwebsitename.com')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (7, N'WorkDays', N'Mon-Sat 9:00pm - 5:00pm Sun:Closed')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (8, N'AboutImage', N'slider-5.jpg')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (9, N'AboutContent', N' <h2 class="title">Welcome to Allup</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam eum commodi obcaecati soluta minima rem error nihil. Deleniti quis maxime tempore optio enim, sapiente consectetur? Sed accusantium voluptatem rerum nisi quas, ipsum cupiditate. Autem quis possimus delectus pariatur corrupti facilis ex nobis voluptatem totam provident debitis, obcaecati exercitationem praesentium saepe hic. <br> <br> Sint voluptatum beatae necessitatibus quos mollitia vero, optio asperiores aut tempora iusto eum rerum, possimus, minus quidem ut saepe laboriosam. Praesentium aperiam accusantium minus repellendus accusamus neque iusto pariatur laudantium provident quod recusandae exercitationem natus dignissimos, molestias quibusdam doloremque eaque fugit molestiae modi quam unde. Error est dolor facere.</p>')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (10, N'AboutItemCompany', N'<h4 class="title">Our company</h4>
                        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (11, N'AboutItemTeam', N'<h4 class="title">Our team</h4>
                        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (12, N'AboutItemTestimonial', N'<h4 class="title">Testimonials</h4>
                        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p>')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (13, N'ContactContent', N'Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas human.')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (14, N'ContactAdress', N'123 Main Street, Anytown, CA 12345 – USA')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (15, N'ContactMobile', N'(08) 123 456 789')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (16, N'ContactHotline', N'1009 678 456')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (17, N'ContactEmail', N'yourmail@domain.com')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (18, N'ContactSupportEmail', N'support@hastech.company')
INSERT [dbo].[Settings] ([Id], [Key], [Value]) VALUES (19, N'PageItemCount', N'3')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (1, N'L')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (2, N'S')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (3, N'M')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (4, N'XL')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Image], [MainTitle], [SubTitle], [Description], [RedirectUrl]) VALUES (2, N'slider-1.jpg', N'<span>P129 2020 Virtual Reality </span> Fulldive VR.', N'Save $120 when you buy', N'Explore and immerse in exciting 360 content with Fulldive’s all-in-one virtual reality platform', N'https://bakuelectronics.az')
INSERT [dbo].[Sliders] ([Id], [Image], [MainTitle], [SubTitle], [Description], [RedirectUrl]) VALUES (3, N'slider-2.jpg', N'<span>4K HDR Smart TV 43 </span> Sony Bravia.', N'Save $120 when you buy', N'Explore and immerse in exciting 360 content with Fulldive’s all-in-one virtual reality platform', N'https://kontakt.az')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'dron')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'camera')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'smartphone')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'laptop')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (5, N'pc')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 19.07.2022 11:32:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 19.07.2022 11:32:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Baskets_AppUserId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_Baskets_AppUserId] ON [dbo].[Baskets]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Baskets_ProductId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_Baskets_ProductId] ON [dbo].[Baskets]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categories_ParentId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_Categories_ParentId] ON [dbo].[Categories]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Messages_RecieverId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_Messages_RecieverId] ON [dbo].[Messages]
(
	[RecieverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Messages_SenderId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_Messages_SenderId] ON [dbo].[Messages]
(
	[SenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_ProductId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductId] ON [dbo].[OrderItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_AppUserId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_AppUserId] ON [dbo].[Orders]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductColorSizes_ColorId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_ProductColorSizes_ColorId] ON [dbo].[ProductColorSizes]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductColorSizes_ProductId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_ProductColorSizes_ProductId] ON [dbo].[ProductColorSizes]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductColorSizes_SizeId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_ProductColorSizes_SizeId] ON [dbo].[ProductColorSizes]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductTags_ProductId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_ProductTags_ProductId] ON [dbo].[ProductTags]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductTags_TagId]    Script Date: 19.07.2022 11:32:48 ******/
CREATE NONCLUSTERED INDEX [IX_ProductTags_TagId] ON [dbo].[ProductTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Brands] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Brands] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsUpdated]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsUpdated]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [OrderStatus]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [BrandId]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsBestSeller]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsFeature]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsNewArrivel]
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
ALTER TABLE [dbo].[Baskets]  WITH CHECK ADD  CONSTRAINT [FK_Baskets_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Baskets] CHECK CONSTRAINT [FK_Baskets_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[Baskets]  WITH CHECK ADD  CONSTRAINT [FK_Baskets_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Baskets] CHECK CONSTRAINT [FK_Baskets_Products_ProductId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories_ParentId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_AspNetUsers_RecieverId] FOREIGN KEY([RecieverId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_AspNetUsers_RecieverId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_AspNetUsers_SenderId] FOREIGN KEY([SenderId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_AspNetUsers_SenderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[ProductColorSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductColorSizes_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductColorSizes] CHECK CONSTRAINT [FK_ProductColorSizes_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductColorSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductColorSizes_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductColorSizes] CHECK CONSTRAINT [FK_ProductColorSizes_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductColorSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductColorSizes_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductColorSizes] CHECK CONSTRAINT [FK_ProductColorSizes_Sizes_SizeId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Tags_TagId]
GO
USE [master]
GO
ALTER DATABASE [P129AllupDb] SET  READ_WRITE 
GO
