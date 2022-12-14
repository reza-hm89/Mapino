USE [TerendCmsDB]
GO
/****** Object:  Table [dbo].[AacOrderTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[AgentTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
 CONSTRAINT [PK_dbo.AgentTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AlbumPicTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[AlbumTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
 CONSTRAINT [PK_dbo.AlbumTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BackupTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[BankAccountTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[CustomerTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[ErrorTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[FactorDetailTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[FactorStatusTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[FactorTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[FAQTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[GrandeeProductCommentTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[GrandeeProductImageTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[GrandeeProductTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[GrandeeProductViewTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[Kho-AdvertiseTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kho-BoxTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[Kho-HolidaysTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[Kho-PageTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[KhoPrintDateTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[LanguageTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[LinkTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[LogTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuGroupTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[MenuTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[MessageTable]    Script Date: 1/11/2016 12:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Body] [ntext] NULL,
	[SendDate] [datetime] NULL,
	[UserIp] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.MessageTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ModuleTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[MultiLevelPercentTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[NewsCommentTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[NewsGroupTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[NewsTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[OurServiceTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[PackageTable]    Script Date: 1/11/2016 12:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackageTable](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [bigint] NULL,
	[Discount] [bigint] NULL,
	[Expire] [tinyint] NULL,
	[Description] [ntext] NULL,
	[Visibility] [bit] NULL,
 CONSTRAINT [PK_dbo.PackageTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[PermissionTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[PlaceTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[ProductCommentTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[ProductGroupTable1]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[ProductGroupTable2]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[ProductImageTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[ProductTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[ProductViewTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[RegionTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[SettlementTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[ShowWebUserFieldTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[SiteVisitTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[SlideTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
 CONSTRAINT [PK_dbo.SlideTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SmsTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[StoreSettingTable]    Script Date: 1/11/2016 12:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreSettingTable](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[TagTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[TameshkProductTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[UserGroupAccessTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[UserGroupTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[UserPercentTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[UserTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
 CONSTRAINT [PK_dbo.UserTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VisitorTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[WalletTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[WarehouseProductTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[WarehouseTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[WebsiteSettingTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
/****** Object:  Table [dbo].[WebUserTable]    Script Date: 1/11/2016 12:09:27 PM ******/
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
