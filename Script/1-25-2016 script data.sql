USE [TerendCmsDB]
GO
/****** Object:  Table [dbo].[AacOrderTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AacOrderTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Tel] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[ProductName] [nvarchar](max) NULL,
	[Description] [ntext] NULL,
	[View] [bit] NOT NULL,
	[OrderDate] [date] NULL,
 CONSTRAINT [PK_dbo.AacOrderTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AdminMessageTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminMessageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[SendKind] [nvarchar](max) NULL,
	[Header] [ntext] NULL,
	[Body] [ntext] NULL,
	[Footer] [ntext] NULL,
	[FileName] [nvarchar](max) NULL,
	[UserGroupIDs] [ntext] NULL,
	[Ip] [nvarchar](50) NULL,
	[SendDate] [datetime] NULL,
	[UserID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AdvertiseTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertiseTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdsKind] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[AltText] [nvarchar](max) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Visibility] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AgentTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[Activity] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Tel] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Visibility] [bit] NULL,
	[LanguageID] [bigint] NULL,
	[Priority] [bigint] NULL,
	[UserID] [bigint] NULL,
 CONSTRAINT [PK_dbo.AgentTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AlbumPicTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlbumPicTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[AlternativeText] [nvarchar](max) NULL,
	[AlbumID] [bigint] NULL,
 CONSTRAINT [PK_dbo.AlbumPicTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AlbumTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlbumTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [ntext] NULL,
	[LanguageID] [bigint] NULL,
	[Priority] [bigint] NULL,
	[Visibility] [bit] NULL,
	[UserID] [bigint] NULL,
 CONSTRAINT [PK_dbo.AlbumTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BackupTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BackupTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[UserID] [bigint] NULL,
	[Path] [nvarchar](max) NULL,
	[Description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BankAccountTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccountTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[BankName] [nvarchar](max) NULL,
	[CardNumber] [nvarchar](50) NULL,
	[AccountNumber] [nvarchar](50) NULL,
	[Sheba] [nvarchar](50) NULL,
	[UserID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[OpenLink] [nvarchar](max) NULL,
	[CustomerTalk] [ntext] NULL,
	[Description] [ntext] NULL,
	[LanguageID] [bigint] NULL,
	[Priority] [bigint] NULL,
	[Visibility] [bit] NULL,
 CONSTRAINT [PK_dbo.CustomerTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ErrorTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Detail] [ntext] NULL,
	[Date] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ErrorTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactorDetailTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactorDetailTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FactorID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[UnitPrice] [bigint] NULL,
	[Discount] [bigint] NULL,
	[Count] [bigint] NULL,
	[Prices] [bigint] NULL,
 CONSTRAINT [PK_dbo.FactorDetailTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactorStatusTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactorStatusTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.FactorStatusTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactorTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactorTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FactorNumber] [nvarchar](max) NULL,
	[WebUserID] [bigint] NULL,
	[SellDate] [datetime] NULL,
	[RefCode] [nvarchar](max) NULL,
	[FactorContent] [ntext] NULL,
	[AdditionalInfo] [ntext] NULL,
	[Price] [bigint] NULL,
	[StatusID] [int] NULL,
	[PaymentType] [nvarchar](max) NULL,
	[UserID] [bigint] NULL,
	[RequestKey] [nvarchar](max) NULL,
	[AppStatusCode] [int] NULL,
	[Settlement] [bit] NULL,
 CONSTRAINT [PK_dbo.FactorTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FAQTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupID] [bigint] NULL,
	[Question] [ntext] NULL,
	[Answer] [ntext] NULL,
	[Visibility] [bit] NULL,
	[Priority] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GrandeeProductCommentTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrandeeProductCommentTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Body] [ntext] NULL,
	[WrittenDate] [datetime] NULL,
	[Confirm] [bit] NULL,
	[UserID] [bigint] NULL,
	[Ip] [nvarchar](50) NULL,
	[ProductID] [bigint] NULL,
 CONSTRAINT [PK_dbo.GrandeeProductCommentTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GrandeeProductImageTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrandeeProductImageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[ProductID] [bigint] NULL,
	[AlternativeText] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.GrandeeProductImageTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GrandeeProductTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrandeeProductTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[Price] [bigint] NULL,
	[Description] [ntext] NULL,
	[Availability] [bit] NULL,
	[RegDate] [date] NULL,
	[Rate] [float] NULL,
	[View] [bigint] NULL,
	[Sell] [bigint] NULL,
	[GroupID] [bigint] NULL,
	[LanguageID] [bigint] NULL,
	[Visibility] [bit] NULL,
 CONSTRAINT [PK_dbo.GrandeeProductTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GrandeeProductViewTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrandeeProductViewTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Ip] [nvarchar](max) NULL,
	[Rate] [tinyint] NULL,
	[ProductID] [bigint] NULL,
 CONSTRAINT [PK_dbo.GrandeeProductViewTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kho-AdvertiseTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho-AdvertiseTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Serial] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Body] [ntext] NULL,
	[Image] [nvarchar](max) NULL,
	[Row] [int] NULL,
	[Column] [int] NULL,
	[PageID] [bigint] NULL,
	[Repeat] [int] NULL,
	[StartDate] [date] NULL,
	[ColorNumber] [int] NULL,
	[RepeatKind] [nvarchar](max) NULL,
	[CustomerID] [bigint] NULL,
	[Price] [bigint] NULL,
	[TotalPrice] [bigint] NULL,
	[PercentDiscount] [tinyint] NULL,
	[Discount] [bigint] NULL,
	[DesignPrice] [bigint] NULL,
	[Sum] [bigint] NULL,
	[Pay1] [bigint] NULL,
	[Pay2] [bigint] NULL,
	[Finished] [bit] NULL,
	[RegDate] [datetime] NULL,
	[CustomerName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kho-BoxTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho-BoxTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Row] [int] NULL,
	[Column] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kho-HolidaysTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho-HolidaysTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[day] [date] NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kho-PageTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho-PageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PageNumber] [int] NULL,
	[Row] [int] NULL,
	[Column] [int] NULL,
	[SubField] [nvarchar](max) NULL,
	[Visibility] [bit] NULL,
	[BoxPrice] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhoPrintDateTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoPrintDateTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AdvertiseID] [bigint] NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LanguageTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[OpenLink] [nvarchar](50) NULL,
	[Visibility] [bit] NULL,
	[Code] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LanguageTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[OpenLink] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Visibility] [bit] NOT NULL,
	[LanguageID] [bigint] NULL,
	[Priority] [bigint] NULL,
 CONSTRAINT [PK_dbo.LinkTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserID] [bigint] NULL,
	[Date] [datetime] NULL,
	[Operation] [nvarchar](50) NULL,
	[Details] [ntext] NULL,
	[Ip] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuGroupTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuGroupTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Visibility] [bit] NULL,
	[LanguageID] [bigint] NULL,
 CONSTRAINT [PK_dbo.MenuGroupTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Parent] [bigint] NULL,
	[Link] [nvarchar](max) NULL,
	[OpenLink] [nvarchar](max) NULL,
	[Priority] [bigint] NULL,
	[Visibility] [bit] NOT NULL,
	[LanguageID] [bigint] NULL,
	[MenuGroupID] [bigint] NULL,
 CONSTRAINT [PK_dbo.MenuTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MessageTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Body] [ntext] NULL,
	[SendDate] [datetime] NULL,
	[UserIp] [nvarchar](50) NULL,
	[UserID] [bigint] NULL,
	[UserGroupID] [bigint] NULL,
	[UnitID] [int] NULL,
 CONSTRAINT [PK_dbo.MessageTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ModuleTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[MenuContent] [ntext] NULL,
	[MenuScript] [ntext] NULL,
 CONSTRAINT [PK_dbo.ModuleTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MultiLevelPercentTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MultiLevelPercentTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Percent] [tinyint] NULL,
	[LevelNumber] [int] NULL,
	[Visibility] [bit] NULL,
	[GroupID1] [bigint] NULL,
	[GroupID2] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewsCommentTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCommentTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Body] [ntext] NULL,
	[WrittenDate] [datetime] NULL,
	[Confirm] [bit] NULL,
	[UserID] [bigint] NULL,
	[PositiveLike] [int] NULL,
	[NegativeLike] [int] NULL,
	[Ip] [nvarchar](50) NULL,
	[NewsID] [bigint] NULL,
 CONSTRAINT [PK_dbo.NewsCommentTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewsGroupTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsGroupTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[LanguageID] [bigint] NULL,
	[Priority] [bigint] NULL,
	[Visibility] [bit] NULL,
 CONSTRAINT [PK_dbo.NewsGroupTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewsTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoTitr] [nvarchar](max) NULL,
	[Titr] [nvarchar](max) NULL,
	[ZirTitr] [nvarchar](max) NULL,
	[Body] [ntext] NULL,
	[Image] [nvarchar](max) NULL,
	[Keywords] [ntext] NULL,
	[NewsGroupID] [bigint] NULL,
	[PublishStatus] [tinyint] NULL,
	[ShowInSlide] [bit] NULL,
	[Special] [bit] NULL,
	[Comment] [bit] NULL,
	[Rate] [bit] NULL,
	[PublishDate] [date] NULL,
	[PublishTime] [time](7) NULL,
	[UserID] [bigint] NULL,
	[LanguageID] [bigint] NULL,
	[NumberOfView] [bigint] NULL,
 CONSTRAINT [PK_dbo.NewsTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OurServiceTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OurServiceTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [ntext] NULL,
	[Visibility] [bit] NULL,
	[Priority] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PackageTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [bigint] NULL,
	[Discount] [bigint] NULL,
	[Percent] [tinyint] NULL,
	[Expire] [tinyint] NULL,
	[Description] [ntext] NULL,
	[Visibility] [bit] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[GroupIDs] [ntext] NULL,
 CONSTRAINT [PK_dbo.PackageTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Body] [ntext] NULL,
	[Keywords] [ntext] NULL,
	[Image] [nvarchar](max) NULL,
	[Template] [nvarchar](max) NULL,
	[Css] [nvarchar](max) NULL,
	[Js] [nvarchar](max) NULL,
	[Visibility] [bit] NOT NULL,
	[LanguageID] [bigint] NULL,
 CONSTRAINT [PK_dbo.PageTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NULL,
	[GroupID] [bigint] NULL,
	[ModuleID] [int] NOT NULL,
	[Show] [bit] NOT NULL,
	[Insert] [bit] NOT NULL,
	[Update] [bit] NOT NULL,
	[Delete] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.PermissionTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlacePicTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlacePicTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Alt] [nvarchar](max) NULL,
	[PlaceID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlaceTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[GroupID1] [bigint] NULL,
	[Logo] [nvarchar](max) NULL,
	[Banner] [nvarchar](max) NULL,
	[Owner] [nvarchar](max) NULL,
	[Description] [ntext] NULL,
	[Tel] [nvarchar](max) NULL,
	[Fax] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Facilities] [ntext] NULL,
	[Services] [ntext] NULL,
	[WorkTime] [ntext] NULL,
	[RegDate] [datetime] NULL,
	[UserIp] [nvarchar](50) NULL,
	[UserID] [bigint] NULL,
	[WebUserID] [bigint] NULL,
	[NumberOfView] [bigint] NULL,
	[Rate] [tinyint] NULL,
	[Verify] [bit] NULL,
	[Visibility] [bit] NULL,
	[PackageID] [tinyint] NULL,
	[GroupID2] [bigint] NULL,
	[CityID] [bigint] NULL,
 CONSTRAINT [PK_dbo.PlaceTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCommentTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCommentTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Body] [ntext] NULL,
	[WrittenDate] [datetime] NULL,
	[Confirm] [bit] NULL,
	[UserID] [bigint] NULL,
	[Ip] [nvarchar](50) NULL,
	[ProductID] [bigint] NULL,
 CONSTRAINT [PK_dbo.ProductCommentTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductGroupTable1]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGroupTable1](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[OpenLink] [nvarchar](max) NULL,
	[Priority] [bigint] NULL,
	[Visibility] [bit] NOT NULL,
	[LanguageID] [bigint] NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProductGroupTable1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductGroupTable2]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGroupTable2](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Parent] [bigint] NULL,
	[Link] [nvarchar](max) NULL,
	[OpenLink] [nvarchar](max) NULL,
	[Priority] [bigint] NULL,
	[Visibility] [bit] NOT NULL,
	[LanguageID] [bigint] NULL,
	[GroupID1] [bigint] NULL,
 CONSTRAINT [PK_dbo.ProductGroupTable2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductImageTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[ProductID] [bigint] NULL,
	[AlternativeText] [nvarchar](max) NULL,
	[Visibility] [bit] NULL,
 CONSTRAINT [PK_dbo.ProductImageTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Special] [bit] NULL,
	[GroupID] [bigint] NULL,
	[Description] [ntext] NULL,
	[InBasket] [bit] NULL,
	[PriceKind] [int] NULL,
	[Price] [bigint] NULL,
	[Discount] [bigint] NULL,
	[Priority] [bigint] NULL,
	[Availability] [bit] NULL,
	[Visibility] [bit] NULL,
	[LanguageID] [bigint] NULL,
	[Details] [ntext] NULL,
	[RegDate] [datetime] NULL,
	[View] [bigint] NULL,
	[Rate] [float] NULL,
	[EditDate] [datetime] NULL,
	[UserID] [bigint] NULL,
	[Code] [nvarchar](max) NULL,
	[TagName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductViewTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductViewTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Ip] [nvarchar](max) NULL,
	[Rate] [tinyint] NULL,
	[ProductID] [bigint] NULL,
 CONSTRAINT [PK_dbo.ProductViewTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegionTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegionTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Parent] [bigint] NULL,
	[Position] [nvarchar](max) NULL,
	[Priority] [bigint] NULL,
	[Visibility] [bit] NULL,
	[LanguageID] [bigint] NULL,
 CONSTRAINT [PK_dbo.RegionTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SettlementTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SettlementTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Request] [bigint] NULL,
	[RequestDate] [datetime] NULL,
	[Pay] [bigint] NULL,
	[PayDate] [datetime] NULL,
	[RefCode] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UserID] [bigint] NULL,
	[Description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShowWebUserFieldTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShowWebUserFieldTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupID] [bigint] NOT NULL,
	[Name] [bit] NOT NULL,
	[Family] [bit] NOT NULL,
	[Father] [bit] NOT NULL,
	[CodeMeli] [bit] NOT NULL,
	[ShomareSh] [bit] NOT NULL,
	[BirthhDay] [bit] NOT NULL,
	[Tel] [bit] NOT NULL,
	[Mobile] [bit] NOT NULL,
	[Email] [bit] NOT NULL,
	[Address] [bit] NOT NULL,
	[ZipCode] [bit] NOT NULL,
	[TelOwnerName] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteVisitTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteVisitTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[View] [bigint] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_dbo.SiteVisitTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SlideTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlideTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[AlternativeText] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[OpenLink] [nvarchar](50) NULL,
	[ShowTime] [tinyint] NULL,
	[Priority] [bigint] NULL,
	[LanguageID] [bigint] NULL,
	[Visibility] [bit] NOT NULL,
	[Title1] [nvarchar](max) NULL,
	[Title2] [nvarchar](max) NULL,
	[Title3] [nvarchar](max) NULL,
	[UserID] [bigint] NULL,
 CONSTRAINT [PK_dbo.SlideTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SmsTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Receptor] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[GroupID] [bigint] NULL,
	[SendDate] [datetime] NULL,
	[SenderLine] [nvarchar](max) NULL,
	[UserID] [bigint] NULL,
	[MessageType] [int] NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StoreSettingTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreSettingTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailForBuy] [bit] NULL,
	[SmsForBuy] [bit] NULL,
	[OnlineBuy] [bit] NULL,
	[CashOnDelivery] [bit] NULL,
	[CardToCard] [bit] NULL,
	[PayAccount] [bit] NULL,
	[ChargeAccount] [bit] NULL,
	[PayWithoutRegister] [bit] NULL,
	[Tax] [bit] NULL,
	[TaxPercent] [tinyint] NULL,
	[Delivery] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TagTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TameshkProductTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TameshkProductTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Description] [ntext] NULL,
	[AppStoreLink] [nvarchar](max) NULL,
	[SibcheLink] [nvarchar](max) NULL,
	[Visible] [bit] NULL,
	[Sort] [tinyint] NULL,
	[Radius] [tinyint] NULL,
 CONSTRAINT [PK_dbo.TameshkProductTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [ntext] NULL,
	[Visibility] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccountTypeTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccountTypeTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [ntext] NULL,
	[QuestionCount] [int] NULL,
	[Discount] [tinyint] NULL,
	[IsExpert] [bit] NULL,
	[Visibility] [bit] NULL,
	[Ip] [nvarchar](50) NULL,
	[RegDate] [datetime] NULL,
	[UserID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserGroupAccessTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroupAccessTable](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[GroupID] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.UserGroupAccessTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserGroupTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroupTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Visibility] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.UserGroupTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPercentTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPercentTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupID1] [bigint] NULL,
	[GroupID2] [bigint] NULL,
	[UserID] [bigint] NULL,
	[Percent] [tinyint] NULL,
	[UserGroupID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Family] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Tel] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Birthday] [datetime] NULL,
	[Gender] [bit] NULL,
	[ZipCode] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Twitter] [nvarchar](max) NULL,
	[Facebook] [nvarchar](max) NULL,
	[GooglePlus] [nvarchar](max) NULL,
	[Github] [nvarchar](max) NULL,
	[Linkedin] [nvarchar](max) NULL,
	[Skype] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[LoginDate] [datetime] NULL,
	[LogoutDate] [datetime] NULL,
	[RegDate] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
	[IsDelete] [bit] NULL,
	[Ip] [nvarchar](50) NULL,
	[EmailConfirmed] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[MobileConfirmed] [bit] NULL,
	[ChangePassRequestCode] [nvarchar](max) NULL,
	[ChangePassRequestDate] [datetime] NULL,
	[ParentID] [bigint] NULL,
	[CardNumber] [nvarchar](max) NULL,
	[AccountNumber] [nvarchar](max) NULL,
	[EmployeeID] [bigint] NULL,
	[RegUserID] [bigint] NULL,
 CONSTRAINT [PK_dbo.UserTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VisitorTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitorTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Ip] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[BrowserName] [nvarchar](max) NULL,
	[BrowserVersion] [nvarchar](max) NULL,
	[Platform] [nvarchar](max) NULL,
	[ScreenSize] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.VisitorTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WalletTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WalletTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Input] [bigint] NULL,
	[Output] [bigint] NULL,
	[InputWay] [nvarchar](max) NULL,
	[OutputWay] [nvarchar](max) NULL,
	[OccurDate] [datetime] NULL,
	[Balance] [bigint] NULL,
	[UserID] [bigint] NULL,
	[FactorID] [bigint] NULL,
	[ProductID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WarehouseProductTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseProductTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[WarehouseID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[Count] [int] NULL,
	[UnitPrice] [bigint] NULL,
	[Prices] [bigint] NULL,
	[ProductionDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WarehouseTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebsiteSettingTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebsiteSettingTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[Address3] [nvarchar](max) NULL,
	[Tel1] [nvarchar](max) NULL,
	[Tel2] [nvarchar](max) NULL,
	[Tel3] [nvarchar](max) NULL,
	[Mobile1] [nvarchar](max) NULL,
	[Mobile2] [nvarchar](max) NULL,
	[Mobile3] [nvarchar](max) NULL,
	[Email1] [nvarchar](max) NULL,
	[Email2] [nvarchar](max) NULL,
	[Email3] [nvarchar](max) NULL,
	[Facebook] [nvarchar](max) NULL,
	[Twitter] [nvarchar](max) NULL,
	[GooglePlus] [nvarchar](max) NULL,
	[Instagram] [nvarchar](max) NULL,
	[Linkedin] [nvarchar](max) NULL,
	[Github] [nvarchar](max) NULL,
	[Skype] [nvarchar](max) NULL,
	[Viber] [nvarchar](max) NULL,
	[HeaderImage1] [nvarchar](max) NULL,
	[HeaderImage2] [nvarchar](max) NULL,
	[Logo1] [nvarchar](max) NULL,
	[Logo2] [nvarchar](max) NULL,
	[FooterImage1] [nvarchar](max) NULL,
	[FooterImage2] [nvarchar](max) NULL,
	[HeaderTitle] [nvarchar](max) NULL,
	[FooterDescription] [nvarchar](max) NULL,
	[CopyRightText] [nvarchar](max) NULL,
	[CopyRightYear] [nvarchar](max) NULL,
	[TameshkSibcheStatus] [bit] NULL,
	[LanguageID] [bigint] NULL,
 CONSTRAINT [PK_dbo.WebsiteSettingTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebUserTable]    Script Date: 1/25/2016 9:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebUserTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Family] [nvarchar](max) NULL,
	[Father] [nvarchar](max) NULL,
	[CodeMeli] [nvarchar](max) NULL,
	[ShomareSh] [nvarchar](max) NULL,
	[BirthhDay] [nvarchar](max) NULL,
	[Tel] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[TelOwnerName] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Ip] [nvarchar](max) NULL,
	[RegDate] [datetime] NULL,
	[VerifyEmail] [bit] NULL,
	[VerifyMobile] [bit] NULL,
	[VerifyCode] [nvarchar](max) NULL,
	[VerifyExpire] [tinyint] NULL,
 CONSTRAINT [PK_dbo.WebUserTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AgentTable] ON 

INSERT [dbo].[AgentTable] ([Id], [Name], [Company], [Code], [Activity], [Address], [Tel], [Mobile], [Image], [Visibility], [LanguageID], [Priority], [UserID]) VALUES (16, N'رضا حسینی معصوم', N'1', N'1', N'1', N'', N'', N'', N'', 1, 18, 16, NULL)
INSERT [dbo].[AgentTable] ([Id], [Name], [Company], [Code], [Activity], [Address], [Tel], [Mobile], [Image], [Visibility], [LanguageID], [Priority], [UserID]) VALUES (17, N'علی قائمی', N'1', N'2', N'', N'', N'', N'', N'', 1, 18, 17, NULL)
INSERT [dbo].[AgentTable] ([Id], [Name], [Company], [Code], [Activity], [Address], [Tel], [Mobile], [Image], [Visibility], [LanguageID], [Priority], [UserID]) VALUES (18, N'1', N'1', N'', N'', N'', N'', N'', N'a497aec3-3832-4468-9b98-bb8ac8b8aea5photo_2015-11-02_17-35-17.jpg', 0, 18, 18, NULL)
INSERT [dbo].[AgentTable] ([Id], [Name], [Company], [Code], [Activity], [Address], [Tel], [Mobile], [Image], [Visibility], [LanguageID], [Priority], [UserID]) VALUES (19, N'1', N'1', N'1', N'1', N'1', N'1', N'', N'45e90bec-1488-4043-969a-3687b0f9f54aphoto_2015-11-12_10-20-42.jpg', 1, 18, 19, NULL)
SET IDENTITY_INSERT [dbo].[AgentTable] OFF
SET IDENTITY_INSERT [dbo].[ErrorTable] ON 

INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10401, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 229', N'1394/09/08 - 19:05:15', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10402, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Queue`1 userQueue, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 228', N'1394/09/08 - 19:11:37', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10403, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Queue`1 userQueue, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 232', N'1394/09/08 - 19:13:45', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10404, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Queue`1 userQueue, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 232', N'1394/09/08 - 19:16:46', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10405, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Queue`1 userQueue, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 232', N'1394/09/08 - 19:17:13', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10406, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Queue`1 userQueue, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 232', N'1394/09/08 - 19:17:13', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10407, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Queue`1 userQueue, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 232', N'1394/09/08 - 19:17:13', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10408, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Queue`1 userQueue, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 232', N'1394/09/08 - 19:17:13', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10409, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Queue`1 userQueue, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 232', N'1394/09/08 - 19:17:13', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (10410, N'Queue empty.', N'   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Queue`1.Dequeue()
   at UserPercentClass.ShowChildrenTree(List`1 idList, Queue`1 userQueue, Int64 parentId) in e:\Terend Group\Projects\CMS\App_Code\UserPercentClass.cs:line 232', N'1394/09/08 - 19:17:13', NULL)
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (20401, N'The null value cannot be assigned to a member with type System.Int64 which is a non-nullable value type.', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Sum[TSource](IQueryable`1 source, Expression`1 selector)
   at KhoAdvertiseClass.ReportMoney(DateTime beginDate, DateTime endDate, Int64 agentId, Int64 pageId) in e:\Terend Group\Projects\CMS\App_Code\KhoAdvertiseClass.cs:line 304', N'1394/09/10 - 09:53:56', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (20402, N'The null value cannot be assigned to a member with type System.Int64 which is a non-nullable value type.', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Sum[TSource](IQueryable`1 source, Expression`1 selector)
   at KhoAdvertiseClass.ReportMoney(DateTime beginDate, DateTime endDate, Int64 agentId, Int64 pageId) in e:\Terend Group\Projects\CMS\App_Code\KhoAdvertiseClass.cs:line 304', N'1394/09/10 - 09:53:56', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (20403, N'The null value cannot be assigned to a member with type System.Int64 which is a non-nullable value type.', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Sum[TSource](IQueryable`1 source, Expression`1 selector)
   at KhoAdvertiseClass.ReportMoney(DateTime beginDate, DateTime endDate, Int64 agentId, Int64 pageId) in e:\Terend Group\Projects\CMS\App_Code\KhoAdvertiseClass.cs:line 304', N'1394/09/10 - 09:53:56', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (20404, N'The null value cannot be assigned to a member with type System.Int64 which is a non-nullable value type.', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Sum[TSource](IQueryable`1 source, Expression`1 selector)
   at KhoAdvertiseClass.ReportMoney(DateTime beginDate, DateTime endDate, Int64 agentId, Int64 pageId) in e:\Terend Group\Projects\CMS\App_Code\KhoAdvertiseClass.cs:line 304', N'1394/09/10 - 09:53:56', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30401, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.ReturnUrl(Int64 id) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 148', N'1394/09/10 - 19:04:07', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30402, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.Update(OurServiceEntity ourSerEntity) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 46', N'1394/09/10 - 19:04:07', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30403, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.SetVisibility(Int64 id, Boolean visibility) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 168', N'1394/09/10 - 19:14:28', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30404, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.SetVisibility(Int64 id, Boolean visibility) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 168', N'1394/09/10 - 19:14:28', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30405, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.SetVisibility(Int64 id, Boolean visibility) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 168', N'1394/09/10 - 19:14:28', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30406, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.SetVisibility(Int64 id, Boolean visibility) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 168', N'1394/09/10 - 19:14:28', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30407, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.ReturnUrl(Int64 id) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 148', N'1394/09/10 - 19:19:11', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30408, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.Update(OurServiceEntity ourSerEntity) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 46', N'1394/09/10 - 19:19:11', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30409, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.ReturnUrl(Int64 id) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 148', N'1394/09/10 - 19:20:39', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30410, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.Update(OurServiceEntity ourSerEntity) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 47', N'1394/09/10 - 19:20:39', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30411, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.ReturnUrl(Int64 id) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 148', N'1394/09/10 - 19:21:18', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30412, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at OurServiceClass.Update(OurServiceEntity ourSerEntity) in e:\Terend Group\Projects\CMS\App_Code\OurServiceClass.cs:line 47', N'1394/09/10 - 19:21:18', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30413, N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_ShowWebUserFieldTable_ProductGroupTable1". The conflict occurred in database "TerendCmsDB", table "dbo.ProductGroupTable1", column ''Id''.
The statement has been terminated.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.DynamicInsert(TrackedObject item)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.Insert(TrackedObject item)
   at System.Data.Linq.ChangeProcessor.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges()
   at ShowWebUserFieldClass.Insert(ShowWebUserFieldEntity showWebUserFieldEntity) in e:\Terend Group\Projects\CMS\App_Code\ShowWebUserFieldClass.cs:line 32', N'1394/09/10 - 20:03:26', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30414, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at ShowWebUserFieldClass.Update(ShowWebUserFieldEntity showWebUserFieldEntity) in e:\Terend Group\Projects\CMS\App_Code\ShowWebUserFieldClass.cs:line 49', N'1394/09/10 - 20:15:48', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30415, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at ShowWebUserFieldClass.Update(ShowWebUserFieldEntity showWebUserFieldEntity) in e:\Terend Group\Projects\CMS\App_Code\ShowWebUserFieldClass.cs:line 49', N'1394/09/10 - 20:15:48', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30416, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at ShowWebUserFieldClass.Update(ShowWebUserFieldEntity showWebUserFieldEntity) in e:\Terend Group\Projects\CMS\App_Code\ShowWebUserFieldClass.cs:line 49', N'1394/09/10 - 20:15:48', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (30417, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at ProductClass.Update(ProductEntity productEntity) in e:\Terend Group\Projects\CMS\App_Code\ProductClass.cs:line 191', N'1394/09/12 - 11:14:40', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (40401, N'The null value cannot be assigned to a member with type System.Int64 which is a non-nullable value type.', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Sum[TSource](IQueryable`1 source, Expression`1 selector)
   at KhoAdvertiseClass.ReportMoney(DateTime beginDate, DateTime endDate, Int64 agentId, Int64 pageId) in e:\Terend Group\Projects\CMS\App_Code\KhoAdvertiseClass.cs:line 298', N'1394/09/23 - 18:54:31', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (40402, N'The null value cannot be assigned to a member with type System.Int64 which is a non-nullable value type.', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Sum[TSource](IQueryable`1 source, Expression`1 selector)
   at KhoAdvertiseClass.ReportMoney(DateTime beginDate, DateTime endDate, Int64 agentId, Int64 pageId) in e:\Terend Group\Projects\CMS\App_Code\KhoAdvertiseClass.cs:line 298', N'1394/09/23 - 18:54:31', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50401, N'Parameter @EditDate has no default value.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 75', N'1394/09/26 - 11:33:20', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50402, N'Parameter @EditDate has no default value.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 75', N'1394/09/26 - 11:40:02', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50403, N'Parameter @EditDate has no default value.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 75', N'1394/09/26 - 11:40:02', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50404, N'Deleting data in a linked table is not supported by this ISAM.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 45', N'1394/09/26 - 11:49:18', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50405, N'Deleting data in a linked table is not supported by this ISAM.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 45', N'1394/09/26 - 11:49:18', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50406, N'Deleting data in a linked table is not supported by this ISAM.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 45', N'1394/09/26 - 11:49:18', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50407, N'Deleting data in a linked table is not supported by this ISAM.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 45', N'1394/09/26 - 11:49:18', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50408, N'Syntax error in DROP TABLE or DROP INDEX.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 45', N'1394/09/26 - 11:55:31', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50409, N'The INSERT INTO statement contains the following unknown field name: ''Id''. Make sure you have typed the name correctly, and try the operation again.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 83', N'1394/09/26 - 11:57:57', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50410, N'Syntax error in DROP TABLE or DROP INDEX.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 46', N'1394/09/26 - 11:58:47', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50411, N'The process cannot access the file ''E:\Terend Group\Projects\CMS\FileManagement\files\ProductTable.xlsx'' because it is being used by another process.', N'   at System.IO.__Error.WinIOError(Int32 errorCode, String maybeFullPath)
   at System.IO.File.InternalDelete(String path, Boolean checkHost)
   at System.IO.File.Delete(String path)
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 43', N'1394/09/26 - 12:02:03', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50412, N'The process cannot access the file ''E:\Terend Group\Projects\CMS\FileManagement\files\ProductTable.xlsx'' because it is being used by another process.', N'   at System.IO.__Error.WinIOError(Int32 errorCode, String maybeFullPath)
   at System.IO.File.InternalDelete(String path, Boolean checkHost)
   at System.IO.File.Delete(String path)
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 43', N'1394/09/26 - 12:02:03', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50413, N'The process cannot access the file ''E:\Terend Group\Projects\CMS\FileManagement\files\ProductTable.xlsx'' because it is being used by another process.', N'   at System.IO.__Error.WinIOError(Int32 errorCode, String maybeFullPath)
   at System.IO.FileStream.Init(String path, FileMode mode, FileAccess access, Int32 rights, Boolean useRights, FileShare share, Int32 bufferSize, FileOptions options, SECURITY_ATTRIBUTES secAttrs, String msgPath, Boolean bFromProxy, Boolean useLongPath, Boolean checkHost)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share)
   at System.IO.File.Open(String path, FileMode mode)
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 41', N'1394/09/26 - 12:06:48', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50414, N'Data type mismatch in criteria expression.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 76', N'1394/09/26 - 12:08:44', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50415, N'Data type mismatch in criteria expression.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 76', N'1394/09/26 - 12:08:44', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50416, N'Data type mismatch in criteria expression.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 76', N'1394/09/26 - 12:08:44', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50417, N'Data type mismatch in criteria expression.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 76', N'1394/09/26 - 12:08:44', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50418, N'Data type mismatch in criteria expression.', N'   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextErrorHandling(OleDbHResult hr)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandTextForSingleResult(tagDBPARAMS dbParams, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommandText(Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteCommand(CommandBehavior behavior, Object& executeResult)
   at System.Data.OleDb.OleDbCommand.ExecuteReaderInternal(CommandBehavior behavior, String method)
   at System.Data.OleDb.OleDbCommand.ExecuteNonQuery()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 76', N'1394/09/26 - 12:08:44', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50419, N'String was not recognized as a valid Boolean.', N'   at System.Boolean.Parse(String value)
   at System.Convert.ToBoolean(String value)
   at ProductWs.ImportFromExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 152', N'1394/09/26 - 12:44:36', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50420, N'String was not recognized as a valid Boolean.', N'   at System.Boolean.Parse(String value)
   at System.Convert.ToBoolean(String value)
   at ProductWs.ImportFromExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 152', N'1394/09/26 - 12:44:36', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50421, N'String was not recognized as a valid Boolean.', N'   at System.Boolean.Parse(String value)
   at System.Convert.ToBoolean(String value)
   at ProductWs.ImportFromExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 152', N'1394/09/26 - 12:44:36', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50422, N'String was not recognized as a valid Boolean.', N'   at System.Boolean.Parse(String value)
   at System.String.System.IConvertible.ToBoolean(IFormatProvider provider)
   at System.Convert.ToBoolean(Object value)
   at ProductWs.ImportFromExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 152', N'1394/09/26 - 12:47:22', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50423, N'Object cannot be cast from DBNull to other types.', N'   at System.DBNull.System.IConvertible.ToInt64(IFormatProvider provider)
   at System.Convert.ToInt64(Object value)
   at ProductWs.ImportFromExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 163', N'1394/09/26 - 12:50:16', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50424, N'Object cannot be cast from DBNull to other types.', N'   at System.DBNull.System.IConvertible.ToInt64(IFormatProvider provider)
   at System.Convert.ToInt64(Object value)
   at ProductWs.ImportFromExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 163', N'1394/09/26 - 12:50:16', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50425, N'Could not find installable ISAM.', N'   at System.Data.OleDb.OleDbConnectionInternal..ctor(OleDbConnectionString constr, OleDbConnection connection)
   at System.Data.OleDb.OleDbConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningObject)
   at System.Data.ProviderBase.DbConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionFactory.CreateNonPooledConnection(DbConnection owningConnection, DbConnectionPoolGroup poolGroup, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionInternal.OpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory)
   at System.Data.OleDb.OleDbConnection.Open()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 66', N'1394/09/28 - 19:44:47', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50426, N'Could not find installable ISAM.', N'   at System.Data.OleDb.OleDbConnectionInternal..ctor(OleDbConnectionString constr, OleDbConnection connection)
   at System.Data.OleDb.OleDbConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningObject)
   at System.Data.ProviderBase.DbConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionFactory.CreateNonPooledConnection(DbConnection owningConnection, DbConnectionPoolGroup poolGroup, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionInternal.OpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory)
   at System.Data.OleDb.OleDbConnection.Open()
   at ProductWs.ExportToExcel() in e:\Terend Group\Projects\CMS\App_Code\ProductWs.cs:line 66', N'1394/09/28 - 19:44:47', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50427, N'The query operator ''LastOrDefault'' is not supported.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.LastOrDefault[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 90', N'1394/09/29 - 11:41:39', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50428, N'The query operator ''LastOrDefault'' is not supported.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.LastOrDefault[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 90', N'1394/09/29 - 11:41:39', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50429, N'The query operator ''LastOrDefault'' is not supported.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.LastOrDefault[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 90', N'1394/09/29 - 11:44:32', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50430, N'The query operator ''LastOrDefault'' is not supported.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.LastOrDefault[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 90', N'1394/09/29 - 11:44:32', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50431, N'The query operator ''LastOrDefault'' is not supported.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.LastOrDefault[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 90', N'1394/09/29 - 11:44:32', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50432, N'The query operator ''LastOrDefault'' is not supported.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.LastOrDefault[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 90', N'1394/09/29 - 11:50:36', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50433, N'The query operator ''LastOrDefault'' is not supported.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.LastOrDefault[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 90', N'1394/09/29 - 11:50:36', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50434, N'The query operator ''Last'' is not supported.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Last[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 90', N'1394/09/29 - 11:52:24', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50435, N'Object reference not set to an instance of an object.', N'   at UserPercentWs.SettlementDone() in e:\Terend Group\Projects\CMS\App_Code\UserPercentWs.cs:line 29', N'1394/09/30 - 10:52:12', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50436, N'Object reference not set to an instance of an object.', N'   at UserPercentWs.SettlementDone() in e:\Terend Group\Projects\CMS\App_Code\UserPercentWs.cs:line 29', N'1394/09/30 - 10:52:12', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50437, N'Object reference not set to an instance of an object.', N'   at UserPercentWs.SettlementDone() in e:\Terend Group\Projects\CMS\App_Code\UserPercentWs.cs:line 29', N'1394/09/30 - 10:52:12', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50438, N'Object reference not set to an instance of an object.', N'   at UserPercentWs.SettlementDone() in e:\Terend Group\Projects\CMS\App_Code\UserPercentWs.cs:line 29', N'1394/09/30 - 10:52:12', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50439, N'Object reference not set to an instance of an object.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitInvocation(InvocationExpression invoke)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitExpression(Expression exp)
   at System.Data.Linq.SqlClient.QueryConverter.VisitBinary(BinaryExpression b)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitExpression(Expression exp)
   at System.Data.Linq.SqlClient.QueryConverter.VisitWhere(Expression sequence, LambdaExpression predicate)
   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitFirst(Expression sequence, LambdaExpression lambda, Boolean isFirst)
   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.FirstOrDefault[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 91', N'1394/09/30 - 11:33:27', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50440, N'Object reference not set to an instance of an object.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitInvocation(InvocationExpression invoke)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitExpression(Expression exp)
   at System.Data.Linq.SqlClient.QueryConverter.VisitBinary(BinaryExpression b)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitExpression(Expression exp)
   at System.Data.Linq.SqlClient.QueryConverter.VisitWhere(Expression sequence, LambdaExpression predicate)
   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitFirst(Expression sequence, LambdaExpression lambda, Boolean isFirst)
   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.FirstOrDefault[TSource](IQueryable`1 source)
   at WalletWs.InsertInput(WalletEntity walletEntity) in e:\Terend Group\Projects\CMS\App_Code\WalletWs.cs:line 91', N'1394/09/30 - 11:33:27', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50441, N'The INSERT statement conflicted with the FOREIGN KEY constraint "ModuleTable_PermissionTable". The conflict occurred in database "TerendCmsDB", table "dbo.ModuleTable", column ''Id''.
The statement has been terminated.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.DynamicInsert(TrackedObject item)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.Insert(TrackedObject item)
   at System.Data.Linq.ChangeProcessor.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges()
   at PermissionWs.Insert(Int32 moduleId, Int64 userId, Int64 groupId, Boolean insert, Boolean update, Boolean delete, Boolean show, Boolean selected) in e:\Terend Group\Projects\CMS\App_Code\PermissionWs.cs:line 74', N'1394/09/30 - 11:38:12', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50442, N'Sequence contains more than one element', N'   at System.Linq.Enumerable.SingleOrDefault[TSource](IEnumerable`1 source)
   at Read_<>f__AnonymousType3b`9(ObjectMaterializer`1 )
   at System.Data.Linq.SqlClient.ObjectReaderCompiler.ObjectReader`2.MoveNext()
   at UserPercentWs.SettlementDone() in e:\Terend Group\Projects\CMS\App_Code\UserPercentWs.cs:line 65', N'1394/09/30 - 11:38:12', N'2')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50443, N'Sequence contains more than one element', N'   at System.Linq.Enumerable.SingleOrDefault[TSource](IEnumerable`1 source)
   at Read_<>f__AnonymousType3b`9(ObjectMaterializer`1 )
   at System.Data.Linq.SqlClient.ObjectReaderCompiler.ObjectReader`2.MoveNext()
   at UserPercentWs.SettlementDone() in e:\Terend Group\Projects\CMS\App_Code\UserPercentWs.cs:line 65', N'1394/09/30 - 11:38:12', N'2')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50444, N'Sequence contains more than one element', N'   at System.Linq.Enumerable.SingleOrDefault[TSource](IEnumerable`1 source)
   at Read_<>f__AnonymousType3b`9(ObjectMaterializer`1 )
   at System.Data.Linq.SqlClient.ObjectReaderCompiler.ObjectReader`2.MoveNext()
   at UserPercentWs.SettlementDone() in e:\Terend Group\Projects\CMS\App_Code\UserPercentWs.cs:line 65', N'1394/09/30 - 11:38:12', N'2')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (50445, N'Object reference not set to an instance of an object.', N'   at System.Data.Linq.SqlClient.QueryConverter.VisitInvocation(InvocationExpression invoke)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitExpression(Expression exp)
   at System.Data.Linq.SqlClient.QueryConverter.VisitBinary(BinaryExpression b)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitExpression(Expression exp)
   at System.Data.Linq.SqlClient.QueryConverter.VisitBinary(BinaryExpression b)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitExpression(Expression exp)
   at System.Data.Linq.SqlClient.QueryConverter.VisitWhere(Expression sequence, LambdaExpression predicate)
   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.VisitFirst(Expression sequence, LambdaExpression lambda, Boolean isFirst)
   at System.Data.Linq.SqlClient.QueryConverter.VisitSequenceOperatorCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.FirstOrDefault[TSource](IQueryable`1 source)
   at UserPercentWs.ReportChildrenPercent() in e:\Terend Group\Projects\CMS\App_Code\UserPercentWs.cs:line 137', N'1394/09/30 - 13:08:53', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (60401, N'The null value cannot be assigned to a member with type System.DateTime which is a non-nullable value type.', N'   at Read_<>f__AnonymousType9c`24(ObjectMaterializer`1 )
   at System.Data.Linq.SqlClient.ObjectReaderCompiler.ObjectReader`2.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at Newtonsoft.Json.Serialization.JsonArrayContract.CreateWrapper(Object list)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.SerializeValue(JsonWriter writer, Object value, JsonContract valueContract, JsonProperty member, JsonContract collectionValueContract)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.Serialize(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonSerializer.SerializeInternal(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonConvert.SerializeObject(Object value, Formatting formatting, JsonSerializerSettings settings)
   at UserWs.BindRecordToEdit(Int64 id) in e:\Terend Group\Projects\CMS\App_Code\UserWs.cs:line 416', N'1394/10/03 - 19:17:27', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (60402, N'The null value cannot be assigned to a member with type System.DateTime which is a non-nullable value type.', N'   at Read_<>f__AnonymousType9c`24(ObjectMaterializer`1 )
   at System.Data.Linq.SqlClient.ObjectReaderCompiler.ObjectReader`2.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at Newtonsoft.Json.Serialization.JsonArrayContract.CreateWrapper(Object list)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.SerializeValue(JsonWriter writer, Object value, JsonContract valueContract, JsonProperty member, JsonContract collectionValueContract)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.Serialize(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonSerializer.SerializeInternal(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonConvert.SerializeObject(Object value, Formatting formatting, JsonSerializerSettings settings)
   at UserWs.BindRecordToEdit(Int64 id) in e:\Terend Group\Projects\CMS\App_Code\UserWs.cs:line 416', N'1394/10/03 - 19:17:27', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (60403, N'The null value cannot be assigned to a member with type System.DateTime which is a non-nullable value type.', N'   at Read_<>f__AnonymousType9c`24(ObjectMaterializer`1 )
   at System.Data.Linq.SqlClient.ObjectReaderCompiler.ObjectReader`2.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at Newtonsoft.Json.Serialization.JsonArrayContract.CreateWrapper(Object list)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.SerializeValue(JsonWriter writer, Object value, JsonContract valueContract, JsonProperty member, JsonContract collectionValueContract)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.Serialize(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonSerializer.SerializeInternal(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonConvert.SerializeObject(Object value, Formatting formatting, JsonSerializerSettings settings)
   at UserWs.BindRecordToEdit(Int64 id) in e:\Terend Group\Projects\CMS\App_Code\UserWs.cs:line 416', N'1394/10/03 - 19:17:27', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (60404, N'The null value cannot be assigned to a member with type System.DateTime which is a non-nullable value type.', N'   at Read_<>f__AnonymousType9c`24(ObjectMaterializer`1 )
   at System.Data.Linq.SqlClient.ObjectReaderCompiler.ObjectReader`2.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at Newtonsoft.Json.Serialization.JsonArrayContract.CreateWrapper(Object list)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.SerializeValue(JsonWriter writer, Object value, JsonContract valueContract, JsonProperty member, JsonContract collectionValueContract)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.Serialize(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonSerializer.SerializeInternal(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonConvert.SerializeObject(Object value, Formatting formatting, JsonSerializerSettings settings)
   at UserWs.BindRecordToEdit(Int64 id) in e:\Terend Group\Projects\CMS\App_Code\UserWs.cs:line 416', N'1394/10/03 - 19:17:27', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (60405, N'The null value cannot be assigned to a member with type System.DateTime which is a non-nullable value type.', N'   at Read_<>f__AnonymousType9c`24(ObjectMaterializer`1 )
   at System.Data.Linq.SqlClient.ObjectReaderCompiler.ObjectReader`2.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at Newtonsoft.Json.Serialization.JsonArrayContract.CreateWrapper(Object list)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.SerializeValue(JsonWriter writer, Object value, JsonContract valueContract, JsonProperty member, JsonContract collectionValueContract)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.Serialize(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonSerializer.SerializeInternal(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonConvert.SerializeObject(Object value, Formatting formatting, JsonSerializerSettings settings)
   at UserWs.BindRecordToEdit(Int64 id) in e:\Terend Group\Projects\CMS\App_Code\UserWs.cs:line 416', N'1394/10/03 - 19:17:27', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (70401, N'The INSERT statement conflicted with the FOREIGN KEY constraint "ModuleTable_PermissionTable". The conflict occurred in database "TerendCmsDB", table "dbo.ModuleTable", column ''Id''.
The statement has been terminated.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.DynamicInsert(TrackedObject item)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.Insert(TrackedObject item)
   at System.Data.Linq.ChangeProcessor.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges()
   at PermissionWs.Insert(Int32 moduleId, Int64 userId, Int64 groupId, Boolean insert, Boolean update, Boolean delete, Boolean show, Boolean selected) in e:\Terend Group\Projects\CMS\App_Code\PermissionWs.cs:line 74', N'1394/10/12 - 18:56:04', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (70402, N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'   at System.Data.SqlClient.TdsParser.TdsExecuteRPC(SqlCommand cmd, _SqlRPC[] rpcArray, Int32 timeout, Boolean inSchema, SqlNotificationRequest notificationRequest, TdsParserStateObject stateObj, Boolean isCommandProc, Boolean sync, TaskCompletionSource`1 completion, Int32 startRpc, Int32 startParam)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.DynamicUpdate(TrackedObject item)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.Update(TrackedObject item)
   at System.Data.Linq.ChangeProcessor.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges()
   at FactorClass.Update(FactorEntity factorEntity) in e:\Terend Group\Projects\CMS\App_Code\FactorClass.cs:line 102', N'1394/10/13 - 20:01:24', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (70403, N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'   at System.Data.SqlClient.TdsParser.TdsExecuteRPC(SqlCommand cmd, _SqlRPC[] rpcArray, Int32 timeout, Boolean inSchema, SqlNotificationRequest notificationRequest, TdsParserStateObject stateObj, Boolean isCommandProc, Boolean sync, TaskCompletionSource`1 completion, Int32 startRpc, Int32 startParam)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.DynamicUpdate(TrackedObject item)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.Update(TrackedObject item)
   at System.Data.Linq.ChangeProcessor.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges()
   at FactorClass.Update(FactorEntity factorEntity) in e:\Terend Group\Projects\CMS\App_Code\FactorClass.cs:line 102', N'1394/10/13 - 20:01:24', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (70404, N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'   at System.Data.SqlClient.TdsParser.TdsExecuteRPC(SqlCommand cmd, _SqlRPC[] rpcArray, Int32 timeout, Boolean inSchema, SqlNotificationRequest notificationRequest, TdsParserStateObject stateObj, Boolean isCommandProc, Boolean sync, TaskCompletionSource`1 completion, Int32 startRpc, Int32 startParam)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.DynamicUpdate(TrackedObject item)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.Update(TrackedObject item)
   at System.Data.Linq.ChangeProcessor.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges()
   at FactorClass.Update(FactorEntity factorEntity) in e:\Terend Group\Projects\CMS\App_Code\FactorClass.cs:line 102', N'1394/10/13 - 20:01:24', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (80401, N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'   at System.Data.SqlClient.TdsParser.TdsExecuteRPC(SqlCommand cmd, _SqlRPC[] rpcArray, Int32 timeout, Boolean inSchema, SqlNotificationRequest notificationRequest, TdsParserStateObject stateObj, Boolean isCommandProc, Boolean sync, TaskCompletionSource`1 completion, Int32 startRpc, Int32 startParam)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.ExecuteReader()
   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.DynamicInsert(TrackedObject item)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.Insert(TrackedObject item)
   at System.Data.Linq.ChangeProcessor.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges()
   at SettlementClass.Insert(SettlementEntity settlementEntity) in e:\Terend Group\Projects\CMS\App_Code\SettlementClass.cs:line 30', N'1394/10/23 - 19:26:43', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (80402, N'The null value cannot be assigned to a member with type System.DateTime which is a non-nullable value type.', N'   at Read_<>f__AnonymousType2`9(ObjectMaterializer`1 )
   at System.Data.Linq.SqlClient.ObjectReaderCompiler.ObjectReader`2.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at Newtonsoft.Json.Serialization.JsonArrayContract.CreateWrapper(Object list)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.SerializeValue(JsonWriter writer, Object value, JsonContract valueContract, JsonProperty member, JsonContract collectionValueContract)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalWriter.Serialize(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonSerializer.SerializeInternal(JsonWriter jsonWriter, Object value)
   at Newtonsoft.Json.JsonConvert.SerializeObject(Object value, Formatting formatting, JsonSerializerSettings settings)
   at SettlementWs.SelectOneUser() in e:\Terend Group\Projects\CMS\App_Code\SettlementWs.cs:line 37', N'1394/10/23 - 20:28:36', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (80403, N'SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM.', N'   at System.Data.SqlClient.TdsParser.TdsExecuteRPC(SqlCommand cmd, _SqlRPC[] rpcArray, Int32 timeout, Boolean inSchema, SqlNotificationRequest notificationRequest, TdsParserStateObject stateObj, Boolean isCommandProc, Boolean sync, TaskCompletionSource`1 completion, Int32 startRpc, Int32 startParam)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.DynamicUpdate(TrackedObject item)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.Update(TrackedObject item)
   at System.Data.Linq.ChangeProcessor.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges()
   at SettlementClass.Update(SettlementEntity settlementEntity) in e:\Terend Group\Projects\CMS\App_Code\SettlementClass.cs:line 56', N'1394/10/23 - 20:39:15', N'1')
INSERT [dbo].[ErrorTable] ([Id], [Title], [Detail], [Date], [Username]) VALUES (90401, N'The primary key column of type ''TinyInt'' cannot be generated by the server. ', N'   at System.Data.Linq.SqlClient.QueryConverter.GetIdentityExpression(MetaDataMember id, Boolean isOutputFromInsert)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInsert(Expression item, LambdaExpression resultSelector)
   at System.Data.Linq.SqlClient.QueryConverter.VisitDataManipulationCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitMethodCall(MethodCallExpression mc)
   at System.Data.Linq.SqlClient.QueryConverter.VisitInner(Expression node)
   at System.Data.Linq.SqlClient.QueryConverter.ConvertOuter(Expression node)
   at System.Data.Linq.SqlClient.SqlProvider.BuildQuery(Expression query, SqlNodeAnnotations annotations)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.DynamicInsert(TrackedObject item)
   at System.Data.Linq.ChangeDirector.StandardChangeDirector.Insert(TrackedObject item)
   at System.Data.Linq.ChangeProcessor.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges(ConflictMode failureMode)
   at System.Data.Linq.DataContext.SubmitChanges()
   at StoreSettingClass.Insert(StoreSettingEntity storeSettingEntity) in e:\Terend Group\Projects\CMS\App_Code\StoreSettingClass.cs:line 31', N'1394/10/29 - 21:52:03', N'1')
SET IDENTITY_INSERT [dbo].[ErrorTable] OFF
SET IDENTITY_INSERT [dbo].[FactorDetailTable] ON 

INSERT [dbo].[FactorDetailTable] ([Id], [FactorID], [ProductID], [UnitPrice], [Discount], [Count], [Prices]) VALUES (1, 1, 10009, 540000, 0, 1, 540000)
INSERT [dbo].[FactorDetailTable] ([Id], [FactorID], [ProductID], [UnitPrice], [Discount], [Count], [Prices]) VALUES (2, 1, 10012, 120000, 0, 2, 240000)
INSERT [dbo].[FactorDetailTable] ([Id], [FactorID], [ProductID], [UnitPrice], [Discount], [Count], [Prices]) VALUES (10002, 2, 10013, 87000, 0, 2, 174000)
INSERT [dbo].[FactorDetailTable] ([Id], [FactorID], [ProductID], [UnitPrice], [Discount], [Count], [Prices]) VALUES (10003, 2, 10015, 652100, 0, 1, 652100)
INSERT [dbo].[FactorDetailTable] ([Id], [FactorID], [ProductID], [UnitPrice], [Discount], [Count], [Prices]) VALUES (10004, 3, 10014, 450000, 0, 3, 135000)
SET IDENTITY_INSERT [dbo].[FactorDetailTable] OFF
SET IDENTITY_INSERT [dbo].[FactorStatusTable] ON 

INSERT [dbo].[FactorStatusTable] ([Id], [Name]) VALUES (15, N'1')
INSERT [dbo].[FactorStatusTable] ([Id], [Name]) VALUES (16, N'2')
INSERT [dbo].[FactorStatusTable] ([Id], [Name]) VALUES (17, N'3')
SET IDENTITY_INSERT [dbo].[FactorStatusTable] OFF
SET IDENTITY_INSERT [dbo].[FactorTable] ON 

INSERT [dbo].[FactorTable] ([Id], [FactorNumber], [WebUserID], [SellDate], [RefCode], [FactorContent], [AdditionalInfo], [Price], [StatusID], [PaymentType], [UserID], [RequestKey], [AppStatusCode], [Settlement]) VALUES (1, N'1', NULL, CAST(0x0000A55B00000000 AS DateTime), N'1', N'<div id="ContentPlaceHolder1_DivFktrContnt" class="DivFktrContnt">
                        <div style="width: 100%;" name="Factor">

                            <table width="100%" cellpadding="5" align="center" style="border-top: #ed1b2f 5px solid; border-bottom: #3c3c3c 5px solid;">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table width="98%" align="center" cellspacing="0" cellpadding="3" border="0" dir="rtl" style="padding: 15px;">
                                                <tbody>
                                                    <tr>
                                                        <td align="right" rowspan="2" style="width: 30%;">
                                                            <img src="../images/ariafaranet.jpg" id="logo" style="width: 100px;" />
                                                        </td>
                                                        <td align="center" style="font-size: 24px; vertical-align: middle; font-weight: bold; width: 40%;">فاکتور کالا و خدمات
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table width="98%" align="center" cellspacing="0" cellpadding="0" border="0" dir="rtl" style="font-size: 13px;">
                                                <tbody>
                                                    <tr>
                                                        <td style="width: 790px; vertical-align: top; text-align: right;">
                                                            <div style="border: 1px solid #3c3c3c; margin-left: 8px;">

                                                                <table width=''100%'' align=''center'' cellspacing=''0'' cellpadding=''0'' border=''0'' dir=''rtl'' style=''height: 99px;''>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td rowspan=''3'' class=''yiv1143262123buyer'' style=''width: 34px; vertical-align: middle;''>
                                                                                <img src=''../images/buyer.png'' id=''buyer''>
                                                                            </td>
                                                                            <td style=''width: 340px; padding-right: 10px;''>
                                                                                <span style=''font-weight: bold;''>خريدار : </span>xxx xxx</td></tr><tr><td colspan=''4'' style=''padding-right: 10px;''><span style=''font-weight: bold;''>نشاني : </span>11</td></tr><tr><td style=''min-width: 240px; padding-right: 10px;''><span style=''font-weight: bold;''>شماره تلفن : </span>11</td><td colspan=''3''><span style=''font-weight: bold;''>شماره همراه : </span>11</td></tr></tbody></table>
                                                            </div>
                                                        </td>
                                                        <td style=''width: 192px; vertical-align: top; text-align: right;''>
                                                            <div style=''border: 1px solid #3c3c3c;''>
                                                                <table width=''100%'' align=''center'' cellspacing=''0'' cellpadding=''0'' dir=''rtl'' style=''height: 99px;''>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td style=''font-size: 11px; height: 25px; padding: 0 15px; font-weight: bold;''>تاريخ : </td>
                                                                            <td>1394/10/08</tr><tr><td style=''font-size: 11px; height: 25px; padding: 0 15px; font-weight: bold;''>ساعت : </td><td>11:13 PM</tr><tr><td style=''font-size: 11px; height: 25px; padding: 0 15px; font-weight: bold;''>شماره سفارش : </td><td></tr></tbody></table></div></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br />
                                            <table width="98%" align="center" cellspacing="0" cellpadding="0" dir="rtl" style="font-family: Tahoma; font-size: 12px; text-align: center; border: 1px solid #3c3c3c;">
                                                <tbody>
                                                    <tr style="background-color: #f0f0f0;">
                                                        <td style="border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;">رديف</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;">شرح کالا</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;">توضيحات</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;">مقدار</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;">مبلغ واحد (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;">مبلغ کل (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;">ماليات بر ارزش افزوده (%)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;">جمع مبلغ کل (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;">میزان تخفيف (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;">مبلغ قابل پرداخت (ريال)</td>
                                                    </tr>
                                                    <tr style=''background-color: #f0f0f0;''>+
                                        <td style=''border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;''></td>
                                        <td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 280px;''>12ماهه 22گیگ</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 100px;''>1تا8 صبح رایگان
</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;''>1</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>3471000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>3471000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;''>9 (%)</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;''>3783390</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;''>3783390</td></tr><tr style=''background-color: #f0f0f0;''>+
                                        <td style=''border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;''></td>
                                        <td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 280px;''>modem wimax</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 100px;''>&nbsp;</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;''>1</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>1500000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>1500000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;''>1500000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;''>1500000</td></tr><tr style=''background-color: #f0f0f0;''>+
                                        <td style=''border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;''></td>
                                        <td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 280px;''>مودم 4 پورت وایرلس netis</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 100px;''>&nbsp;</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;''>1</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>670000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>670000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;''>670000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;''>100000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;''>570000</td></tr>

                                                    <tr style=''background-color: #f0f0f0;''><td colspan=''5'' style=''border-top: 1px solid #3c3c3c; text-align: right; padding-right: 5px; height: 30px;''>اطلاعات نماینده :admin admin<td colspan=''4'' style=''font-weight: bold; font-size: 11px; border-right: 1px solid #3c3c3c; border-top: 1px solid #3c3c3c;''>جمع مبلغ کل (ريال)</td><td style=''border-right: 1px solid #3c3c3c; border-top: 1px solid #3c3c3c;''>5853390</tr>
                                                </tbody>
                                            </table>

                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>', NULL, 780000, 16, N'done', 1, NULL, NULL, 1)
INSERT [dbo].[FactorTable] ([Id], [FactorNumber], [WebUserID], [SellDate], [RefCode], [FactorContent], [AdditionalInfo], [Price], [StatusID], [PaymentType], [UserID], [RequestKey], [AppStatusCode], [Settlement]) VALUES (2, N'2', NULL, CAST(0x0000A55B00000000 AS DateTime), N'1', N'<div id="ContentPlaceHolder1_DivFktrContnt" class="DivFktrContnt">
                        <div style="width: 100%;" name="Factor">

                            <table width="100%" cellpadding="5" align="center" style="border-top: #ed1b2f 5px solid; border-bottom: #3c3c3c 5px solid;">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table width="98%" align="center" cellspacing="0" cellpadding="3" border="0" dir="rtl" style="padding: 15px;">
                                                <tbody>
                                                    <tr>
                                                        <td align="right" rowspan="2" style="width: 30%;">
                                                            <img src="../images/ariafaranet.jpg" id="logo" style="width: 100px;" />
                                                        </td>
                                                        <td align="center" style="font-size: 24px; vertical-align: middle; font-weight: bold; width: 40%;">فاکتور کالا و خدمات
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table width="98%" align="center" cellspacing="0" cellpadding="0" border="0" dir="rtl" style="font-size: 13px;">
                                                <tbody>
                                                    <tr>
                                                        <td style="width: 790px; vertical-align: top; text-align: right;">
                                                            <div style="border: 1px solid #3c3c3c; margin-left: 8px;">

                                                                <table width=''100%'' align=''center'' cellspacing=''0'' cellpadding=''0'' border=''0'' dir=''rtl'' style=''height: 99px;''>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td rowspan=''3'' class=''yiv1143262123buyer'' style=''width: 34px; vertical-align: middle;''>
                                                                                <img src=''../images/buyer.png'' id=''buyer''>
                                                                            </td>
                                                                            <td style=''width: 340px; padding-right: 10px;''>
                                                                                <span style=''font-weight: bold;''>خريدار : </span>xxx xxx</td></tr><tr><td colspan=''4'' style=''padding-right: 10px;''><span style=''font-weight: bold;''>نشاني : </span>11</td></tr><tr><td style=''min-width: 240px; padding-right: 10px;''><span style=''font-weight: bold;''>شماره تلفن : </span>11</td><td colspan=''3''><span style=''font-weight: bold;''>شماره همراه : </span>11</td></tr></tbody></table>
                                                            </div>
                                                        </td>
                                                        <td style=''width: 192px; vertical-align: top; text-align: right;''>
                                                            <div style=''border: 1px solid #3c3c3c;''>
                                                                <table width=''100%'' align=''center'' cellspacing=''0'' cellpadding=''0'' dir=''rtl'' style=''height: 99px;''>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td style=''font-size: 11px; height: 25px; padding: 0 15px; font-weight: bold;''>تاريخ : </td>
                                                                            <td>1394/10/08</tr><tr><td style=''font-size: 11px; height: 25px; padding: 0 15px; font-weight: bold;''>ساعت : </td><td>11:13 PM</tr><tr><td style=''font-size: 11px; height: 25px; padding: 0 15px; font-weight: bold;''>شماره سفارش : </td><td></tr></tbody></table></div></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br />
                                            <table width="98%" align="center" cellspacing="0" cellpadding="0" dir="rtl" style="font-family: Tahoma; font-size: 12px; text-align: center; border: 1px solid #3c3c3c;">
                                                <tbody>
                                                    <tr style="background-color: #f0f0f0;">
                                                        <td style="border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;">رديف</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;">شرح کالا</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;">توضيحات</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;">مقدار</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;">مبلغ واحد (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;">مبلغ کل (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;">ماليات بر ارزش افزوده (%)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;">جمع مبلغ کل (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;">میزان تخفيف (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;">مبلغ قابل پرداخت (ريال)</td>
                                                    </tr>
                                                    <tr style=''background-color: #f0f0f0;''>+
                                        <td style=''border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;''></td>
                                        <td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 280px;''>12ماهه 22گیگ</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 100px;''>1تا8 صبح رایگان
</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;''>1</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>3471000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>3471000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;''>9 (%)</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;''>3783390</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;''>3783390</td></tr><tr style=''background-color: #f0f0f0;''>+
                                        <td style=''border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;''></td>
                                        <td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 280px;''>modem wimax</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 100px;''>&nbsp;</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;''>1</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>1500000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>1500000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;''>1500000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;''>1500000</td></tr><tr style=''background-color: #f0f0f0;''>+
                                        <td style=''border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;''></td>
                                        <td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 280px;''>مودم 4 پورت وایرلس netis</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 100px;''>&nbsp;</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;''>1</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>670000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>670000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;''>670000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;''>100000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;''>570000</td></tr>

                                                    <tr style=''background-color: #f0f0f0;''><td colspan=''5'' style=''border-top: 1px solid #3c3c3c; text-align: right; padding-right: 5px; height: 30px;''>اطلاعات نماینده :admin admin<td colspan=''4'' style=''font-weight: bold; font-size: 11px; border-right: 1px solid #3c3c3c; border-top: 1px solid #3c3c3c;''>جمع مبلغ کل (ريال)</td><td style=''border-right: 1px solid #3c3c3c; border-top: 1px solid #3c3c3c;''>5853390</tr>
                                                </tbody>
                                            </table>

                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>', NULL, 450000, 15, NULL, 12435, NULL, NULL, 1)
INSERT [dbo].[FactorTable] ([Id], [FactorNumber], [WebUserID], [SellDate], [RefCode], [FactorContent], [AdditionalInfo], [Price], [StatusID], [PaymentType], [UserID], [RequestKey], [AppStatusCode], [Settlement]) VALUES (3, N'3', NULL, CAST(0x0000A55B00000000 AS DateTime), N'1', N'<div id="ContentPlaceHolder1_DivFktrContnt" class="DivFktrContnt">
                        <div style="width: 100%;" name="Factor">

                            <table width="100%" cellpadding="5" align="center" style="border-top: #ed1b2f 5px solid; border-bottom: #3c3c3c 5px solid;">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table width="98%" align="center" cellspacing="0" cellpadding="3" border="0" dir="rtl" style="padding: 15px;">
                                                <tbody>
                                                    <tr>
                                                        <td align="right" rowspan="2" style="width: 30%;">
                                                            <img src="../images/ariafaranet.jpg" id="logo" style="width: 100px;" />
                                                        </td>
                                                        <td align="center" style="font-size: 24px; vertical-align: middle; font-weight: bold; width: 40%;">فاکتور کالا و خدمات
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table width="98%" align="center" cellspacing="0" cellpadding="0" border="0" dir="rtl" style="font-size: 13px;">
                                                <tbody>
                                                    <tr>
                                                        <td style="width: 790px; vertical-align: top; text-align: right;">
                                                            <div style="border: 1px solid #3c3c3c; margin-left: 8px;">

                                                                <table width=''100%'' align=''center'' cellspacing=''0'' cellpadding=''0'' border=''0'' dir=''rtl'' style=''height: 99px;''>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td rowspan=''3'' class=''yiv1143262123buyer'' style=''width: 34px; vertical-align: middle;''>
                                                                                <img src=''../images/buyer.png'' id=''buyer''>
                                                                            </td>
                                                                            <td style=''width: 340px; padding-right: 10px;''>
                                                                                <span style=''font-weight: bold;''>خريدار : </span>xxx xxx</td></tr><tr><td colspan=''4'' style=''padding-right: 10px;''><span style=''font-weight: bold;''>نشاني : </span>11</td></tr><tr><td style=''min-width: 240px; padding-right: 10px;''><span style=''font-weight: bold;''>شماره تلفن : </span>11</td><td colspan=''3''><span style=''font-weight: bold;''>شماره همراه : </span>11</td></tr></tbody></table>
                                                            </div>
                                                        </td>
                                                        <td style=''width: 192px; vertical-align: top; text-align: right;''>
                                                            <div style=''border: 1px solid #3c3c3c;''>
                                                                <table width=''100%'' align=''center'' cellspacing=''0'' cellpadding=''0'' dir=''rtl'' style=''height: 99px;''>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td style=''font-size: 11px; height: 25px; padding: 0 15px; font-weight: bold;''>تاريخ : </td>
                                                                            <td>1394/10/08</tr><tr><td style=''font-size: 11px; height: 25px; padding: 0 15px; font-weight: bold;''>ساعت : </td><td>11:13 PM</tr><tr><td style=''font-size: 11px; height: 25px; padding: 0 15px; font-weight: bold;''>شماره سفارش : </td><td></tr></tbody></table></div></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br />
                                            <table width="98%" align="center" cellspacing="0" cellpadding="0" dir="rtl" style="font-family: Tahoma; font-size: 12px; text-align: center; border: 1px solid #3c3c3c;">
                                                <tbody>
                                                    <tr style="background-color: #f0f0f0;">
                                                        <td style="border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;">رديف</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;">شرح کالا</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;">توضيحات</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;">مقدار</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;">مبلغ واحد (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;">مبلغ کل (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;">ماليات بر ارزش افزوده (%)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;">جمع مبلغ کل (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;">میزان تخفيف (ريال)</td>
                                                        <td style="border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;">مبلغ قابل پرداخت (ريال)</td>
                                                    </tr>
                                                    <tr style=''background-color: #f0f0f0;''>+
                                        <td style=''border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;''></td>
                                        <td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 280px;''>12ماهه 22گیگ</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 100px;''>1تا8 صبح رایگان
</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;''>1</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>3471000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>3471000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;''>9 (%)</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;''>3783390</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;''>3783390</td></tr><tr style=''background-color: #f0f0f0;''>+
                                        <td style=''border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;''></td>
                                        <td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 280px;''>modem wimax</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 100px;''>&nbsp;</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;''>1</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>1500000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>1500000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;''>1500000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;''>1500000</td></tr><tr style=''background-color: #f0f0f0;''>+
                                        <td style=''border-bottom: 1px solid #3c3c3c; padding: 5px 0; width: 30px;''></td>
                                        <td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 280px;''>مودم 4 پورت وایرلس netis</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 100px;''>&nbsp;</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 35px;''>1</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>670000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 60px;''>670000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 50px;''>0</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 80px;''>670000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 85px; color: green;''>100000</td><td style=''border-right: 1px solid #3c3c3c; padding: 5px 0; border-bottom: 1px solid #3c3c3c; width: 150px;''>570000</td></tr>

                                                    <tr style=''background-color: #f0f0f0;''><td colspan=''5'' style=''border-top: 1px solid #3c3c3c; text-align: right; padding-right: 5px; height: 30px;''>اطلاعات نماینده :admin admin<td colspan=''4'' style=''font-weight: bold; font-size: 11px; border-right: 1px solid #3c3c3c; border-top: 1px solid #3c3c3c;''>جمع مبلغ کل (ريال)</td><td style=''border-right: 1px solid #3c3c3c; border-top: 1px solid #3c3c3c;''>5853390</tr>
                                                </tbody>
                                            </table>

                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>', NULL, 650000, 17, N'', 12444, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[FactorTable] OFF
SET IDENTITY_INSERT [dbo].[FAQTable] ON 

INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (3, 0, N'شسی', N'شسی', 1, 3)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (4, 0, N'1', N'1', 1, 4)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (5, 0, N'2', N'2', 1, 5)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (6, 0, N'asd', N'asd', 1, 6)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (7, 0, N'asd', N'sadasd', 1, 7)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (8, 0, N'asd', N'asd', 1, 8)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (9, 0, N'asd', N'asd', 1, 9)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (10, 0, N'asd', N'as', 1, 10)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (11, 0, N'asd', N'as', 1, 11)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (12, 0, N'asd', N'asd', 1, 12)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (13, 0, N'asd', N'asd', 1, 13)
INSERT [dbo].[FAQTable] ([Id], [GroupID], [Question], [Answer], [Visibility], [Priority]) VALUES (14, 0, N'asd', N'sad', 1, 14)
SET IDENTITY_INSERT [dbo].[FAQTable] OFF
SET IDENTITY_INSERT [dbo].[GrandeeProductImageTable] ON 

INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (39, N'4c2937c7-1b70-47f4-89cf-af976665a9832195_417.jpg', 13, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (40, N'9d970694-5995-4d18-961c-6d6979b2fddf2195_417.jpg', 13, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (41, N'3fb6116a-3f61-4878-b78f-7b3d19c35ee3nann.jpg', 14, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (42, N'20520f29-5a5a-4639-bf1a-584aaf28f538farhangnews_101898-290897-1416313018.jpg', 15, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (43, N'660a21c3-d416-4353-ad31-1bdeb116873dfarhangnews_122372-345027-1429181967.jpg', 16, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (44, N'1190b844-c5f6-4fc7-83b7-0fdfe35d0ad5ayatmadari.ir-sangak-1.png', 17, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (45, N'253a7b1c-ff29-4283-afa6-51c6f7af7cfeWhite-Bread.jpg', 18, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (46, N'55a29fae-bd37-4021-a3aa-9fc0b6392b99asdgg3.jpg', 20, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (47, N'fedfc794-2b4f-4020-8b98-e3f4aedecbf9nan (1).jpg', 21, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (48, N'e0b18254-ab60-4b08-bd18-d924e0dfd310url.jpgfgewfdsvf.jpg', 22, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (49, N'f4b0e5a1-7ab0-4179-b359-76b02045894efgdfchgvjhv.jpg', 23, NULL)
INSERT [dbo].[GrandeeProductImageTable] ([Id], [Image], [ProductID], [AlternativeText]) VALUES (50, N'50e595fd-d55f-4dad-93d8-7e185ca0fcfcWhite-Bread.jpg', 24, NULL)
SET IDENTITY_INSERT [dbo].[GrandeeProductImageTable] OFF
SET IDENTITY_INSERT [dbo].[GrandeeProductTable] ON 

INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (13, N'سنگک', N'001', 12000, N'', 1, CAST(0x863A0B00 AS Date), 5, 4, 0, 2, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (14, N'نان بربری', N'002', 4000, N'', 1, CAST(0x863A0B00 AS Date), 4, 0, 0, 2, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (15, N'نان لواش', N'003', 6000, N'', 1, CAST(0x863A0B00 AS Date), 3, 0, 0, 2, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (16, N'نان فانتزی 01', N'004', 4500, N'', 1, CAST(0x863A0B00 AS Date), 3, 4, 0, 10, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (17, N'نان سنگک 02', N'006', 8500, N'', 1, CAST(0x863A0B00 AS Date), 4, 1, 0, 2, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (18, N'نان تست', N'007', 6500, N'', 1, CAST(0x863A0B00 AS Date), 2, 1, 0, 10, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (20, N'نان بربری', N'009', 6500, N'', 0, CAST(0x873A0B00 AS Date), 1, 0, 0, 2, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (21, N'نان تافتون', N'011', 3200, N'', 0, CAST(0x873A0B00 AS Date), 3, 0, 0, 2, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (22, N'نان فانتزی', N'321', 1200, N'', 0, CAST(0x873A0B00 AS Date), 4, 1, 0, 2, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (23, N'نان جو', N'112', 9000, N'', 0, CAST(0x873A0B00 AS Date), 4.5, 1, 0, 2, 18, 1)
INSERT [dbo].[GrandeeProductTable] ([Id], [Name], [Code], [Price], [Description], [Availability], [RegDate], [Rate], [View], [Sell], [GroupID], [LanguageID], [Visibility]) VALUES (24, N'نان باگت', N'411', 5600, N'', 0, CAST(0x873A0B00 AS Date), 3.6, 0, 0, 2, 18, 1)
SET IDENTITY_INSERT [dbo].[GrandeeProductTable] OFF
SET IDENTITY_INSERT [dbo].[GrandeeProductViewTable] ON 

INSERT [dbo].[GrandeeProductViewTable] ([Id], [Ip], [Rate], [ProductID]) VALUES (1, N'::1', 5, 13)
SET IDENTITY_INSERT [dbo].[GrandeeProductViewTable] OFF
SET IDENTITY_INSERT [dbo].[Kho-AdvertiseTable] ON 

INSERT [dbo].[Kho-AdvertiseTable] ([Id], [Serial], [Title], [Body], [Image], [Row], [Column], [PageID], [Repeat], [StartDate], [ColorNumber], [RepeatKind], [CustomerID], [Price], [TotalPrice], [PercentDiscount], [Discount], [DesignPrice], [Sum], [Pay1], [Pay2], [Finished], [RegDate], [CustomerName]) VALUES (30042, N'9487282', N'1', N'1', N'', 1, 2, 3, 4, CAST(0xF53A0B00 AS Date), 0, N'0', 18, 120000, 480000, 20, 96000, 0, 384000, 42000, 342000, 0, CAST(0x0000A59800000000 AS DateTime), N'علی احمدی')
SET IDENTITY_INSERT [dbo].[Kho-AdvertiseTable] OFF
SET IDENTITY_INSERT [dbo].[Kho-BoxTable] ON 

INSERT [dbo].[Kho-BoxTable] ([Id], [Row], [Column]) VALUES (8, 1, 2)
INSERT [dbo].[Kho-BoxTable] ([Id], [Row], [Column]) VALUES (9, 2, 2)
INSERT [dbo].[Kho-BoxTable] ([Id], [Row], [Column]) VALUES (10, 1, 3)
INSERT [dbo].[Kho-BoxTable] ([Id], [Row], [Column]) VALUES (11, 2, 4)
INSERT [dbo].[Kho-BoxTable] ([Id], [Row], [Column]) VALUES (12, 2, 5)
INSERT [dbo].[Kho-BoxTable] ([Id], [Row], [Column]) VALUES (13, 2, 6)
INSERT [dbo].[Kho-BoxTable] ([Id], [Row], [Column]) VALUES (14, 1, 1)
SET IDENTITY_INSERT [dbo].[Kho-BoxTable] OFF
SET IDENTITY_INSERT [dbo].[Kho-HolidaysTable] ON 

INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (3, CAST(0xA33A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (4, CAST(0xAA3A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (5, CAST(0xB13A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (6, CAST(0xB83A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (7, CAST(0xBF3A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (8, CAST(0xC63A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (9, CAST(0xCD3A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (10, CAST(0xD43A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (11, CAST(0xDB3A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (12, CAST(0xE23A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (13, CAST(0xE93A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (14, CAST(0xF03A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (15, CAST(0xF73A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (16, CAST(0xFE3A0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (17, CAST(0x053B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (18, CAST(0x0C3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (19, CAST(0x133B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (20, CAST(0x1A3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (21, CAST(0x213B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (22, CAST(0x283B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (23, CAST(0x2F3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (24, CAST(0x363B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (25, CAST(0x3D3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (26, CAST(0x443B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (27, CAST(0x4B3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (28, CAST(0x523B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (29, CAST(0x593B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (30, CAST(0x603B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (31, CAST(0x673B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (32, CAST(0x6E3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (33, CAST(0x753B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (34, CAST(0x7C3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (35, CAST(0x833B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (36, CAST(0x8A3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (37, CAST(0x913B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (38, CAST(0x983B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (39, CAST(0x9F3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (40, CAST(0xA63B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (41, CAST(0xAD3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (42, CAST(0xB43B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (43, CAST(0xBB3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (44, CAST(0xC23B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (45, CAST(0xC93B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (46, CAST(0xD03B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (47, CAST(0xD73B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (48, CAST(0xDE3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (49, CAST(0xE53B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (50, CAST(0xEC3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (51, CAST(0xF33B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (52, CAST(0xFA3B0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (53, CAST(0x013C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (54, CAST(0x083C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (55, CAST(0x0F3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (56, CAST(0x163C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (57, CAST(0x1D3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (58, CAST(0x243C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (59, CAST(0x2B3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (60, CAST(0x323C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (61, CAST(0x393C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (62, CAST(0x403C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (63, CAST(0x473C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (64, CAST(0x4E3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (65, CAST(0x553C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (66, CAST(0x5C3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (67, CAST(0x633C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (68, CAST(0x6A3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (69, CAST(0x713C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (70, CAST(0x783C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (71, CAST(0x7F3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (72, CAST(0x863C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (73, CAST(0x8D3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (74, CAST(0x943C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (75, CAST(0x9B3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (76, CAST(0xA23C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (77, CAST(0xA93C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (78, CAST(0xB03C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (79, CAST(0xB73C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (80, CAST(0xBE3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (81, CAST(0xC53C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (82, CAST(0xCC3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (83, CAST(0xD33C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (84, CAST(0xDA3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (85, CAST(0xE13C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (86, CAST(0xE83C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (87, CAST(0xEF3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (88, CAST(0xF63C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (89, CAST(0xFD3C0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (90, CAST(0x043D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (91, CAST(0x0B3D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (92, CAST(0x123D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (93, CAST(0x193D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (94, CAST(0x203D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (95, CAST(0x273D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (96, CAST(0x2E3D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (97, CAST(0x353D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (98, CAST(0x3C3D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (99, CAST(0x433D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (100, CAST(0x4A3D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (101, CAST(0x513D0B00 AS Date), N'جمعه')
GO
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (102, CAST(0x583D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (103, CAST(0x5F3D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (104, CAST(0x663D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (105, CAST(0x6D3D0B00 AS Date), N'جمعه')
INSERT [dbo].[Kho-HolidaysTable] ([Id], [day], [Description]) VALUES (106, CAST(0x743D0B00 AS Date), N'جمعه')
SET IDENTITY_INSERT [dbo].[Kho-HolidaysTable] OFF
SET IDENTITY_INSERT [dbo].[Kho-PageTable] ON 

INSERT [dbo].[Kho-PageTable] ([Id], [PageNumber], [Row], [Column], [SubField], [Visibility], [BoxPrice]) VALUES (3, 1, 19, 7, N'ندارد', 1, 60000)
INSERT [dbo].[Kho-PageTable] ([Id], [PageNumber], [Row], [Column], [SubField], [Visibility], [BoxPrice]) VALUES (4, 2, 25, 7, N'زیرموضوع', 1, 30000)
INSERT [dbo].[Kho-PageTable] ([Id], [PageNumber], [Row], [Column], [SubField], [Visibility], [BoxPrice]) VALUES (5, 3, 10, 2, N'', 1, 30000)
INSERT [dbo].[Kho-PageTable] ([Id], [PageNumber], [Row], [Column], [SubField], [Visibility], [BoxPrice]) VALUES (6, 4, 19, 7, N'', 1, 30000)
SET IDENTITY_INSERT [dbo].[Kho-PageTable] OFF
SET IDENTITY_INSERT [dbo].[KhoPrintDateTable] ON 

INSERT [dbo].[KhoPrintDateTable] ([Id], [AdvertiseID], [Date]) VALUES (30299, 30042, CAST(0xF53A0B00 AS Date))
INSERT [dbo].[KhoPrintDateTable] ([Id], [AdvertiseID], [Date]) VALUES (30300, 30042, CAST(0xF63A0B00 AS Date))
INSERT [dbo].[KhoPrintDateTable] ([Id], [AdvertiseID], [Date]) VALUES (30301, 30042, CAST(0xF83A0B00 AS Date))
INSERT [dbo].[KhoPrintDateTable] ([Id], [AdvertiseID], [Date]) VALUES (30302, 30042, CAST(0xF93A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[KhoPrintDateTable] OFF
SET IDENTITY_INSERT [dbo].[LanguageTable] ON 

INSERT [dbo].[LanguageTable] ([Id], [Name], [Icon], [Link], [OpenLink], [Visibility], [Code]) VALUES (18, N'فارسی', N'10b12611-f883-4e6a-82c4-f4fe4e47c76bfe34070a35ea6862f67148980c8f402d6b82f9ae.jpg', N'', N'_self', 1, NULL)
INSERT [dbo].[LanguageTable] ([Id], [Name], [Icon], [Link], [OpenLink], [Visibility], [Code]) VALUES (19, N'انگلیسی', N'6c78da6a-c106-443b-a52b-6b6873fe76fden.jpg', N'', N'_self', 1, NULL)
INSERT [dbo].[LanguageTable] ([Id], [Name], [Icon], [Link], [OpenLink], [Visibility], [Code]) VALUES (25, N'عربی', N'', N'', N'_self', 1, N'Ar')
SET IDENTITY_INSERT [dbo].[LanguageTable] OFF
SET IDENTITY_INSERT [dbo].[LinkTable] ON 

INSERT [dbo].[LinkTable] ([Id], [Title], [Link], [OpenLink], [Icon], [Visibility], [LanguageID], [Priority]) VALUES (1, N'1', N'1', N'_self', N'', 1, 18, 1)
SET IDENTITY_INSERT [dbo].[LinkTable] OFF
SET IDENTITY_INSERT [dbo].[LogTable] ON 

INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (1, N'آگهی', 1, CAST(0x0000A54C00B7C470 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (2, N'آگهی', 1, CAST(0x0000A54D00B96467 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (3, N'آگهی', 1, CAST(0x0000A54D00BC8225 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (4, N'آگهی', 1, CAST(0x0000A54D00BD121A AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (5, N'آگهی', 1, CAST(0x0000A54D00BD29A5 AS DateTime), N'ویرایش', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (6, N'آگهی', 1, CAST(0x0000A54D00BDCB68 AS DateTime), N'حذف', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (7, N'آگهی', 1, CAST(0x0000A54D00BDD5EE AS DateTime), N'حذف', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (8, N'آگهی', 1, CAST(0x0000A54D00BE0A19 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (9, N'آگهی', 1, CAST(0x0000A54D00BE2E6F AS DateTime), N'ویرایش', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10, N'آگهی', 1, CAST(0x0000A54D00BF935B AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (11, N'آگهی', 1, CAST(0x0000A54D00BF9FA1 AS DateTime), N'ویرایش', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (12, N'آگهی', 1, CAST(0x0000A55000CCE5E5 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (13, N'آگهی', 1, CAST(0x0000A55000CD3888 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (14, N'آگهی', 1, CAST(0x0000A55000CE3AD1 AS DateTime), N'حذف', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (15, N'آگهی', 1, CAST(0x0000A55000CE6135 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (16, N'آگهی', 1, CAST(0x0000A55000CF17FB AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (17, N'آگهی', 1, CAST(0x0000A5500126B5D1 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (18, N'آگهی', 1, CAST(0x0000A550012A5DB0 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (19, N'آگهی', 1, CAST(0x0000A550012B455F AS DateTime), N'حذف', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (20, N'آگهی', 1, CAST(0x0000A550012B6A8C AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (21, N'آگهی', 1, CAST(0x0000A550012BDF52 AS DateTime), N'ویرایش', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (22, N'آگهی', 1, CAST(0x0000A550012C6D61 AS DateTime), N'ویرایش', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (23, N'آگهی', 1, CAST(0x0000A550012F9458 AS DateTime), N'حذف', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (24, N'آگهی', 1, CAST(0x0000A550012FB26D AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (25, N'آگهی', 1, CAST(0x0000A55001504CDF AS DateTime), N'ویرایش', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (26, N'آگهی', 1, CAST(0x0000A5500153853A AS DateTime), N'ویرایش', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (27, N'آگهی', 1, CAST(0x0000A55001555522 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10026, N'آگهی', 1, CAST(0x0000A55700B578F9 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10027, N'آگهی', 1, CAST(0x0000A55700B5B605 AS DateTime), N'ویرایش', N'اطلاعات قبلی:
220720000024103456000150000


اطلاعات ویرایش شده:
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10028, N'آگهی', 1, CAST(0x0000A55700B5B605 AS DateTime), N'ویرایش', N'اطلاعات قبلی:
220720000024103456000150000


اطلاعات ویرایش شده:
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10029, N'آگهی', 1, CAST(0x0000A55700B5B609 AS DateTime), N'ویرایش تاریخ های چاپ', N'تاریخ های قبلی:
1394/09/031394/09/041394/09/05


تاریخ های جدید:
1394/09/111394/09/121394/09/141394/09/151394/09/161394/09/171394/09/181394/09/19', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10030, N'آگهی', 1, CAST(0x0000A55700B7AFAD AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 2
ستون: 4
درصد تخفیف: 10
جمع کل: 3456000
مبلغ نقدی: 150000



اطلاعات ویرایش شده:
ردیف: 2
ستون: 5
درصد تخفیف: 20
جمع کل: 2880000
مبلغ نقدی: 150000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10031, N'آگهی', 1, CAST(0x0000A55700B7AFAD AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 2
ستون: 4
درصد تخفیف: 10
جمع کل: 3456000
مبلغ نقدی: 150000



اطلاعات ویرایش شده:
ردیف: 2
ستون: 5
درصد تخفیف: 20
جمع کل: 2880000
مبلغ نقدی: 150000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10032, N'آگهی', 1, CAST(0x0000A55700B7AFAF AS DateTime), N'ویرایش تاریخ های چاپ', N'تاریخ های قبلی:
1394/09/11 - 1394/09/12 - 1394/09/14 - 1394/09/15 - 1394/09/16 - 1394/09/17 - 1394/09/18 - 1394/09/19 - 


تاریخ های جدید:
1394/09/03 - 1394/09/04 - 1394/09/05 - 1394/09/07 - 1394/09/08 - 1394/09/09 - ', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10033, N'آگهی 9449942', 1, CAST(0x0000A5570123B617 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10034, N'آگهی ', 1, CAST(0x0000A557012433AE AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 2
ستون: 2
درصد تخفیف: 0
جمع کل: 600000
مبلغ نقدی: 300000



اطلاعات ویرایش شده:
ردیف: 2
ستون: 2
درصد تخفیف: 10
جمع کل: 432000
مبلغ نقدی: 300000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10035, N'آگهی ', 1, CAST(0x0000A557012433AE AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 2
ستون: 2
درصد تخفیف: 0
جمع کل: 600000
مبلغ نقدی: 300000



اطلاعات ویرایش شده:
ردیف: 2
ستون: 2
درصد تخفیف: 10
جمع کل: 432000
مبلغ نقدی: 300000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10036, N'آگهی', 1, CAST(0x0000A557012433AF AS DateTime), N'ویرایش تاریخ های چاپ', N'تاریخ های قبلی:
1394/08/28 - 1394/08/30 - 1394/09/01 - 1394/09/02 - 1394/09/03 - 


تاریخ های جدید:
1394/09/03 - 1394/09/04 - 1394/09/05 - 1394/09/07 - ', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10037, N'آگهی 9410559', 1, CAST(0x0000A5570125055C AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10038, N'آگهی ', 1, CAST(0x0000A55701252D08 AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 2
ستون: 5
درصد تخفیف: 0
جمع کل: 3600000
مبلغ نقدی: 0



اطلاعات ویرایش شده:
ردیف: 2
ستون: 6
درصد تخفیف: 50
جمع کل: 2160000
مبلغ نقدی: 2000000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10039, N'آگهی ', 1, CAST(0x0000A55701252D08 AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 2
ستون: 5
درصد تخفیف: 0
جمع کل: 3600000
مبلغ نقدی: 0



اطلاعات ویرایش شده:
ردیف: 2
ستون: 6
درصد تخفیف: 50
جمع کل: 2160000
مبلغ نقدی: 2000000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10040, N'آگهی', 1, CAST(0x0000A55701252D08 AS DateTime), N'ویرایش تاریخ های چاپ', N'تاریخ های قبلی:
1394/09/04 - 1394/09/05 - 1394/09/07 - 1394/09/08 - 1394/09/09 - 1394/09/10 - 


تاریخ های جدید:
1394/09/04 - 1394/09/05 - 1394/09/07 - 1394/09/08 - 1394/09/09 - 1394/09/10 - ', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10041, N'آگهی', 1, CAST(0x0000A5570133AA01 AS DateTime), N'حذف', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10042, N'آگهی 9436006', 1, CAST(0x0000A5570133C6D3 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (10043, N'آگهی 9430898', 1, CAST(0x0000A55701352307 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (20026, N'آگهی 9461129', 1, CAST(0x0000A56100A34629 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30026, N'آگهی 9493516', 1, CAST(0x0000A59800D28EC4 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30027, N'آگهی ', 1, CAST(0x0000A59800D2D70B AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 2
ستون: 2
درصد تخفیف: 30
جمع کل: 840000
مبلغ نقدی: 0



اطلاعات ویرایش شده:
ردیف: 2
ستون: 2
درصد تخفیف: 30
جمع کل: 840000
مبلغ نقدی: 220000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30028, N'آگهی ', 1, CAST(0x0000A59800D2D70B AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 2
ستون: 2
درصد تخفیف: 30
جمع کل: 840000
مبلغ نقدی: 0



اطلاعات ویرایش شده:
ردیف: 2
ستون: 2
درصد تخفیف: 30
جمع کل: 840000
مبلغ نقدی: 220000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30029, N'آگهی', 1, CAST(0x0000A59800D2D711 AS DateTime), N'ویرایش تاریخ های چاپ', N'تاریخ های قبلی:
1394/11/07 - 1394/11/08 - 1394/11/10 - 1394/11/11 - 1394/11/12 - 


تاریخ های جدید:
1394/11/07 - 1394/11/08 - 1394/11/10 - 1394/11/11 - 1394/11/12 - ', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30030, N'آگهی 9426035', 1, CAST(0x0000A59800D65B46 AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30031, N'آگهی ', 1, CAST(0x0000A59800D67218 AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 1
ستون: 2
درصد تخفیف: 10
جمع کل: 324000
مبلغ نقدی: 0



اطلاعات ویرایش شده:
ردیف: 1
ستون: 2
درصد تخفیف: 10
جمع کل: 324000
مبلغ نقدی: 24000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30032, N'آگهی ', 1, CAST(0x0000A59800D67218 AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 1
ستون: 2
درصد تخفیف: 10
جمع کل: 324000
مبلغ نقدی: 0



اطلاعات ویرایش شده:
ردیف: 1
ستون: 2
درصد تخفیف: 10
جمع کل: 324000
مبلغ نقدی: 24000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30033, N'آگهی', 1, CAST(0x0000A59800D67218 AS DateTime), N'ویرایش تاریخ های چاپ', N'تاریخ های قبلی:
1394/11/07 - 1394/11/08 - 1394/11/10 - 


تاریخ های جدید:
1394/11/07 - 1394/11/08 - 1394/11/10 - ', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30034, N'آگهی 9442420', 1, CAST(0x0000A59800DBAA2D AS DateTime), N'ثبت', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30035, N'آگهی ', 1, CAST(0x0000A59800DD7E6A AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 1
ستون: 2
درصد تخفیف: 20
جمع کل: 288000
مبلغ نقدی: 150000



اطلاعات ویرایش شده:
ردیف: 2
ستون: 2
درصد تخفیف: 10
جمع کل: 437000
مبلغ نقدی: 12000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30036, N'آگهی ', 1, CAST(0x0000A59800DD7E6A AS DateTime), N'ویرایش', N'اطلاعات قبلی:
ردیف: 1
ستون: 2
درصد تخفیف: 20
جمع کل: 288000
مبلغ نقدی: 150000



اطلاعات ویرایش شده:
ردیف: 2
ستون: 2
درصد تخفیف: 10
جمع کل: 437000
مبلغ نقدی: 12000
', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30037, N'آگهی', 1, CAST(0x0000A59800DD7E6F AS DateTime), N'ویرایش تاریخ های چاپ', N'تاریخ های قبلی:
1394/11/07 - 1394/11/08 - 1394/11/10 - 


تاریخ های جدید:
1394/11/07 - 1394/11/08 - 1394/11/10 - ', NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30038, N'آگهی', 1, CAST(0x0000A598012B82CC AS DateTime), N'حذف', NULL, NULL)
INSERT [dbo].[LogTable] ([Id], [Name], [UserID], [Date], [Operation], [Details], [Ip]) VALUES (30039, N'آگهی 9487282', 1, CAST(0x0000A598012BBEE9 AS DateTime), N'ثبت', NULL, NULL)
SET IDENTITY_INSERT [dbo].[LogTable] OFF
SET IDENTITY_INSERT [dbo].[MenuGroupTable] ON 

INSERT [dbo].[MenuGroupTable] ([Id], [Name], [Visibility], [LanguageID]) VALUES (7, N'گروه اول', 1, 18)
INSERT [dbo].[MenuGroupTable] ([Id], [Name], [Visibility], [LanguageID]) VALUES (8, N'گروه دوم', 1, 18)
SET IDENTITY_INSERT [dbo].[MenuGroupTable] OFF
SET IDENTITY_INSERT [dbo].[MenuTable] ON 

INSERT [dbo].[MenuTable] ([Id], [Name], [Parent], [Link], [OpenLink], [Priority], [Visibility], [LanguageID], [MenuGroupID]) VALUES (7, N'1', -1, N'1', N'_self', 7, 1, 18, 7)
SET IDENTITY_INSERT [dbo].[MenuTable] OFF
SET IDENTITY_INSERT [dbo].[MessageTable] ON 

INSERT [dbo].[MessageTable] ([Id], [Name], [Mobile], [Email], [Title], [Body], [SendDate], [UserIp], [UserID], [UserGroupID], [UnitID]) VALUES (1, N'asd', NULL, N'reza_hm2008@yahoo.com', NULL, NULL, CAST(0x0000A55400E2ADBB AS DateTime), N'::1', NULL, NULL, NULL)
INSERT [dbo].[MessageTable] ([Id], [Name], [Mobile], [Email], [Title], [Body], [SendDate], [UserIp], [UserID], [UserGroupID], [UnitID]) VALUES (2, N'asd', NULL, N'1@1.ad', NULL, N'asd', CAST(0x0000A55500A5770C AS DateTime), N'::1', NULL, NULL, NULL)
INSERT [dbo].[MessageTable] ([Id], [Name], [Mobile], [Email], [Title], [Body], [SendDate], [UserIp], [UserID], [UserGroupID], [UnitID]) VALUES (10002, NULL, NULL, N'reza_hm2008@yahoo.com', NULL, NULL, CAST(0x0000A58900D860FD AS DateTime), N'::1', NULL, NULL, NULL)
INSERT [dbo].[MessageTable] ([Id], [Name], [Mobile], [Email], [Title], [Body], [SendDate], [UserIp], [UserID], [UserGroupID], [UnitID]) VALUES (10003, NULL, NULL, N'reza_hm2008@yahoo.com', NULL, NULL, CAST(0x0000A58900D8D214 AS DateTime), N'::1', NULL, NULL, NULL)
INSERT [dbo].[MessageTable] ([Id], [Name], [Mobile], [Email], [Title], [Body], [SendDate], [UserIp], [UserID], [UserGroupID], [UnitID]) VALUES (10004, N's', NULL, N'asd', NULL, N'asd', CAST(0x0000A59300D4C33F AS DateTime), N'::1', NULL, NULL, NULL)
INSERT [dbo].[MessageTable] ([Id], [Name], [Mobile], [Email], [Title], [Body], [SendDate], [UserIp], [UserID], [UserGroupID], [UnitID]) VALUES (10005, N'ads', NULL, N'reza@as.as', NULL, N'asd', CAST(0x0000A59300D93BAF AS DateTime), N'::1', NULL, NULL, NULL)
INSERT [dbo].[MessageTable] ([Id], [Name], [Mobile], [Email], [Title], [Body], [SendDate], [UserIp], [UserID], [UserGroupID], [UnitID]) VALUES (10006, N'شسی', NULL, N'reza@s.re', NULL, N'asd', CAST(0x0000A59300E22E48 AS DateTime), N'::1', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[MessageTable] OFF
SET IDENTITY_INSERT [dbo].[ModuleTable] ON 

INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (1, N'سفارشات aac', N'<li id="AacOrderMenu">
                        <a href="#"><i class="clip-pencil"></i>
                            <span class="title">سفارشات</span>
                            <span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (3, N'نمایندگی ', N'  <li>                         <a href="javascript:void(0)"><i class="clip-users-3"></i>                             <span class="title">نمایندگی </span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                             <li id="AgentMenu">                                 <a href="#">                                     <span class="title">ثبت نمایندگی</span>                                 </a>                             </li>                             <li id="AgentListMenu">                                 <a href="#">                                     <span class="title">لیست نمایندگان</span>                                 </a>                             </li>                          </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (4, N'آلبوم ', N'   <li>
                        <a href="javascript:void(0)"><i class="clip-pictures"></i>
                            <span class="title">آلبوم </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="AlbumMenu">
                                <a href="#">
                                    <span class="title">ثبت آلبوم</span>
                                </a>
                            </li>
                            <li id="AlbumListMenu">
                                <a href="#">
                                    <span class="title">لیست آلبوم</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (5, N'مشتری ', N'  <li>
                        <a href="javascript:void(0)"><i class="clip-users-2"></i>
                            <span class="title">مشتری </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="CustomerMenu">
                                <a href="#">
                                    <span class="title">ثبت مشتری</span>
                                </a>
                            </li>
                            <li id="CustomerListMenu">
                                <a href="#">
                                    <span class="title">لیست مشتریان</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (6, N'فاکتور فروش', N'  <li>
                        <a href="javascript:void(0)"><i class="clip-paypal"></i>
                            <span class="title">بخش فاکتور فروش </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="FactorListMenu">
                                <a href="#">
                                    <span class="title">لیست فاکتور</span>
                                </a>
                            </li>
                            <li id="FactorStatusListMenu">
                                <a href="#">
                                    <span class="title">وضعیت های فاکتور</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (7, N'مدیریت فایل', N' <li id="FileManagementMenu">
                        <a href="#"><i class="clip-file-2"></i>
                            <span class="title">مدیریت فایل</span>
                            <span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (8, N'محصولات گرندی', N'  <li>
                        <a href="javascript:void(0)"><i class="clip-cart"></i>
                            <span class="title">محصولات گرندی</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="GrandeeProductMenu">
                                <a href="#">
                                    <span class="title">ثبت محصول</span>
                                </a>
                            </li>
                            <li id="GrandeeProductListMenu">
                                <a href="#">
                                    <span class="title">لیست محصولات</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (9, N'زبان', N'
                    <li>
                        <a href="javascript:void(0)"><i class="clip-earth"></i>
                            <span class="title">زبان </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="LanguageMenu">
                                <a href="#">
                                    <span class="title">ثبت زبان</span>
                                </a>
                            </li>
                            <li id="LanguageListMenu">
                                <a href="#">
                                    <span class="title">لیست زبان</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (10, N'پیوند ها', N'    <li>
                        <a href="javascript:void(0)"><i class="clip-link-2"></i>
                            <span class="title">پیوند </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="LinkMenu">
                                <a href="#">
                                    <span class="title">ثبت پیوند</span>
                                </a>
                            </li>
                            <li id="LinkListMenu">
                                <a href="#">
                                    <span class="title">لیست پیوند</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (11, N'منو ساز', N'   <li>
                        <a href="javascript:void(0)"><i class="clip-menu-4"></i>
                            <span class="title">منو ساز </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="MenuBiulderMenu">
                                <a href="#">
                                    <span class="title">ثبت منو</span>
                                </a>
                            </li>
                            <li id="MenuBiulderListMenu">
                                <a href="#">
                                    <span class="title">لیست منو</span>
                                </a>
                            </li>
                            <li id="MenuGroupListMenu">
                                <a href="#">
                                    <span class="title">گروه های منو</span>
                                </a>
                            </li>
                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (12, N'پیام های کاربران سایت', N' <li id="MessageListMenu">
                        <a href="#"><i class="clip-paperplane"></i>
                            <span class="title">پیام های کاربران</span>
                            <span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (13, N'ماژول های پنل', N' <li>
                        <a href="javascript:void(0)"><i class="clip-archive"></i>
                            <span class="title">ماژول های پنل </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="ModuleMenu">
                                <a href="#">
                                    <span class="title">ثبت ماژول</span>
                                </a>
                            </li>
                            <li id="ModuleListMenu">
                                <a href="#">
                                    <span class="title">لیست ماژول</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (14, N'بخش خبری', N'
                    <li>
                        <a href="javascript:void(0)"><i class="clip-note"></i>
                            <span class="title">بخش خبری</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="NewsMenu">
                                <a href="#">
                                    <span class="title">ثبت خبر</span>
                                </a>
                            </li>
                            <li id="NewsListMenu">
                                <a href="#">
                                    <span class="title">لیست خبر</span>
                                </a>
                            </li>

                            <li id="NewsGroupListMenu">
                                <a href="#">
                                    <span class="title">گروه های خبری</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (15, N'تعرفه', N' <li>
                        <a href="javascript:void(0)"><i class="clip-banknote"></i>
                            <span class="title">تعرفه</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="PackageMenu">
                                <a href="#">
                                    <span class="title">ثبت تعرفه</span>
                                </a>
                            </li>
                            <li id="PackageListMenu">
                                <a href="#">
                                    <span class="title">لیست تعرفه</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (16, N'صفحه ساز', N' <li>
                        <a href="javascript:void(0)"><i class="clip-archive"></i>
                            <span class="title">صفحه ساز </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="PageMenu">
                                <a href="#">
                                    <span class="title">ثبت صفحه</span>
                                </a>
                            </li>
                            <li id="PageListMenu">
                                <a href="#">
                                    <span class="title">لیست صفحه</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (17, N'اماکن', N' <li>
                        <a href="javascript:void(0)"><i class="clip-location"></i>
                            <span class="title">اماکن</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="PlaceMenu">
                                <a href="#">
                                    <span class="title">ثبت مکان</span>
                                </a>
                            </li>
                            <li id="PlaceListMenu">
                                <a href="#">
                                    <span class="title">لیست اماکن</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (18, N'گروه بندی محصولات', N' <li id="ProductGroupMenu">
                        <a href="#"><i class="clip-stack"></i>
                            <span class="title">گروه بندی محصولات</span>
                            <span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (19, N'استان/شهر', N'  <li>
                        <a href="javascript:void(0)"><i class="clip-earth"></i>
                            <span class="title">استان/شهر</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="RegionMenu">
                                <a href="#">
                                    <span class="title">ثبت استان/شهر</span>
                                </a>
                            </li>
                            <li id="RegionListMenu">
                                <a href="#">
                                    <span class="title">لیست استان/شهر</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (20, N'اسلاید شو', N'    <li>
                        <a href="javascript:void(0)"><i class="clip-picassa"></i>
                            <span class="title">اسلاید شو</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="SlideMenu">
                                <a href="#">
                                    <span class="title">ثبت اسلاید</span>
                                </a>
                            </li>
                            <li id="SlideListMenu">
                                <a href="#">
                                    <span class="title">لیست اسلاید</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (21, N'محصولات تمشک', N'    <li>
                        <a href="javascript:void(0)"><i class="clip-cart"></i>
                            <span class="title">محصولات تمشک</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="TameshkProductMenu">
                                <a href="#">
                                    <span class="title">ثبت محصول</span>
                                </a>
                            </li>
                            <li id="TameshkProductListMenu">
                                <a href="#">
                                    <span class="title">لیست محصولات</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (22, N'بخش کاربری', N'      <li>
                        <a href="javascript:void(0)"><i class="clip-user-5"></i>
                            <span class="title">بخش کاربری </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="UserMenu">
                                <a href="#">
                                    <span class="title">ثبت کاربر</span>
                                </a>
                            </li>
                            <li id="UserListMenu">
                                <a href="#">
                                    <span class="title">لیست کاربران</span>
                                </a>
                            </li>
                            <li id="UserGroupMenu">
                                <a href="#">
                                    <span class="title">ثبت گروه کاربری</span>
                                </a>
                            </li>
                            <li id="UserGroupListMenu">
                                <a href="#">
                                    <span class="title">گروه های کاربری</span>
                                </a>
                            </li>
                            <li id="PermissionMenu">
                                <a href="#">
                                    <span class="title">سطح دسترسی</span>
                                </a>
                            </li>
                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (23, N'کاربری سایت ', N'      <li>
                        <a href="javascript:void(0)"><i class="clip-user-2"></i>
                            <span class="title">کاربری سایت </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="WebUserMenu">
                                <a href="#">
                                    <span class="title">ثبت کاربر سایت</span>
                                </a>
                            </li>
                            <li id="WebUserListMenu">
                                <a href="#">
                                    <span class="title">لیست کاربران سایت</span>
                                </a>
                            </li>
 <li id="ShowWebUserFieldMenu">
                                <a href="#">
                                    <span class="title">ثبت نمایش اطلاعات</span>
                                </a>
                            </li>
                            <li id="ShowWebUserFieldListMenu">
                                <a href="#">
                                    <span class="title">لیست نمایش اطلاعات</span>
                                </a>
                            </li>
                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (24, N'تنظیمات سایت', N'  <li>                         <a href="javascript:void(0)"><i class="clip-settings"></i>                             <span class="title">بخش تنظیمات</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                            
 <li id="WebsiteSettingMenu">                                 <a href="#">                                     <span class="title">تنظیمات سایت</span>                                 </a>                             </li>                             
<li id="StoreSettingMenu">                                 <a href="#">                                     <span class="title">تنظیمات فروشگاه</span>                                 </a>                             </li> 
                         </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (25, N'داشبورد', N' <li id="DashboardMenu">
                        <a href="#"><i class="clip-stats"></i>
                            <span class="title">داشبورد</span><span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (26, N'نقشه گوگل', N' <li >
                        <a href="GoogleMap.aspx"><i class="clip-map"></i>
                            <span class="title">نقشه گوگل</span><span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (28, N'مدیریت سوددهی ', N'  <li>                         <a href="javascript:void(0)"><i class="clip-database"></i>                             <span class="title">مدیریت سوددهی کاربران</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;"> 
<li id="UserPercentMenu">                                 <a href="#">                                     <span class="title">ثبت سود مستقیم </span>                                 </a>                             </li>                             <li id="UserPercentListMenu">                                 <a href="#">                                     <span class="title">لیست سود مستقیم</span>                                 </a>                             </li>                            <li id="MultiLevelPercentMenu">                                 <a href="#">                                     <span class="title">ثبت سود چند سطحی</span>                                 </a>                             </li>                             <li id="MultiLevelPercentListMenu">                                 <a href="#">                                     <span class="title">لیست سود چند سطحی</span>                                 </a>                             </li>                          </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (29, N'محصولات', N'  <li>                         <a href="javascript:void(0)"><i class="clip-cube-2"></i>                             <span class="title">محصولات</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                             <li id="ProductMenu">                                 <a href="#">                                     <span class="title">ثبت محصول</span>                                 </a>                             </li>                             <li id="ProductListMenu">                                 <a href="#">                                     <span class="title">لیست محصولات</span>                                 </a>                             </li>                          </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (30, N'بخش مالی', N'  <li>                         <a href="javascript:void(0)"><i class="clip-banknote"></i>                             <span class="title">بخش مالی</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                       
<li id="UserFactorListMenu">                                 <a href="#">                                     <span class="title">فاکتورهای کاربر</span>                                 </a>                             </li>         
 <li id="UserPercentReportMenu">                                 <a href="#">                                     <span class="title">سود مستقیم کاربر</span>                                 </a>                             </li> 
<li id="UserChildrenReportMenu">                                 <a href="#">                                     <span class="title">سود زیرمجموعه کاربر</span>                                 </a>                             </li>                                </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (31, N'تنظیمات آگهی', N'  <li>                         <a href="javascript:void(0)"><i class="clip-book"></i>                             <span class="title">تنظیمات آگهی</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                             <li id="KhoBoxListMenu">                                 <a href="#"><i class="clip-circle-small"></i>                                     <span class="title">کادر های آگهی </ span>                                 </a>                             </li> 
 <li id="KhoBoxPriceListMenu">                                 <a href="#"><i class="clip-circle-small"></i>                                     <span class="title">قیمت گذاری کادرها </ span>                                 </a>                             </li>                             <li id="KhoHolidayListMenu">                                 <a href="#"> <i class="clip-circle-small"></i>                                    <span class="title">ایام تعطیل</span>                                 </a>                             </li>
 <li id="KhoPageMenu">                                 <a href="#">   <i class="clip-circle-small"></i>                                    <span class="title">ثبت صفحه</span>                                 </a>                             </li>
 <li id="KhoPageListMenu">                                 <a href="#"> <i class="clip-circle-small"></i>                                    <span class="title">لیست صفحات</span>                                 </a>                             </li>                          </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (32, N'بخش آگهی', N'  <li>                         <a href="javascript:void(0)"><i class="clip-note"></i>                             <span class="title">بخش آگهی</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                             <li id="KhoAdvertiseMenu">                                 <a href="#"><i class="clip-circle-small"></i>                                     <span class="title">ثبت آگهی </ span>                                 </a>                             </li>                             <li id="KhoAdvertiseListMenu">                                 <a href="#"> <i class="clip-circle-small"></i>                                    <span class="title">لیست آگهی</span>                                 </a>                             </li> <li id="KhoPageSpaceListMenu">                                 <a href="#"> <i class="clip-circle-small"></i>                                    <span class="title">وضعیت صفحات</span>                                 </a>                             </li>
<li id="KhoAdvertiseReportMenu">                                 <a href="#"> <i class="clip-circle-small"></i>                                    <span class="title">گزارشات مالی</span>                                 </a>                             </li>
                       </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (33, N'گزارشات سیستم', N'  <li>                         <a href="javascript:void(0)"><i class="clip-settings"></i>                             <span class="title">گزارشات سیستم</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;"><li id="BackupListMenu">                                 <a href="#"><i class="clip-circle-small"></i>                                     <span class="title">پشتیبان گیری اطلاعات </ span>                                 </a>                             </li>                            
  <li id="LogListMenu">                                 <a href="#"><i class="clip-circle-small"></i>                                     <span class="title">لاگ سیستم </ span>                                 </a>                             </li>   
 <li id="ErrorListMenu">                                 <a href="#"><i class="clip-circle-small"></i>                                     <span class="title">خطای سیستم </ span>                                 </a>                             </li>   
                       </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (34, N'سوالات متداول', N'  <li>                         <a href="javascript:void(0)"><i class="clip-question"></i>                             <span class="title">سوالات متداول</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                             <li id="FaqMenu">                                 <a href="#">                                     <span class="title">ثبت سوال</span>                                 </a>                             </li>                             <li id="FaqListMenu">                                 <a href="#">                                     <span class="title">لیست سوالات</span>                                 </a>                             </li>                          </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (36, N'خدمات شرکت', N'  <li>                         <a href="javascript:void(0)"><i class="clip-wrench"></i>                             <span class="title">خدمات شرکت</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                             <li id="OurServiceMenu">                                 <a href="#">                                     <span class="title">ثبت خدمات </span>                                 </a>                             </li>                             <li id="OurServiceListMenu">                                 <a href="#">                                     <span class="title">لیست خدمات </span>                                 </a>                             </li>                          </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (1036, N'بانک مجازی', N'  <li>                         <a href="javascript:void(0)"><i class="clip-cube-2"></i>                             <span class="title">بانک مجازی</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                           
  <li id="WalletMenu">                                 <a href="#">                                     <span class="title">شارژ حساب</span>                                 </a>                             </li>                             <li id="WalletUserListMenu">                                 <a href="#">                                     <span class="title">لیست ورودی - خروجی حساب</span>                                 </a>                             </li>
<li id="SettlementUserMenu">                                 <a href="#">                                     <span class="title">درخواست تسویه</span>                                 </a>                             </li>  
<li id="SettlementUserListMenu">                                 <a href="#">                                     <span class="title">لیست درخواست ها</span>                                 </a>                             </li>                            </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (2036, N'برچسب گذاری', N'  <li>                         <a href="javascript:void(0)"><i class="clip-tag-2"></i>                             <span class="title">برچسب گذاری</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                             <li id="TagMenu">                                 <a href="#">                                     <span class="title">ثبت برچسب</span>                                 </a>                             </li>                             <li id="TagListMenu">                                 <a href="#">                                     <span class="title">لیست برچسب ها </span>                                 </a>                             </li>                          </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (3036, N'مدیریت انبار', N'  <li>                         <a href="javascript:void(0)"><i class="clip-truck"></i>                             <span class="title">مدیریت انبار</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                            
 <li id="WarehouseMenu">                                 <a href="#">                                     <span class="title">ثبت انبار</span>                                 </a>                             </li>                             
<li id="WarehouseListMenu">                                 <a href="#">                                     <span class="title">لیست انبارها</span>                                 </a>                             </li> 
 <li id="WarehouseProductMenu">                                 <a href="#">                                     <span class="title">ثبت کالا در انبار</span>                                 </a>                             </li> 
<li id="WarehouseProductListMenu">                                 <a href="#">                                     <span class="title">کالاهای انبار</span>                                 </a>                             </li>                         </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (4036, N'مدیریت حساب های کاربران', N'  <li>                         <a href="javascript:void(0)"><i class="clip-balance"></i>                             <span class="title">مدیریت حساب های کاربران</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                           
  <li id="SettlementListMenu">                                 <a href="#">                                     <span class="title">لیست درخواست های تسویه</span>                                 </a>                             </li>                           
<li id="WalletListMenu">                                 <a href="#">                                     <span class="title">لیست بانک مجازی کاربران</span>                                 </a>                             </li>                            </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (5036, N'بیماران', N'  <li>                         <a href="javascript:void(0)"><i class="clip-question"></i>                             <span class="title">بیماران</span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                             <li id="PatientMenu">                                 <a href="#">                                     <span class="title">ثبت بیمار</span>                                 </a>                             </li>                             <li id="PatientListMenu">                                 <a href="#">                                     <span class="title">لیست بیماران</span>                                 </a>                             </li>                          </ul>                     </li>', N'')
SET IDENTITY_INSERT [dbo].[ModuleTable] OFF
SET IDENTITY_INSERT [dbo].[MultiLevelPercentTable] ON 

INSERT [dbo].[MultiLevelPercentTable] ([Id], [Name], [Percent], [LevelNumber], [Visibility], [GroupID1], [GroupID2]) VALUES (7, N'سطح یک برای گروه 1', 10, 1, 1, 2, 0)
INSERT [dbo].[MultiLevelPercentTable] ([Id], [Name], [Percent], [LevelNumber], [Visibility], [GroupID1], [GroupID2]) VALUES (8, N'سطح دو برای گروه 1', 8, 2, 1, 2, 0)
INSERT [dbo].[MultiLevelPercentTable] ([Id], [Name], [Percent], [LevelNumber], [Visibility], [GroupID1], [GroupID2]) VALUES (9, N'سطح سه برای گروه 1', 6, 3, 1, 2, 0)
INSERT [dbo].[MultiLevelPercentTable] ([Id], [Name], [Percent], [LevelNumber], [Visibility], [GroupID1], [GroupID2]) VALUES (10, N'سطح چهار برای گروه 1', 4, 4, 1, 2, 0)
INSERT [dbo].[MultiLevelPercentTable] ([Id], [Name], [Percent], [LevelNumber], [Visibility], [GroupID1], [GroupID2]) VALUES (11, N'سطح یک برای گروه 2', 15, 1, 1, 5, 11)
INSERT [dbo].[MultiLevelPercentTable] ([Id], [Name], [Percent], [LevelNumber], [Visibility], [GroupID1], [GroupID2]) VALUES (12, N'سطح دو برای گروه 2', 11, 2, 1, 5, -1)
INSERT [dbo].[MultiLevelPercentTable] ([Id], [Name], [Percent], [LevelNumber], [Visibility], [GroupID1], [GroupID2]) VALUES (13, N'سطح سه برای گروه 2', 8, 3, 1, 5, -1)
INSERT [dbo].[MultiLevelPercentTable] ([Id], [Name], [Percent], [LevelNumber], [Visibility], [GroupID1], [GroupID2]) VALUES (14, N'سطح چهار برای گروه 2', 3, 4, 1, 5, -1)
INSERT [dbo].[MultiLevelPercentTable] ([Id], [Name], [Percent], [LevelNumber], [Visibility], [GroupID1], [GroupID2]) VALUES (10007, N'asd', 2, 1, 1, 2, 0)
SET IDENTITY_INSERT [dbo].[MultiLevelPercentTable] OFF
SET IDENTITY_INSERT [dbo].[NewsGroupTable] ON 

INSERT [dbo].[NewsGroupTable] ([Id], [Name], [LanguageID], [Priority], [Visibility]) VALUES (3, N'عمومی', 1, 3, 1)
INSERT [dbo].[NewsGroupTable] ([Id], [Name], [LanguageID], [Priority], [Visibility]) VALUES (4, N'ورزشی', 1, 4, 1)
INSERT [dbo].[NewsGroupTable] ([Id], [Name], [LanguageID], [Priority], [Visibility]) VALUES (5, N'اقتصادی', 1, 5, 1)
SET IDENTITY_INSERT [dbo].[NewsGroupTable] OFF
SET IDENTITY_INSERT [dbo].[NewsTable] ON 

INSERT [dbo].[NewsTable] ([Id], [RoTitr], [Titr], [ZirTitr], [Body], [Image], [Keywords], [NewsGroupID], [PublishStatus], [ShowInSlide], [Special], [Comment], [Rate], [PublishDate], [PublishTime], [UserID], [LanguageID], [NumberOfView]) VALUES (5, N'test', N'مایلی‌کهن و کی‌روش مثل ۲ حرفه‌ای با مشکل مواجه نمی‌شوند/ رایزنی می‌کنیم تا جهانبخش، آزمون و عزت‌اللهی را داشته باشیم', N'مدیر تیم ملی فوتبال امید ایران گفت: کارلوس کی‌روش و محمد مایلی‌کهن ۲ حرفه‌ای هستند و افراد حرفه‌ای به خوبی به وظایف خود عمل می‌کنند و هیچ وقت دچار مشکل نمی‌شوند.', N'<p style="text-align:justify">حبیب کاشانی در گفت&zwnj;وگو با خبرنگار ورزشی&nbsp;<a href="http://www.farsnews.com/" style="text-decoration: none; color: rgb(176, 37, 37);">خبرگزاری فارس</a>، در مورد اردوی تیم ملی امید ایران در کشور ترکیه گفت: قرار است تیم به آنتالیا سفر کند و پیش&zwnj;بینی 2 بازی دوستانه را داشتیم. تیم&zwnj;های زیادی در ترکیه حضور دارند به همین خاطر کادرفنی می&zwnj;تواند بر اساس برنامه خود اگر مرور تاکتیک می&zwnj;کند با یک تیم ضعیف تر و اگر قصد تثبیت ترکیب خود را دارد با یک حریف قوی&zwnj;تر بازی کند. تیم ملی جوانان عراق قصد داشت با ما بازی کند که کادرفنی این مسئله را نپذیرفت. در کل قصد داریم یکی دو بازی خوب در آنجا داشته باشیم.</p>

<p style="text-align:justify">وی در مورد حضور کارلوس کی&zwnj;روش به عنوان ناظر در تمرین تیم ملی امید، اظهار داشت: فدراسیون فوتبال در قرارداد کی&zwnj;روش بندی قرار داده که از تجربیات این مربی در فوتبال پایه استفاده شود. به احتمال زیاد بر اساس این بند کی&zwnj;روش قصد دارد این کار را انجام دهد و ما هم از اینکه او کنار ما حاضر شود استقبال می&zwnj;کنیم.</p>

<p style="text-align:justify">مدیر تیم ملی فوتبال امید در مورد اینکه شایعه شده که در صورت حضور کی&zwnj;روش در کنار تیم ملی امید محمد مایلی&zwnj;کهن از سمت خود به عنوان مدیر فنی استعفا می&zwnj;کند، گفت: چیزی که من گفتم نتیجه صحبتی است که با کادرفنی داشتم. البته با محمد مایلی&zwnj;کهن صحبت نکردم. او فردی حرفه&zwnj;ای است و کار خودش را انجام می&zwnj;دهم کی&zwnj;روش هم یک فرد حرفه&zwnj;ای است. افراد حرفه&zwnj;ای وظایف خود را به خوبی انجام می&zwnj;دهند و مطمئن باشید حضور کی&zwnj;روش در قطر مشکلی برایمان نخواهد داشت و کارمان را با قدرت انجام می&zwnj;دهیم.</p>

<p style="text-align:justify">کاشانی در مورد&nbsp;انتخاب امیر حاج&zwnj;رضایی از سوی کمیته المپیک به عنوان ناظر تیم ملی امید، اظهار داشت: حاج&zwnj;رضایی از افراد با تجربه فوتبال هستند حضور او به تیم ملی المپیک کمک می&zwnj;کنید از همین&zwnj;جا خوشحالی خود را اعلام می&zwnj;کنم و امیدوارم همه در کنار هم بتوانیم این کار مهم را به سرانجام برسانیم و به خواسته مردم که صعود به المپیک است جامه عمل بپوشانیم.</p>

<p style="text-align:justify">وی در پاسخ به این سوال که آیا در اردوی ترکیه همه نفرات را در اختیار دارند، گفت: در این اردو همه نفرات را نداریم چراکه اردو در فیفا دی نیست. باشگاه آلکمار و رستوف مذاکره کردیم تا سردا آزمون، علیرضا جهانبخش و سعید عزت&zwnj;اللهی را برای مسابقات انتخابی المپیک در اختیار داشته باشیم. بازیکنانی مثل میلاد ترابی، میلاد محمد، حسین کنعانی و .... که در اختیار تیم ملی بزرگسالان بودند در اختیارامان هستند اما امیدوارم قبل از ژانویه از حضور لژیونرها استفاده کنیم.</p>

<p style="text-align:justify">مدیر تیم ملی امید در مورد اینکه حمید منوچهری سرپرست راه آهن اعلام کرده که نمی توانند میلاد و مهرداد محمدی را به دلیل اینکه اردو در تاریخ فیفادی نیست در اختیار تیم ملی امید قرار دهند، تصریح کرد: او را نمی شناسم. ارادت ویژه خدمت علیرضا رحیمی دارم او به ما قول همه&zwnj;گونه همکاری را داده است. رحیمی را فردی کاربلد و کار کشته می&zwnj;دانیم. حتما کمک رحیمی به تیم ملی کشورش در راس هه امور قرار دارد و از این فرصت استفاده می&zwnj;کنم از همه مدیران و مربیان که به ما کمک کردند و همه جوره با تیم ملی امید همکاری داشتند تشکر کنم.</p>

<p style="text-align:justify">کاشانی در مورد پولی کمیته المپیک به تیم ملی امید داده اما این پول در فدراسیون فوتبال بلوکه شده است، خاطرنشان کرد: هنوز این پول داده نشده است. مکاتباتی با بانک مرکزی انجام شده تا دلار تهیه شود. با توجه به نوسانات بازار ارز قرار است پول ما تبدیل به دلار شود و سپس این پول در اختیار تیم ملی امید قرار بگیرد.</p>

<p style="text-align:justify">وی در مورد اینکه گفته می&zwnj;شود گذرنامه فرشید اسماعیلی گم شده است، تصریح کرد: این مسئله را نشنیدم و تا به این لحظه کسی چیزی به من اعلام نکرده است.</p>
', N'98b20c68-0cac-40b2-8907-dadfe1ceabb713940504000605_PhotoA.jpg', N'مایلی‌کهن, کی‌روش', 4, 2, 0, 0, 0, 0, CAST(0xBB3A0B00 AS Date), CAST(0x07C4776D476E0000 AS Time), 1, 18, 0)
SET IDENTITY_INSERT [dbo].[NewsTable] OFF
SET IDENTITY_INSERT [dbo].[PermissionTable] ON 

INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (176, 1, NULL, 1, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (177, 1, NULL, 3, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (178, 1, NULL, 4, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (179, 1, NULL, 5, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (180, 1, NULL, 6, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (181, 1, NULL, 7, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (182, 1, NULL, 8, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (183, 1, NULL, 9, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (184, 1, NULL, 10, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (185, 1, NULL, 11, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (186, 1, NULL, 12, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (187, 1, NULL, 13, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (188, 1, NULL, 14, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (189, 1, NULL, 15, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (190, 1, NULL, 16, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (191, 1, NULL, 17, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (192, 1, NULL, 18, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (193, 1, NULL, 19, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (194, 1, NULL, 20, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (195, 1, NULL, 21, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (196, 1, NULL, 22, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (197, 1, NULL, 23, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (198, 1, NULL, 24, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (199, 1, NULL, 25, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (200, 1, NULL, 26, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (329, 1, NULL, 28, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (330, 1, NULL, 29, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (331, 1, NULL, 30, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (332, 1, NULL, 31, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (346, 1, NULL, 32, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (378, 1, NULL, 33, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (380, 1, NULL, 34, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (10383, 1, NULL, 36, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (20383, 1, NULL, 1036, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (30383, 1, NULL, 2036, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40384, 12446, NULL, 33, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40385, 12446, NULL, 32, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40386, 12446, NULL, 31, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40387, 12446, NULL, 30, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40388, 12446, NULL, 29, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40389, 12446, NULL, 2036, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40390, 12446, NULL, 26, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40391, 12446, NULL, 25, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40392, 12446, NULL, 24, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40393, 12446, NULL, 23, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40394, 12446, NULL, 22, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40395, 12446, NULL, 21, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40396, 12446, NULL, 20, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40397, 12446, NULL, 19, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40398, 12446, NULL, 18, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40399, 12446, NULL, 17, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40400, 12446, NULL, 16, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40401, 12446, NULL, 15, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40402, 12446, NULL, 14, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40403, 12446, NULL, 13, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40404, 12446, NULL, 12, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40405, 12446, NULL, 11, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40406, 12446, NULL, 10, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40407, 12446, NULL, 9, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40408, 12446, NULL, 8, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40409, 12446, NULL, 7, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40410, 12446, NULL, 6, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40411, 12446, NULL, 5, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40412, 12446, NULL, 4, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40413, 12446, NULL, 3, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40414, 12446, NULL, 1, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40415, 12446, NULL, 28, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40417, 12446, NULL, 34, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40418, 12446, NULL, 1036, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (40419, 12446, NULL, 36, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (50383, 1, NULL, 3036, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (60383, 1, NULL, 4036, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (70383, 1, NULL, 5036, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[PermissionTable] OFF
SET IDENTITY_INSERT [dbo].[PlacePicTable] ON 

INSERT [dbo].[PlacePicTable] ([Id], [Image], [Alt], [PlaceID]) VALUES (1, N'1de5a8b1-629c-4251-87ca-0ec9a4d2ed44photo_2015-10-18_12-19-43.jpg', NULL, 10012)
INSERT [dbo].[PlacePicTable] ([Id], [Image], [Alt], [PlaceID]) VALUES (2, N'67721f5c-014e-40b0-9c00-1e244aa98354photo_2015-11-02_17-35-17.jpg', NULL, 10012)
INSERT [dbo].[PlacePicTable] ([Id], [Image], [Alt], [PlaceID]) VALUES (5, N'2b06807e-f67e-429f-9696-73d97f227bc1photo_2015-11-25_13-52-28.jpg', NULL, 10013)
INSERT [dbo].[PlacePicTable] ([Id], [Image], [Alt], [PlaceID]) VALUES (6, N'7157ac5f-8c60-4ec4-86f7-e38955adab67photo_2015-11-23_18-46-35.jpg', NULL, 10013)
INSERT [dbo].[PlacePicTable] ([Id], [Image], [Alt], [PlaceID]) VALUES (7, N'7641028a-07b2-478f-9ed7-44e362fc2cf7photo_2015-11-17_13-33-24.jpg', NULL, 10013)
SET IDENTITY_INSERT [dbo].[PlacePicTable] OFF
SET IDENTITY_INSERT [dbo].[PlaceTable] ON 

INSERT [dbo].[PlaceTable] ([Id], [Name], [GroupID1], [Logo], [Banner], [Owner], [Description], [Tel], [Fax], [Mobile], [Email], [Website], [Address], [Position], [Facilities], [Services], [WorkTime], [RegDate], [UserIp], [UserID], [WebUserID], [NumberOfView], [Rate], [Verify], [Visibility], [PackageID], [GroupID2], [CityID]) VALUES (17, N'ترند', 2, N'', NULL, NULL, NULL, N'32720340', NULL, NULL, NULL, NULL, N'بلوار امام خمینی شرقی خ حسینی معصوم 21 پ 47', N'37.474931310680844,57.324561595851264', NULL, NULL, NULL, CAST(0x0000A58500D9F564 AS DateTime), N'::1', NULL, -1, 0, 0, 0, 0, 0, 2, 10)
INSERT [dbo].[PlaceTable] ([Id], [Name], [GroupID1], [Logo], [Banner], [Owner], [Description], [Tel], [Fax], [Mobile], [Email], [Website], [Address], [Position], [Facilities], [Services], [WorkTime], [RegDate], [UserIp], [UserID], [WebUserID], [NumberOfView], [Rate], [Verify], [Visibility], [PackageID], [GroupID2], [CityID]) VALUES (18, N'2', 2, N'', NULL, NULL, NULL, N'2', NULL, NULL, NULL, NULL, N'2', N'37.4702055500792,57.31812429427691', NULL, NULL, NULL, CAST(0x0000A58500DBE993 AS DateTime), N'::1', NULL, -1, 0, 0, 0, 0, 0, -1, -1)
INSERT [dbo].[PlaceTable] ([Id], [Name], [GroupID1], [Logo], [Banner], [Owner], [Description], [Tel], [Fax], [Mobile], [Email], [Website], [Address], [Position], [Facilities], [Services], [WorkTime], [RegDate], [UserIp], [UserID], [WebUserID], [NumberOfView], [Rate], [Verify], [Visibility], [PackageID], [GroupID2], [CityID]) VALUES (19, N'3', 5, N'', NULL, NULL, NULL, N'3', NULL, NULL, NULL, NULL, N'3', N'37.473349278683884,57.326029300656955', NULL, NULL, NULL, CAST(0x0000A58500DED930 AS DateTime), N'::1', NULL, -1, 0, 0, 0, 0, 0, 11, 10)
INSERT [dbo].[PlaceTable] ([Id], [Name], [GroupID1], [Logo], [Banner], [Owner], [Description], [Tel], [Fax], [Mobile], [Email], [Website], [Address], [Position], [Facilities], [Services], [WorkTime], [RegDate], [UserIp], [UserID], [WebUserID], [NumberOfView], [Rate], [Verify], [Visibility], [PackageID], [GroupID2], [CityID]) VALUES (20, N'4', 2, N'', NULL, NULL, NULL, N'4', NULL, NULL, NULL, NULL, N'4', N'37.47556990412442,57.31999111175128', NULL, NULL, NULL, CAST(0x0000A58500DFA68E AS DateTime), N'::1', NULL, -1, 0, 0, 0, 0, 0, -1, -1)
INSERT [dbo].[PlaceTable] ([Id], [Name], [GroupID1], [Logo], [Banner], [Owner], [Description], [Tel], [Fax], [Mobile], [Email], [Website], [Address], [Position], [Facilities], [Services], [WorkTime], [RegDate], [UserIp], [UserID], [WebUserID], [NumberOfView], [Rate], [Verify], [Visibility], [PackageID], [GroupID2], [CityID]) VALUES (10012, N'test', 0, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'#@#@#@#@#@#@#@', CAST(0x0000A59000DF78E9 AS DateTime), N'::1', NULL, -1, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[PlaceTable] ([Id], [Name], [GroupID1], [Logo], [Banner], [Owner], [Description], [Tel], [Fax], [Mobile], [Email], [Website], [Address], [Position], [Facilities], [Services], [WorkTime], [RegDate], [UserIp], [UserID], [WebUserID], [NumberOfView], [Rate], [Verify], [Visibility], [PackageID], [GroupID2], [CityID]) VALUES (10013, N'asd', 0, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'@', N'@', N'#@#@#@#@#@#@#@', CAST(0x0000A590013173FA AS DateTime), NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[PlaceTable] OFF
SET IDENTITY_INSERT [dbo].[ProductGroupTable1] ON 

INSERT [dbo].[ProductGroupTable1] ([Id], [Name], [Link], [OpenLink], [Priority], [Visibility], [LanguageID], [Image], [Description]) VALUES (2, N'گروه 01', N'', N'_self', 2, 1, 18, NULL, NULL)
INSERT [dbo].[ProductGroupTable1] ([Id], [Name], [Link], [OpenLink], [Priority], [Visibility], [LanguageID], [Image], [Description]) VALUES (5, N'گروه 2', N'', N'_self', 5, 1, 18, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductGroupTable1] OFF
SET IDENTITY_INSERT [dbo].[ProductGroupTable2] ON 

INSERT [dbo].[ProductGroupTable2] ([Id], [Name], [Parent], [Link], [OpenLink], [Priority], [Visibility], [LanguageID], [GroupID1]) VALUES (2, N'نان سنتی', -1, N'', N'_self', 2, 1, 18, 2)
INSERT [dbo].[ProductGroupTable2] ([Id], [Name], [Parent], [Link], [OpenLink], [Priority], [Visibility], [LanguageID], [GroupID1]) VALUES (9, N'نان ماشینی', -1, N'', N'_self', 3, 1, 18, 2)
INSERT [dbo].[ProductGroupTable2] ([Id], [Name], [Parent], [Link], [OpenLink], [Priority], [Visibility], [LanguageID], [GroupID1]) VALUES (10, N'نان فانتزی', -1, N'', N'_self', 3, 1, 18, 2)
INSERT [dbo].[ProductGroupTable2] ([Id], [Name], [Parent], [Link], [OpenLink], [Priority], [Visibility], [LanguageID], [GroupID1]) VALUES (11, N'گروه فرعی 01', -1, N'', N'_self', 1, 1, 18, 5)
SET IDENTITY_INSERT [dbo].[ProductGroupTable2] OFF
SET IDENTITY_INSERT [dbo].[ProductTable] ON 

INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10009, N'محصول 01', 0, 2, N'شسی', 0, 1, 540000, 12000, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'001', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10010, N'12', 0, 2, N'2', 0, 1, 120000, 12, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'2', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10011, N'test', 0, 9, N'', 0, 1, 450000, 0, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'1123', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10012, N'پیراهن', 0, 10, N'', 0, 1, 87000, 1, 0, 0, 0, 19, N'', NULL, NULL, 0, NULL, 0, N'1', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10013, N'جوراب', 0, 11, N'', 0, 1, 652100, 1, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'12', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10014, N'asdasd', 0, 11, N'', 0, 1, 1, 1, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'1', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10015, N'123', 0, 11, N'', 0, 1, 123, 123, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'123', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10016, N'محصول 01', 0, 2, N'شسی', 0, 1, 540000, 12000, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'001', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10017, N'12', 0, 2, N'2', 0, 1, 120000, 12, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'2', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10018, N'test', 0, 9, N'', 0, 1, 450000, 0, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'1123', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10019, N'پیراهن', 0, 10, N'', 0, 1, 87000, 1, 0, 0, 0, 19, N'', NULL, NULL, 0, NULL, 0, N'1', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10020, N'جوراب', 0, 11, N'', 0, 1, 652100, 1, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'12', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10021, N'asdasd', 0, 11, N'', 0, 1, 1, 1, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'1', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10022, N'123', 0, 11, N'', 0, 1, 123, 123, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'123', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10023, N'محصول 01', 0, 2, N'شسی', 0, 1, 540000, 12000, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'001', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10024, N'12', 0, 2, N'2', 0, 1, 120000, 12, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'2', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10025, N'test', 0, 9, N'', 0, 1, 450000, 0, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'1123', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10026, N'پیراهن', 0, 10, N'', 0, 1, 87000, 1, 0, 0, 0, 19, N'', NULL, NULL, 0, NULL, 0, N'1', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10027, N'جوراب', 0, 11, N'', 0, 1, 652100, 1, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'12', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10028, N'asdasd', 0, 11, N'', 0, 1, 1, 1, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'1', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (10029, N'123', 0, 11, N'', 0, 1, 123, 123, 0, 0, 0, 18, N'', NULL, NULL, 0, NULL, 0, N'123', NULL)
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (20007, N'1', 0, 11, N'1', 1, 1, 1, 1, 0, 0, 1, 18, N'', CAST(0x0000A578014D488D AS DateTime), 0, 0, NULL, 0, N'1', N'modem')
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (20008, N'2', 0, 11, N'', 1, 1, 2, 2, 0, 0, 1, 18, N'', CAST(0x0000A578014D769B AS DateTime), 0, 0, NULL, 0, N'2', N'testmodem123')
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (20009, N'asd', 0, 11, N'1', 1, 1, 1, 1, 0, 0, 1, 18, N'', CAST(0x0000A578014DB79B AS DateTime), 0, 0, NULL, 0, N'1', N'test,123,')
INSERT [dbo].[ProductTable] ([Id], [Name], [Special], [GroupID], [Description], [InBasket], [PriceKind], [Price], [Discount], [Priority], [Availability], [Visibility], [LanguageID], [Details], [RegDate], [View], [Rate], [EditDate], [UserID], [Code], [TagName]) VALUES (20010, N'asd', 0, 11, N'1', 1, 1, 1, 1, 0, 0, 1, 18, N'', CAST(0x0000A578015495B9 AS DateTime), 0, 0, CAST(0x0000A5780154A08D AS DateTime), 0, N's', N'test,123,')
SET IDENTITY_INSERT [dbo].[ProductTable] OFF
SET IDENTITY_INSERT [dbo].[RegionTable] ON 

INSERT [dbo].[RegionTable] ([Id], [Name], [Parent], [Position], [Priority], [Visibility], [LanguageID]) VALUES (9, N'خراسان شمالی', -1, N'1,1', 9, 1, 18)
INSERT [dbo].[RegionTable] ([Id], [Name], [Parent], [Position], [Priority], [Visibility], [LanguageID]) VALUES (10, N'بجنورد', 9, N'', 10, 1, 18)
INSERT [dbo].[RegionTable] ([Id], [Name], [Parent], [Position], [Priority], [Visibility], [LanguageID]) VALUES (11, N'شیروان', 9, N'', 11, 1, 18)
SET IDENTITY_INSERT [dbo].[RegionTable] OFF
SET IDENTITY_INSERT [dbo].[SettlementTable] ON 

INSERT [dbo].[SettlementTable] ([Id], [Request], [RequestDate], [Pay], [PayDate], [RefCode], [Status], [UserID], [Description]) VALUES (1, 150000, CAST(0x0000A58C01517994 AS DateTime), NULL, NULL, NULL, N'در حال بررسی', 1, N'')
INSERT [dbo].[SettlementTable] ([Id], [Request], [RequestDate], [Pay], [PayDate], [RefCode], [Status], [UserID], [Description]) VALUES (2, 120000, CAST(0x0000A58C01549483 AS DateTime), 120000, CAST(0x0000A58C0156BCBA AS DateTime), NULL, N'پرداخت شده', 1, N'')
SET IDENTITY_INSERT [dbo].[SettlementTable] OFF
SET IDENTITY_INSERT [dbo].[ShowWebUserFieldTable] ON 

INSERT [dbo].[ShowWebUserFieldTable] ([Id], [GroupID], [Name], [Family], [Father], [CodeMeli], [ShomareSh], [BirthhDay], [Tel], [Mobile], [Email], [Address], [ZipCode], [TelOwnerName]) VALUES (2, 5, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1)
INSERT [dbo].[ShowWebUserFieldTable] ([Id], [GroupID], [Name], [Family], [Father], [CodeMeli], [ShomareSh], [BirthhDay], [Tel], [Mobile], [Email], [Address], [ZipCode], [TelOwnerName]) VALUES (3, 2, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1)
INSERT [dbo].[ShowWebUserFieldTable] ([Id], [GroupID], [Name], [Family], [Father], [CodeMeli], [ShomareSh], [BirthhDay], [Tel], [Mobile], [Email], [Address], [ZipCode], [TelOwnerName]) VALUES (10002, 2, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[ShowWebUserFieldTable] OFF
SET IDENTITY_INSERT [dbo].[SiteVisitTable] ON 

INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (1, 1, CAST(0x3B3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (2, 1, CAST(0x3D3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (3, 2, CAST(0x433A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (4, 1, CAST(0x443A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (5, 1, CAST(0x463A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (6, 1, CAST(0x473A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (7, 1, CAST(0x6F3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (8, 1, CAST(0x733A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (9, 9, CAST(0x743A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (10, 29, CAST(0x763A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (11, 1, CAST(0x7E3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (12, 39, CAST(0x863A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (13, 62, CAST(0x873A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (14, 1, CAST(0x8B3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (15, 1, CAST(0x983A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (16, 16, CAST(0x993A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (17, 1, CAST(0x9F3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (18, 1, CAST(0xA03A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (19, 2, CAST(0xA13A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (20, 1, CAST(0xA23A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (21, 3, CAST(0xA43A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (22, 1, CAST(0xA53A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (23, 1, CAST(0xAB3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (24, 1, CAST(0xAE3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (25, 57, CAST(0xAF3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (26, 17, CAST(0xB03A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (10025, 2, CAST(0xBA3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (20025, 1, CAST(0xBC3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (20026, 1, CAST(0xBE3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (30025, 1, CAST(0xC23A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (40025, 1, CAST(0xCC3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (40026, 1, CAST(0xCF3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (50025, 1, CAST(0xD03A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (60025, 2, CAST(0xD33A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (70025, 1, CAST(0xE03A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (70026, 1, CAST(0xE13A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (80025, 16, CAST(0xEA3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (80026, 26, CAST(0xEB3A0B00 AS Date))
INSERT [dbo].[SiteVisitTable] ([Id], [View], [Date]) VALUES (90025, 19, CAST(0xEE3A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[SiteVisitTable] OFF
SET IDENTITY_INSERT [dbo].[SlideTable] ON 

INSERT [dbo].[SlideTable] ([Id], [Image], [AlternativeText], [Link], [OpenLink], [ShowTime], [Priority], [LanguageID], [Visibility], [Title1], [Title2], [Title3], [UserID]) VALUES (8, N'9eb0dcf2-0f63-4204-bd3d-01f0556f926d01.jpg', N'1', N'', N'_self', 1, 8, 18, 1, N'', N'', N'', 1)
SET IDENTITY_INSERT [dbo].[SlideTable] OFF
SET IDENTITY_INSERT [dbo].[StoreSettingTable] ON 

INSERT [dbo].[StoreSettingTable] ([Id], [EmailForBuy], [SmsForBuy], [OnlineBuy], [CashOnDelivery], [CardToCard], [PayAccount], [ChargeAccount], [PayWithoutRegister], [Tax], [TaxPercent], [Delivery]) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 62, 1)
SET IDENTITY_INSERT [dbo].[StoreSettingTable] OFF
SET IDENTITY_INSERT [dbo].[TagTable] ON 

INSERT [dbo].[TagTable] ([Id], [Name]) VALUES (4, N'test')
INSERT [dbo].[TagTable] ([Id], [Name]) VALUES (5, N'modem')
INSERT [dbo].[TagTable] ([Id], [Name]) VALUES (6, N'123')
SET IDENTITY_INSERT [dbo].[TagTable] OFF
SET IDENTITY_INSERT [dbo].[UserGroupAccessTable] ON 

INSERT [dbo].[UserGroupAccessTable] ([ID], [UserID], [GroupID]) VALUES (1, 1, 1)
INSERT [dbo].[UserGroupAccessTable] ([ID], [UserID], [GroupID]) VALUES (15, 12438, 10005)
INSERT [dbo].[UserGroupAccessTable] ([ID], [UserID], [GroupID]) VALUES (16, 12439, 10005)
INSERT [dbo].[UserGroupAccessTable] ([ID], [UserID], [GroupID]) VALUES (17, 12440, 10005)
INSERT [dbo].[UserGroupAccessTable] ([ID], [UserID], [GroupID]) VALUES (10015, 12435, 4)
SET IDENTITY_INSERT [dbo].[UserGroupAccessTable] OFF
SET IDENTITY_INSERT [dbo].[UserGroupTable] ON 

INSERT [dbo].[UserGroupTable] ([Id], [Name], [Visibility]) VALUES (1, N'admin', 1)
INSERT [dbo].[UserGroupTable] ([Id], [Name], [Visibility]) VALUES (4, N'users', 1)
INSERT [dbo].[UserGroupTable] ([Id], [Name], [Visibility]) VALUES (5, N'web User', 1)
INSERT [dbo].[UserGroupTable] ([Id], [Name], [Visibility]) VALUES (10005, N'اوپراتور', 1)
SET IDENTITY_INSERT [dbo].[UserGroupTable] OFF
SET IDENTITY_INSERT [dbo].[UserPercentTable] ON 

INSERT [dbo].[UserPercentTable] ([Id], [GroupID1], [GroupID2], [UserID], [Percent], [UserGroupID]) VALUES (10010, 5, -1, 0, 9, 4)
INSERT [dbo].[UserPercentTable] ([Id], [GroupID1], [GroupID2], [UserID], [Percent], [UserGroupID]) VALUES (20009, 2, -1, 0, 23, 1)
SET IDENTITY_INSERT [dbo].[UserPercentTable] OFF
SET IDENTITY_INSERT [dbo].[UserTable] ON 

INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (1, N'reza', N'hosseini', N'1', N'2', N'', NULL, 1, N'5', N'6', N'3', N'4', N'', N'', N'', N'', N'', N'', N'1', N'C4CA4238A0B923820DCC509A6F75849B', CAST(0x0000A5980151B684 AS DateTime), CAST(0x0000A58101387248 AS DateTime), CAST(0x0000A4E0014A792C AS DateTime), N'7', 0, NULL, 1, NULL, NULL, NULL, CAST(0x0000A51900E06C11 AS DateTime), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12435, N'reza', N'hosseoniasdasd', N'', N'', N'', CAST(0x0000A54C00AE5484 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'2', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A57A013E16D4 AS DateTime), CAST(0x0000A57A013BB217 AS DateTime), CAST(0x0000A54C00AE5484 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12438, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12436, N'3', N'3', N'', N'', N'', CAST(0x0000A55F012AEDC8 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'3', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A57A013E66FA AS DateTime), CAST(0x0000A57A013F07C2 AS DateTime), CAST(0x0000A55F012AEDC8 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12437, N'4', N'4', N'', N'', N'', CAST(0x0000A55F012B90AC AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'4', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012B90AC AS DateTime), CAST(0x0000A55F012B90AC AS DateTime), CAST(0x0000A55F012B90AC AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12438, N'5', N'5', N'', N'', N'', CAST(0x0000A55F012BCA18 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'5', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A56000DAA5A9 AS DateTime), CAST(0x0000A56000DABE5C AS DateTime), CAST(0x0000A55F012BCA18 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12435, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12439, N'6', N'6', N'', N'', N'', CAST(0x0000A55F012BDCD8 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'6', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012BDCD8 AS DateTime), CAST(0x0000A55F012BDCD8 AS DateTime), CAST(0x0000A55F012BDCD8 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12435, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12440, N'7', N'7', N'', N'', N'', CAST(0x0000A55F012BF6A0 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'7', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012BF6A0 AS DateTime), CAST(0x0000A55F012BF6A0 AS DateTime), CAST(0x0000A55F012BF6A0 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12436, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12441, N'8', N'8', N'', N'', N'', CAST(0x0000A55F012C0708 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'8', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012C0708 AS DateTime), CAST(0x0000A55F012C0708 AS DateTime), CAST(0x0000A55F012C0708 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12436, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12442, N'9', N'9', N'', N'', N'', CAST(0x0000A55F012C1770 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'9', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012C1770 AS DateTime), CAST(0x0000A55F012C1770 AS DateTime), CAST(0x0000A55F012C1770 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12438, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12443, N'10', N'10', N'', N'', N'', CAST(0x0000A55F012C2A30 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'10', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012C2A30 AS DateTime), CAST(0x0000A55F012C2A30 AS DateTime), CAST(0x0000A55F012C2A30 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12438, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12444, N'11', N'11', N'', N'', N'', CAST(0x0000A55F012C4650 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'11', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012C4650 AS DateTime), CAST(0x0000A55F012C4650 AS DateTime), CAST(0x0000A55F012C4650 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12438, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12445, N'12', N'12', N'', N'', N'', CAST(0x0000A55F012C558C AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'12', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012C558C AS DateTime), CAST(0x0000A55F012C558C AS DateTime), CAST(0x0000A55F012C558C AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12438, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12446, N'13', N'13', N'', N'', N'', CAST(0x0000A55F012C65F4 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'13', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A581013909A9 AS DateTime), CAST(0x0000A58101383950 AS DateTime), CAST(0x0000A55F012C65F4 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12440, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12447, N'14', N'14', N'', N'', N'', CAST(0x0000A55F012C7C38 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'14', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012C7C38 AS DateTime), CAST(0x0000A55F012C7C38 AS DateTime), CAST(0x0000A55F012C7C38 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12440, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (12448, N'15', N'15', N'', N'', N'', CAST(0x0000A55F012C8B74 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'15', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A55F012C8B74 AS DateTime), CAST(0x0000A55F012C8B74 AS DateTime), CAST(0x0000A55F012C8B74 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12441, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (22436, N'16', N'16', N'', N'', N'', CAST(0x0000A56101590EC4 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'16', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A56101590EC4 AS DateTime), CAST(0x0000A56101590EC4 AS DateTime), CAST(0x0000A56101590EC4 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12435, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (32437, N'asd', N'zxc', N's', N's', N'', CAST(0x0000A578013F2018 AS DateTime), 1, N'', N'', N's', N's', N'', N'', N'', N'', N'', N'', N'qq', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A578013F2018 AS DateTime), CAST(0x0000A578013F2018 AS DateTime), CAST(0x0000A578013F2018 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, 12437, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (42436, N'asd', N'asd', N'', N'', N'', CAST(0x0000A5840147F120 AS DateTime), 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'56', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A5840147F120 AS DateTime), CAST(0x0000A5840147F120 AS DateTime), CAST(0x0000A5840147F120 AS DateTime), N'', 1, NULL, 0, 0, 0, NULL, NULL, -1, N'1', N'1', NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (52436, N'رضا', N'حسینی', N'0670032999', N'05832720340', N'', CAST(0x0000A59401424400 AS DateTime), 0, NULL, NULL, NULL, N'بیماری روانی', N'کدئین', N'خارش بدن', N'سوزش معده', NULL, NULL, NULL, N'0670032999', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A59401424400 AS DateTime), CAST(0x0000A59401424400 AS DateTime), CAST(0x0000A59401424400 AS DateTime), NULL, 1, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (52437, N'رضا', N'حسینی', N'0670032999', N'05832720340', N'', CAST(0x0000A594014248B0 AS DateTime), 0, NULL, NULL, NULL, N'بیماری روانی', N'کدئین', N'خارش بدن', N'سوزش معده', NULL, NULL, NULL, N'0670032999', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A594014248B0 AS DateTime), CAST(0x0000A594014248B0 AS DateTime), CAST(0x0000A594014248B0 AS DateTime), NULL, 1, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (52438, N'رضا', N'حسینی', N'', N'', N'', CAST(0x0000A5940142E360 AS DateTime), 0, NULL, NULL, NULL, N'', N'', N'', N'', NULL, NULL, NULL, N'0670032999', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x0000A5940142E360 AS DateTime), CAST(0x0000A5940142E360 AS DateTime), CAST(0x0000A5940142E360 AS DateTime), NULL, 1, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate], [ParentID], [CardNumber], [AccountNumber], [EmployeeID], [RegUserID]) VALUES (62436, N'ali1', N'2', N'3', N'5', N'', CAST(0x0000A5980151DC94 AS DateTime), 0, NULL, NULL, NULL, N'6', N'7', N'8', N'9', NULL, NULL, NULL, N'1', N'C4CA4238A0B923820DCC509A6F75849B', CAST(0x0000A5980151DC94 AS DateTime), CAST(0x0000A5980151DC94 AS DateTime), CAST(0x0000A5980151DC94 AS DateTime), NULL, 1, NULL, 0, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserTable] OFF
SET IDENTITY_INSERT [dbo].[VisitorTable] ON 

INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (1, N'::1', CAST(0x6F3A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (2, N'::1', CAST(0x733A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (3, N'::1', CAST(0x743A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (4, N'::1', CAST(0x743A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (5, N'::1', CAST(0x743A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (6, N'::1', CAST(0x743A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (7, N'::1', CAST(0x743A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (8, N'::1', CAST(0x743A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (9, N'::1', CAST(0x743A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (10, N'::1', CAST(0x743A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (11, N'::1', CAST(0x743A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (12, N'::1', CAST(0x763A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (13, N'::1', CAST(0x7E3A0B00 AS Date), N'Chrome', N'43.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (14, N'::1', CAST(0x8B3A0B00 AS Date), N'Chrome', N'45.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (15, N'::1', CAST(0x983A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (16, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (17, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (18, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (19, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (20, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (21, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (22, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (23, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (24, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (25, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (26, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (27, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (28, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (29, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (30, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (31, N'::1', CAST(0x993A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (32, N'::1', CAST(0x9F3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (33, N'::1', CAST(0xA03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (34, N'::1', CAST(0xA13A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (35, N'::1', CAST(0xA23A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (36, N'::1', CAST(0xA43A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (37, N'::1', CAST(0xA43A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (38, N'::1', CAST(0xA43A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (39, N'::1', CAST(0xA53A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (40, N'::1', CAST(0xAB3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (41, N'::1', CAST(0xAE3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (42, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (43, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (44, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (45, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (46, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (47, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (48, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (49, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (50, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (51, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (52, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (53, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (54, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (55, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (56, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (57, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (58, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (59, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (60, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (61, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (62, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (63, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (64, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (65, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (66, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (67, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (68, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (69, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (70, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (71, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (72, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (73, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (74, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (75, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (76, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (77, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (78, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (79, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (80, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (81, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (82, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (83, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (84, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (85, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (86, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (87, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (88, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (89, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (90, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (91, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (92, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (93, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (94, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (95, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (96, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (97, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (98, N'::1', CAST(0xAF3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (99, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
GO
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (100, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (101, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (102, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (103, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (104, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (105, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (106, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (107, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (108, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (109, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (110, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (111, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (112, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (113, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (114, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (115, N'::1', CAST(0xB03A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (10042, N'::1', CAST(0xBA3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (20042, N'::1', CAST(0xBC3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (20043, N'::1', CAST(0xBE3A0B00 AS Date), N'Chrome', N'46.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (30042, N'::1', CAST(0xC23A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (40042, N'::1', CAST(0xCC3A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (40043, N'::1', CAST(0xCF3A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (50042, N'::1', CAST(0xD03A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (60042, N'::1', CAST(0xD33A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (70042, N'::1', CAST(0xE03A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (70043, N'::1', CAST(0xE13A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (80042, N'::1', CAST(0xEA3A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (80043, N'::1', CAST(0xEB3A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
INSERT [dbo].[VisitorTable] ([Id], [Ip], [Date], [BrowserName], [BrowserVersion], [Platform], [ScreenSize]) VALUES (90042, N'::1', CAST(0xEE3A0B00 AS Date), N'Chrome', N'47.0', N'WinNT', NULL)
SET IDENTITY_INSERT [dbo].[VisitorTable] OFF
SET IDENTITY_INSERT [dbo].[WalletTable] ON 

INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10036, 1220, 0, N'شارژ حساب از درگاه اینترنتی', N'', CAST(0x0000A5750134B303 AS DateTime), 1220, 1, -1, -1)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10037, 81000, 0, N'سود حاصل از محصول محصول 01 در شماره فاکتور 1', N'', CAST(0x0000A5750134E2ED AS DateTime), 82220, 1, 1, 10009)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10038, 36000, 0, N'سود حاصل از محصول پیراهن در شماره فاکتور 1', N'', CAST(0x0000A5750134E2EE AS DateTime), 118220, 1, 1, 10012)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10039, 26100, 0, N'سود حاصل از فاکتور 2', N'', CAST(0x0000A575013500CB AS DateTime), 144320, 1, 2, 10013)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10040, 97815, 0, N'سود حاصل از فاکتور 2', N'', CAST(0x0000A575013500CF AS DateTime), 242135, 1, 2, 10015)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10041, 10800, 0, N'سود حاصل از فاکتور 3', N'', CAST(0x0000A575013500FA AS DateTime), 252935, 1, 3, 10014)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10042, 15660, 0, N'سود حاصل از محصول جوراب در شماره فاکتور 2', N'', CAST(0x0000A5750135A84C AS DateTime), 15660, 12435, 2, 10013)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10043, 58689, 0, N'سود حاصل از محصول 123 در شماره فاکتور 2', N'', CAST(0x0000A5750135A84D AS DateTime), 74349, 12435, 2, 10015)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10044, 14850, 0, N'سود حاصل از فاکتور 3', N'', CAST(0x0000A5750135B4D8 AS DateTime), 89199, 12435, 3, 10014)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (10045, 555000, 0, N'شارژ حساب از درگاه اینترنتی', N'', CAST(0x0000A57501399C69 AS DateTime), 807935, 1, -1, -1)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (20033, 21600, 0, N'سود زیر مجموعه حاصل از فاکتور 1', N'', CAST(0x0000A5810142ED0D AS DateTime), 21600, 12446, 1, 10009)
INSERT [dbo].[WalletTable] ([Id], [Input], [Output], [InputWay], [OutputWay], [OccurDate], [Balance], [UserID], [FactorID], [ProductID]) VALUES (20034, 9600, 0, N'سود زیر مجموعه حاصل از فاکتور 1', N'', CAST(0x0000A5810142ED18 AS DateTime), 31200, 12446, 1, 10012)
SET IDENTITY_INSERT [dbo].[WalletTable] OFF
SET IDENTITY_INSERT [dbo].[WarehouseTable] ON 

INSERT [dbo].[WarehouseTable] ([Id], [Name], [Address]) VALUES (2, N'مغازه', N'بجنورد')
INSERT [dbo].[WarehouseTable] ([Id], [Name], [Address]) VALUES (3, N'انبار مرکزی', N'ندارد')
SET IDENTITY_INSERT [dbo].[WarehouseTable] OFF
SET IDENTITY_INSERT [dbo].[WebsiteSettingTable] ON 

INSERT [dbo].[WebsiteSettingTable] ([Id], [Address1], [Address2], [Address3], [Tel1], [Tel2], [Tel3], [Mobile1], [Mobile2], [Mobile3], [Email1], [Email2], [Email3], [Facebook], [Twitter], [GooglePlus], [Instagram], [Linkedin], [Github], [Skype], [Viber], [HeaderImage1], [HeaderImage2], [Logo1], [Logo2], [FooterImage1], [FooterImage2], [HeaderTitle], [FooterDescription], [CopyRightText], [CopyRightYear], [TameshkSibcheStatus], [LanguageID]) VALUES (3, N'2', N'3', N'3', N'3', N'3', N'3', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 18)
INSERT [dbo].[WebsiteSettingTable] ([Id], [Address1], [Address2], [Address3], [Tel1], [Tel2], [Tel3], [Mobile1], [Mobile2], [Mobile3], [Email1], [Email2], [Email3], [Facebook], [Twitter], [GooglePlus], [Instagram], [Linkedin], [Github], [Skype], [Viber], [HeaderImage1], [HeaderImage2], [Logo1], [Logo2], [FooterImage1], [FooterImage2], [HeaderTitle], [FooterDescription], [CopyRightText], [CopyRightYear], [TameshkSibcheStatus], [LanguageID]) VALUES (4, N'2', N'2', N'2', N'2', N'2', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, 19)
SET IDENTITY_INSERT [dbo].[WebsiteSettingTable] OFF
ALTER TABLE [dbo].[FactorTable] ADD  DEFAULT ((0)) FOR [Settlement]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [Name]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [Family]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [Father]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [CodeMeli]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [ShomareSh]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [BirthhDay]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [Tel]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [Mobile]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [Email]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [Address]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [ZipCode]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] ADD  DEFAULT ((0)) FOR [TelOwnerName]
GO
ALTER TABLE [dbo].[AlbumPicTable]  WITH CHECK ADD  CONSTRAINT [AlbumTable_AlbumPicTable] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[AlbumTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AlbumPicTable] CHECK CONSTRAINT [AlbumTable_AlbumPicTable]
GO
ALTER TABLE [dbo].[FactorDetailTable]  WITH CHECK ADD  CONSTRAINT [FactorTable_FactorDetailTable] FOREIGN KEY([FactorID])
REFERENCES [dbo].[FactorTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FactorDetailTable] CHECK CONSTRAINT [FactorTable_FactorDetailTable]
GO
ALTER TABLE [dbo].[GrandeeProductCommentTable]  WITH CHECK ADD  CONSTRAINT [GrandeeProductTable_GrandeeProductCommentTable] FOREIGN KEY([ProductID])
REFERENCES [dbo].[GrandeeProductTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrandeeProductCommentTable] CHECK CONSTRAINT [GrandeeProductTable_GrandeeProductCommentTable]
GO
ALTER TABLE [dbo].[GrandeeProductImageTable]  WITH CHECK ADD  CONSTRAINT [GrandeeProductTable_GrandeeProductImageTable] FOREIGN KEY([ProductID])
REFERENCES [dbo].[GrandeeProductTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrandeeProductImageTable] CHECK CONSTRAINT [GrandeeProductTable_GrandeeProductImageTable]
GO
ALTER TABLE [dbo].[GrandeeProductViewTable]  WITH CHECK ADD  CONSTRAINT [GrandeeProductTable_GrandeeProductViewTable] FOREIGN KEY([ProductID])
REFERENCES [dbo].[GrandeeProductTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrandeeProductViewTable] CHECK CONSTRAINT [GrandeeProductTable_GrandeeProductViewTable]
GO
ALTER TABLE [dbo].[KhoPrintDateTable]  WITH CHECK ADD  CONSTRAINT [FK_KhoPrintDateTable_Kho-AdvertiseTable] FOREIGN KEY([AdvertiseID])
REFERENCES [dbo].[Kho-AdvertiseTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhoPrintDateTable] CHECK CONSTRAINT [FK_KhoPrintDateTable_Kho-AdvertiseTable]
GO
ALTER TABLE [dbo].[MenuTable]  WITH CHECK ADD  CONSTRAINT [FK_MenuTable_MenuGroupTable] FOREIGN KEY([MenuGroupID])
REFERENCES [dbo].[MenuGroupTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuTable] CHECK CONSTRAINT [FK_MenuTable_MenuGroupTable]
GO
ALTER TABLE [dbo].[MultiLevelPercentTable]  WITH CHECK ADD  CONSTRAINT [FK_MultiLevelPercentTable_ProductGroupTable1] FOREIGN KEY([GroupID1])
REFERENCES [dbo].[ProductGroupTable1] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MultiLevelPercentTable] CHECK CONSTRAINT [FK_MultiLevelPercentTable_ProductGroupTable1]
GO
ALTER TABLE [dbo].[NewsCommentTable]  WITH CHECK ADD  CONSTRAINT [NewsTable_NewsCommentTable] FOREIGN KEY([NewsID])
REFERENCES [dbo].[NewsTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsCommentTable] CHECK CONSTRAINT [NewsTable_NewsCommentTable]
GO
ALTER TABLE [dbo].[NewsTable]  WITH CHECK ADD  CONSTRAINT [NewsGroupTable_NewsTable] FOREIGN KEY([NewsGroupID])
REFERENCES [dbo].[NewsGroupTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsTable] CHECK CONSTRAINT [NewsGroupTable_NewsTable]
GO
ALTER TABLE [dbo].[PermissionTable]  WITH CHECK ADD  CONSTRAINT [ModuleTable_PermissionTable] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[ModuleTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionTable] CHECK CONSTRAINT [ModuleTable_PermissionTable]
GO
ALTER TABLE [dbo].[PermissionTable]  WITH CHECK ADD  CONSTRAINT [UserGroupTable_PermissionTable] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroupTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionTable] CHECK CONSTRAINT [UserGroupTable_PermissionTable]
GO
ALTER TABLE [dbo].[PermissionTable]  WITH CHECK ADD  CONSTRAINT [UserTable_PermissionTable] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionTable] CHECK CONSTRAINT [UserTable_PermissionTable]
GO
ALTER TABLE [dbo].[PlacePicTable]  WITH CHECK ADD  CONSTRAINT [PlaceTable_PlacePicTable] FOREIGN KEY([PlaceID])
REFERENCES [dbo].[PlaceTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlacePicTable] CHECK CONSTRAINT [PlaceTable_PlacePicTable]
GO
ALTER TABLE [dbo].[ProductCommentTable]  WITH CHECK ADD  CONSTRAINT [ProductTable_ProductCommentTable] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCommentTable] CHECK CONSTRAINT [ProductTable_ProductCommentTable]
GO
ALTER TABLE [dbo].[ProductGroupTable2]  WITH CHECK ADD  CONSTRAINT [ProductGroupTable1_ProductGroupTable2] FOREIGN KEY([GroupID1])
REFERENCES [dbo].[ProductGroupTable1] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductGroupTable2] CHECK CONSTRAINT [ProductGroupTable1_ProductGroupTable2]
GO
ALTER TABLE [dbo].[ProductImageTable]  WITH CHECK ADD  CONSTRAINT [FK_ProductImageTable_ProductTable] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImageTable] CHECK CONSTRAINT [FK_ProductImageTable_ProductTable]
GO
ALTER TABLE [dbo].[ProductViewTable]  WITH CHECK ADD  CONSTRAINT [ProductTable_ProductViewTable] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductViewTable] CHECK CONSTRAINT [ProductTable_ProductViewTable]
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable]  WITH CHECK ADD  CONSTRAINT [FK_ShowWebUserFieldTable_ProductGroupTable1] FOREIGN KEY([GroupID])
REFERENCES [dbo].[ProductGroupTable1] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShowWebUserFieldTable] CHECK CONSTRAINT [FK_ShowWebUserFieldTable_ProductGroupTable1]
GO
ALTER TABLE [dbo].[UserGroupAccessTable]  WITH CHECK ADD  CONSTRAINT [UserGroupTable_UserGroupAccessTable] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroupTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserGroupAccessTable] CHECK CONSTRAINT [UserGroupTable_UserGroupAccessTable]
GO
ALTER TABLE [dbo].[UserGroupAccessTable]  WITH CHECK ADD  CONSTRAINT [UserTable_UserGroupAccessTable] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserGroupAccessTable] CHECK CONSTRAINT [UserTable_UserGroupAccessTable]
GO
ALTER TABLE [dbo].[UserPercentTable]  WITH CHECK ADD  CONSTRAINT [FK_UserPercentTable_ProductGroupTable1] FOREIGN KEY([GroupID1])
REFERENCES [dbo].[ProductGroupTable1] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserPercentTable] CHECK CONSTRAINT [FK_UserPercentTable_ProductGroupTable1]
GO
ALTER TABLE [dbo].[WalletTable]  WITH CHECK ADD  CONSTRAINT [FK_WalletTable_ToUserTable] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WalletTable] CHECK CONSTRAINT [FK_WalletTable_ToUserTable]
GO
