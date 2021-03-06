volksklang.database.windows.net
volksadmin
V0lksklang
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12.07.2021 17:23:35 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12.07.2021 17:23:35 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12.07.2021 17:23:35 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12.07.2021 17:23:35 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12.07.2021 17:23:35 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12.07.2021 17:23:35 ******/
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bezeichnung]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bezeichnung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Kuerzel] [nvarchar](max) NULL,
	[Parent] [int] NULL,
 CONSTRAINT [PK_Bezeichnung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bild]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bild](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Inhalt] [varbinary](max) NULL,
 CONSTRAINT [PK_Bild] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Erfasser]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Erfasser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Erfasser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [varbinary](max) NULL,
	[UntrustedName] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Size] [bigint] NOT NULL,
	[UploadDT] [datetime2](7) NOT NULL,
	[Serial] [int] NOT NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Herkunft]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Herkunft](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Herkunft] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorie]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kategorie] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorie2]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorie2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kategorie2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorie3]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorie3](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kategorie3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objekt]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objekt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HerkunftID] [int] NULL,
	[StandortID] [int] NULL,
	[Objektbezeichnung] [nvarchar](max) NULL,
	[KategorieID] [int] NULL,
	[Beschreibung] [nvarchar](max) NULL,
	[Material] [nvarchar](max) NULL,
	[Abmessungen] [nvarchar](max) NULL,
	[Zustand] [nvarchar](max) NULL,
	[Objektbeschriftung] [nvarchar](max) NULL,
	[BildID] [int] NULL,
	[BezeichnungID] [int] NULL,
	[Datum] [datetime2](7) NOT NULL,
	[Euro] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Vorlage] [bit] NOT NULL,
	[Kuerzel] [varchar](max) NULL,
 CONSTRAINT [PK_Objekt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objekt2]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objekt2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kategorie2ID] [int] NULL,
 CONSTRAINT [PK_Objekt2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objekt3]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objekt3](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kategorie3] [int] NULL,
 CONSTRAINT [PK_Objekt3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Standort]    Script Date: 12.07.2021 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Standort](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Standort] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210215173519_SqlServer', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221102810_File', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221134552_FileSerial', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221152647_Bezeichn', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221153039_Bezeichns', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221162440_Bezeichnung', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221162836_Bezeichnung2', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221164229_Erfasser', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221164325_Erfasser2', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221170830_Vorlage', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210221180304_Typ', N'5.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210223154235_securtiy', N'5.0.3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2ea46719-46e9-4af4-b328-18558ab6819e', N'p_rath@gmx.at', N'P_RATH@GMX.AT', N'p_rath@gmx.at', N'P_RATH@GMX.AT', 1, N'AQAAAAEAACcQAAAAEOa4pEkavnbB6sE+bhXxFHV6tm8/T5FTWTRq3scWJPm/AE1xEV8ofOfwOdHfgGu9Qg==', N'XWSS34QQ263GD45QJNHPNNSPV3LAEQ6V', N'3a9b7fe7-741c-4f86-9ad1-c335ff2b6fa8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'466f0e25-e162-4bee-9f9a-3a245f9abbd0', N'erwald@gmx.at', N'ERWALD@GMX.AT', N'erwald@gmx.at', N'ERWALD@GMX.AT', 1, N'AQAAAAEAACcQAAAAED/CLRHXJsChNn875DIXsW3yO+h7kALHUKJLIegSCKqRB7bzl/CIZtsOWk7eImflNg==', N'S3MLPG3N5RKP3CNXM5WVUGEXHCI3YYHA', N'2431c2ef-3572-4dd4-86e0-15808fe59214', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'edfae244-4e0f-47e3-886c-3dd04aa7565d', N'a.wiesenhofer@volksklang.at', N'A.WIESENHOFER@VOLKSKLANG.AT', N'a.wiesenhofer@volksklang.at', N'A.WIESENHOFER@VOLKSKLANG.AT', 1, N'AQAAAAEAACcQAAAAEMb68mXWfdeDxNmeBvBtI3zt4/D8VyRPIuzDv3ZJERajGBKGuglvDi4aXJx/qbKVqA==', N'VHEN52SPEN5Y7G5BBXSUOYNRZA3XNMX7', N'8f25aa83-c17c-478b-a100-bf93f653c87b', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Bezeichnung] ON 

INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (1, N'Langspielplatte', N'LP', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (2, N'Musicassette', N'MC', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (3, N'8-Spurband', N'8SP-B', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (4, N'Minidisk', N'MD', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (5, N'DAT', N'DAT', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (6, N'Phonographenwalze', N'PhonoW.', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (7, N'Schellackplatte', N'SCH-P', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (8, N'Tonband', N'TB', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (9, N'VCR', N'VCR', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (10, N'Video 2000', N'V2000', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (11, N'VHS', N'VHS', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (12, N'Betamax', N'BMX', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (13, N'VHS-C', N'VHSC', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (14, N'Betacam', N'BCAM', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (15, N'Video 8', N'V8', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (16, N'Schmalfilm', N'S8', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (17, N'Hi8', N'H8', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (18, N'Digigtal 8', N'DIG8', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (19, N'Autogrammkarte', N'AK', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (20, N'Postkarte', N'PK', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (21, N'Noten', N'NO', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (22, N'Musik Dokumente (Flyer, Plakate etc.)', N'MDOK', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (23, N'Musikinstrument', N'INSTR', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (24, N'Tonträgerkatalog', N'TTKAT', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (25, N'CompactDisk', N'CD', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (26, N'Musikdatei', N'MP3', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (27, N'Bild Datei', N'JPG', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (28, N'Filmdatei MP4', N'MP4', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (29, N'Filmdatei MKV', N'MKV', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (30, N'DVD', N'DVD', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (31, N'Filmdatei Mpg', N'MPG', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (32, N'Fanartikel', N'FanA', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (33, N'Auszeichnungen', N'AUSZ', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (34, N'Buch', N'BU', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (35, N'Handschrift', N'HSch.', NULL)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (36, N'Blechblasinstrumente (z.B. Trompete, Posaune usw.)', N'BLECH', 23)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (37, N'Holzblasinstrumente (z.B. Klarinette, Querpfeife usw.)', N'HOLZ', 23)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (38, N'Saiteninstrumente (z.B. Geige, Gitarre, Kontrabass usw.)', N'SEITE', 23)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (39, N'Harmonikainstrumente (z.B. Steirische Harmonika, Akkordeon usw.)', N'HARM', 23)
INSERT [dbo].[Bezeichnung] ([ID], [Name], [Kuerzel], [Parent]) VALUES (40, N'Hosensackinstrumente (z.B. Okarina, Maultrommel, Mundharmonika usw.)', N'HOSACK', 23)
SET IDENTITY_INSERT [dbo].[Bezeichnung] OFF
GO
SET IDENTITY_INSERT [dbo].[Herkunft] ON 

INSERT [dbo].[Herkunft] ([ID], [Name]) VALUES (1, N'Vorlass')
INSERT [dbo].[Herkunft] ([ID], [Name]) VALUES (2, N'Nachlass')
INSERT [dbo].[Herkunft] ([ID], [Name]) VALUES (8, N'Leihgabe')
INSERT [dbo].[Herkunft] ([ID], [Name]) VALUES (9, N'Kauf')
SET IDENTITY_INSERT [dbo].[Herkunft] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategorie] ON 

INSERT [dbo].[Kategorie] ([ID], [Name]) VALUES (1, N'Blasmusik')
INSERT [dbo].[Kategorie] ([ID], [Name]) VALUES (4, N'Volksmusik')
INSERT [dbo].[Kategorie] ([ID], [Name]) VALUES (5, N'Volkstümliche Musik')
INSERT [dbo].[Kategorie] ([ID], [Name]) VALUES (6, N'Volkstümlicher Schlager')
INSERT [dbo].[Kategorie] ([ID], [Name]) VALUES (7, N'Experimentelle Musik')
INSERT [dbo].[Kategorie] ([ID], [Name]) VALUES (8, N'Sampler')
SET IDENTITY_INSERT [dbo].[Kategorie] OFF
GO
SET IDENTITY_INSERT [dbo].[Objekt] ON 

INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (54, 1, NULL, NULL, NULL, N'
Langspielplatte mit dem Titel: Heimatklänge Inhalt: 10 Musiktitel, 5 Musiktitel pro Seite
Seite A:

1. Drobn auf der Pack Ländler – Kapelle Köppel 2. Der steirische Brauch Walzerlied – Kern Buam
3. Weststeirer Polka – Kapelle Köppel
4. Spielt im Dorf die Blaskapell ́n – Walzerlied
Berglandecho, Gesang Edi Wolf
5. Die lustige Harmonika Polka – Kern Buam

Seite B:
1. Ich hab an Bauernkasten Walzerlied – Fritz Edtmeier
mit instrumentaler Begleitung der Kern Buam
2. Heut fahr ́n wir fort Polka – Berglandecho
3. Die Dorffeuerwehr Polkalied – Kapelle Köppel
4. Koanachtaler-Jodler – Kapelle Köppel, Solojodler Sigi Zwanzger 5. Gruß aus Mariazell Polka – Pretuler Buam

Hersteller: Firma Polydor mit der Nummer 82047 Club-Sonderauflage 4/66 Herstellungsjahr: 1966', N'a) Schallplattencover/Schallplattenhülle aus Karton, Vorder- Rückseite farbig bedruckt Druck: Lang & Gratzenberger, Wien
b) Innenhülle aus Papier mit einem Mittelloch
b) Langspielplatte aus Vinyl, Presswerk der Firma Polydor in Deutschland
und der Geschwindigkeit M 33 UpM, Stereo', N'a) Cover/Hülle: 26x26 cm
b) Innenhülle: 25x25cm
c) Langspielplatte mit dem Durchmesser 10 Inch = 25 cm', N'Cover: Innenhülle: Schallplatte:
Keine Risse, minimale Bereibungen
leichte Einrisse und kleine Flecken
Zustand 2- (Zustand =neu/Zustand 5=nur mehr zur Dekoration)', N'Cover: Beschriftung auf der Rückseite mit Bleistift 2B Innenhülle: Beschriftung mit Bleistift 2B
Schallplatte: Beschriftung am Labelaufdruck mit Bleistift 2B
(AW-1a) (AW-1b) (AW-1c)', NULL, 1, CAST(N'2020-01-01T15:00:00.0000000' AS DateTime2), 10, N'Hubert Kaufmann', 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (56, 2, NULL, NULL, NULL, N'Okarina:

a) Holzschatuelle mit Logo der Firma Matthäus Bauer, Wien VI/1, Mariahilferstrasse 19/21, Gegründet 1836 mit 2 Okarinen. Die Firma Bauer hat die Okarinen
über die Firma Meißen in Deutschland bezogen und mit eigenem Logo weiterverkauft. Da auf dem Logo die Firma Bauer noch als „K&K Hoflieferant“ geführt wird, stammt die Schatulle mit Inhalt aus der Zeit zwischen 1900 und 1918
b) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung Fis
c) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung C
Die Okarina (ital. ocarina = kleine Gans) ist eine Gefäßflöte/Kugelflöte,
die zur Familie der Schnabelflöten gehört. Okarinen können aus gebranntem, glasiertem Ton, aus Porzellan, luftgetrocknetem Ton oder aus Holz sein.
Der Klang der „Porzellan“ Okarina ist viel härter als der Klang einer herkömmlichen Okarina aus Ton. Die Porzellan Okarina hat sich, trotz ihrer edlen Herkunft
und schönen Bemalung, nie durchgesetzt und gilt heute eher als Sammlerinstrument.', N'a) Holzschatulle mit dunkelbraunem Leder überzogen, auf der rechten Innenseite
eine Formschale für 2 Okarinen mit rotem Samt ausgelegt. Umfasst wird diese Formschale mit einer roten Kordel. Auf der linken Innenseite ist ein Wattepolster mit roter Seide überzogen. Auf diesem Polster ist das Logo angebracht. Der Verschluss der Holzschatulle besteht aus zwei Messing-Verschlüssen, auf denen kleine Verzierungen angebracht sind.
b) Beide Okarinen bestehen aus Porzellan, bemalt mit blauem Zwiebelmuster, und sind glasiert.', N'a) Holzschatulle 23cm x 130 cm x 5 cm 
b) Fis Okarina: 19 cm x 7,5 cm
c) C Okarina: 15,5 cm x 6,5 cm', N'a) Schatulle – außen: Leder berieben, Messing Verschlüsse, leichte Patina
b) Schatulle – innen: Zustand 1 (Zustand 1=neuwertig/Zustand =nicht sammelwürdig)', N'Schatulle: Auf der Innenseite der Schatulle ein mit Edding 8040 beschriftetes, Textilband einlegen (AW-2a)
Okarinen: Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.
Fis Okarina Inventarnummer AW-2b
C Okarina Inventarnummer AW-2c', NULL, 23, CAST(N'2021-04-23T22:00:00.0000000' AS DateTime2), 0, N'Gerda Steiner', 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (57, 1, NULL, NULL, 8, N'Test 2;

Langspielplatte mit dem Titel: Heimatklänge Inhalt: 10 Musiktitel, 5 Musiktitel pro Seite
Seite A:

1. Drobn auf der Pack Ländler – Kapelle Köppel 2. Der steirische Brauch Walzerlied – Kern Buam
3. Weststeirer Polka – Kapelle Köppel
4. Spielt im Dorf die Blaskapell ́n – Walzerlied
Berglandecho, Gesang Edi Wolf
5. Die lustige Harmonika Polka – Kern Buam

Seite B:
1. Ich hab an Bauernkasten Walzerlied – Fritz Edtmeier
mit instrumentaler Begleitung der Kern Buam
2. Heut fahr ́n wir fort Polka – Berglandecho
3. Die Dorffeuerwehr Polkalied – Kapelle Köppel
4. Koanachtaler-Jodler – Kapelle Köppel, Solojodler Sigi Zwanzger 5. Gruß aus Mariazell Polka – Pretuler Buam

Hersteller: Firma Polydor mit der Nummer 82047 Club-Sonderauflage 4/66 Herstellungsjahr: 1966', N'a) Schallplattencover/Schallplattenhülle aus Karton, Vorder- Rückseite farbig bedruckt Druck: Lang & Gratzenberger, Wien
b) Innenhülle aus Papier mit einem Mittelloch
b) Langspielplatte aus Vinyl, Presswerk der Firma Polydor in Deutschland
und der Geschwindigkeit M 33 UpM, Stereo', N'a) Cover/Hülle: 26x26 cm
b) Innenhülle: 25x25cm
c) Langspielplatte mit dem Durchmesser 10 Inch = 25 cm', N'Cover: Innenhülle: Schallplatte:
Keine Risse, minimale Bereibungen
leichte Einrisse und kleine Flecken
Zustand 2- (Zustand =neu/Zustand 5=nur mehr zur Dekoration)', N'Cover: Beschriftung auf der Rückseite mit Bleistift 2B Innenhülle: Beschriftung mit Bleistift 2B
Schallplatte: Beschriftung am Labelaufdruck mit Bleistift 2B
(AW-1a) (AW-1b) (AW-1c)', NULL, 23, CAST(N'2020-01-01T15:00:00.0000000' AS DateTime2), 10, N'Hubert Kaufmann', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (58, 9, NULL, NULL, NULL, N'Test 3;

a) Holzschatulle mit Logo der Firma Matthäus Bauer, Wien VI/1, Mariahilferstrasse 19/21, Gegründet 1836 mit 2 Okarinen. Die Firma Bauer hat die Okarinen
über die Firma Meißen in Deutschland bezogen und mit eigenem Logo weiterverkauft. Da auf dem Logo die Firma Bauer noch als „K&K Hoflieferant“ geführt wird, stammt die Schatulle mit Inhalt aus der Zeit zwischen 1900 und 1918
b) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung Fis
c) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung C
Die Okarina (ital. ocarina = kleine Gans) ist eine Gefäßflöte/Kugelflöte,
die zur Familie der Schnabelflöten gehört. Okarinen können aus gebranntem, glasiertem Ton, aus Porzellan, luftgetrocknetem Ton oder aus Holz sein.
Der Klang der „Porzellan“ Okarina ist viel härter als der Klang einer herkömmlichen Okarina aus Ton. Die Porzellan Okarina hat sich, trotz ihrer edlen Herkunft
und schönen Bemalung, nie durchgesetzt und gilt heute eher als Sammlerinstrument.', N'a) Holzschatulle mit dunkelbraunem Leder überzogen, auf der rechten Innenseite
eine Formschale für 2 Okarinen mit rotem Samt ausgelegt. Umfasst wird diese Formschale mit einer roten Kordel. Auf der linken Innenseite ist ein Wattepolster mit roter Seide überzogen. Auf diesem Polster ist das Logo angebracht. Der Verschluss der Holzschatulle besteht aus zwei Messing-Verschlüssen, auf denen kleine Verzierungen angebracht sind.
b) Beide Okarinen bestehen aus Porzellan, bemalt mit blauem Zwiebelmuster, und sind glasiert.', N'a) Holzschatulle 23cm x 130 cm x 5 cm b) Fis Okarina: 19 cm x 7,5 cm
c) C Okarina: 15,5 cm x 6,5 cm', N'a) Schatulle – außen: Leder berieben, Messing Verschlüsse, leichte Patina
b) Schatulle – innen: Zustand 1 (Zustand 1=neuwertig/Zustand =nicht sammelwürdig)', N'Schatulle: Auf der Innenseite der Schatulle ein mit Edding 8040 beschriftetes, Textilband einlegen (AW-2a)
Okarinen: Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.
Fis Okarina Inventarnummer AW-2b
C Okarina Inventarnummer AW-2c', NULL, 40, CAST(N'2020-02-12T15:00:00.0000000' AS DateTime2), 44, N'Herbert Fuchs', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (59, 8, NULL, NULL, NULL, N'Tonträgerkatalog:
Sammelverzeichnis aller 45UpM-Schallplatten (Normal- und Sonderklasse – Extendet Play) folgender Firmen bis 30. September 1955:
1. Columbia
2. His Master ́s Voice
3. Parlophon
4. Odeon
5. M.G.M (Metro Goldwyn Mayer)
Das Sammelverzeichnis hat einen Umfang von 59 Seiten und wurde nur an Vertragshändler abgegeben, damit diese die Bestellungen für ihre Kunden tätigen konnten. Dieses Verzeichnis wurde von der Österreichischen Columbia Grammophon Gesellschaft, 1010 Wien, Kärntnerstraße 80, ausgegeben.
Die Single Schallplatte (45 UpM) wurde um 1949 eingeführt. In diesem Verzeichnis aus dem Jahre 1955 befinden sich 220 Musiktitel aus den Bereichen Klassik und amerikanische Musikinterpreten wie z. B. Duke Ellington, Benny Goodman, usw.
Es kommen noch keine Interpreten der ländlichen Volks- oder Blasmusik sowie des Volksgesanges vor. In Amerika erfolgte die Umstellung von 78 UpM auf 45 UpM
um 1954. Die 45 UpM Singles mit Musiktiteln der ländlichen Volksmusik, Volksgesang und Blasmusik wurden erst ab 1956/1957 erzeugt und in Österreich verkauft. Auch die 45 UpM Singles der Original Oberkrainer V.S. Avsenik gelangten erst ab 1956/1957 zum Verkauf. Bis ca. 1959/1960 wurden noch gleiche Musiktitel parallel auf
78 UpM Schellacks und 45 UpM Singles verkauft.', N'Das Verzeichnis ist auf Papier gedruck und mit Heftklammern fixiert.', N'21 cm x 14,3 cm', N'Das Sammlerverzeichnis ist in sehr schönem Zustand, auf der Rückseite sind leichte Knicke.', N'Beschriftung auf der Innenseite vom Titelblatt mit Bleistift 2B
', NULL, 24, CAST(N'2020-02-23T13:00:00.0000000' AS DateTime2), 0, N'Hedwig Mair', 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (60, 1, NULL, NULL, NULL, N'Fanartikel:

Bierkrug:

Weißer Bierkrug glasiert und bemalt mit grünem Rand, Lorbeerkranz, dem Wappen der Stadt Wien und dem Logo des Deutschen Sängerbundes. Weiters mit der Aufschrift „Deutsches Sängerbundesfest Wien 1928 – 19.-23. Juli 1928.“
Auf der Unterseite des Kruges befindet sich die Herstellermarke:
Porzellan-Malerei Ferd. Vasold – Liezen, Steiermark', N'Bierkrug aus Porzellan, handbemalen und glasiert', N'11 cm Höhe
8,5 cm Durchmesser', N'Der Krug weist einige Beschädigungen auf
- Am oberen Rand – Abplatzungen der Glasur
- Am oberen Rand – 2 Stellen leicht ausgeschlagen
- Am unteren Rand ist ein kleines Eck ausgeschlagen (1,5 cm x 0,5 cm)
', N'Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.', NULL, 32, CAST(N'2018-03-13T15:00:00.0000000' AS DateTime2), 0, N'Robert Hold', 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (61, 9, NULL, NULL, 5, N'Autogrammkarte:

Autogrammkarte des Edelweiß Duos (Hans und Hermann) im Querformat.  Die Autogrammkarte ist anläßlich der Erscheinung ihrer LP/MC "Servus Gruezi Hallo" bei der Plattenfirma Amadeo in den 1970er Jahren erschienen.
Autogrammadresse: Johann Pammer, Weizbachbach 89a, 8045 Graz.', N'Autogrammkarte in Farbe', N'10,5x12,5cm', N'Die Autogrammkarte ist ohne Knicke und Risse. Zustand 2', N'Beschriftung auf der Rückseite mit Bleistift 2B', NULL, 19, CAST(N'2021-05-14T17:00:00.0000000' AS DateTime2), 5, N'Albin Wiesenhofer', 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (66, 1, NULL, NULL, NULL, N'
Langspielplatte mit dem Titel: Heimatklänge Inhalt: 10 Musiktitel, 5 Musiktitel pro Seite
Seite A:

1. Drobn auf der Pack Ländler – Kapelle Köppel 2. Der steirische Brauch Walzerlied – Kern Buam
3. Weststeirer Polka – Kapelle Köppel
4. Spielt im Dorf die Blaskapell ́n – Walzerlied
Berglandecho, Gesang Edi Wolf
5. Die lustige Harmonika Polka – Kern Buam

Seite B:
1. Ich hab an Bauernkasten Walzerlied – Fritz Edtmeier
mit instrumentaler Begleitung der Kern Buam
2. Heut fahr ́n wir fort Polka – Berglandecho
3. Die Dorffeuerwehr Polkalied – Kapelle Köppel
4. Koanachtaler-Jodler – Kapelle Köppel, Solojodler Sigi Zwanzger 5. Gruß aus Mariazell Polka – Pretuler Buam

Hersteller: Firma Polydor mit der Nummer 82047 Club-Sonderauflage 4/66 Herstellungsjahr: 1966', N'a) Schallplattencover/Schallplattenhülle aus Karton, Vorder- Rückseite farbig bedruckt Druck: Lang & Gratzenberger, Wien
b) Innenhülle aus Papier mit einem Mittelloch
b) Langspielplatte aus Vinyl, Presswerk der Firma Polydor in Deutschland
und der Geschwindigkeit M 33 UpM, Stereo', N'a) Cover/Hülle: 26x26 cm
b) Innenhülle: 25x25cm
c) Langspielplatte mit dem Durchmesser 10 Inch = 25 cm', N'Cover: Innenhülle: Schallplatte:
Keine Risse, minimale Bereibungen
leichte Einrisse und kleine Flecken
Zustand 2- (Zustand =neu/Zustand 5=nur mehr zur Dekoration)', N'Cover: Beschriftung auf der Rückseite mit Bleistift 2B Innenhülle: Beschriftung mit Bleistift 2B
Schallplatte: Beschriftung am Labelaufdruck mit Bleistift 2B
(AW-1a) (AW-1b) (AW-1c)', NULL, 1, CAST(N'2020-01-01T15:00:00.0000000' AS DateTime2), 10, N'Hubert Kaufmann', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (67, 1, NULL, NULL, NULL, N'
Langspielplatte mit dem Titel: Heimatklänge Inhalt: 10 Musiktitel, 5 Musiktitel pro Seite
Seite A:

1. Drobn auf der Pack Ländler – Kapelle Köppel 2. Der steirische Brauch Walzerlied – Kern Buam
3. Weststeirer Polka – Kapelle Köppel
4. Spielt im Dorf die Blaskapell ́n – Walzerlied
Berglandecho, Gesang Edi Wolf
5. Die lustige Harmonika Polka – Kern Buam

Seite B:
1. Ich hab an Bauernkasten Walzerlied – Fritz Edtmeier
mit instrumentaler Begleitung der Kern Buam
2. Heut fahr ́n wir fort Polka – Berglandecho
3. Die Dorffeuerwehr Polkalied – Kapelle Köppel
4. Koanachtaler-Jodler – Kapelle Köppel, Solojodler Sigi Zwanzger 5. Gruß aus Mariazell Polka – Pretuler Buam

Hersteller: Firma Polydor mit der Nummer 82047 Club-Sonderauflage 4/66 Herstellungsjahr: 1966', N'a) Schallplattencover/Schallplattenhülle aus Karton, Vorder- Rückseite farbig bedruckt Druck: Lang & Gratzenberger, Wien
b) Innenhülle aus Papier mit einem Mittelloch
b) Langspielplatte aus Vinyl, Presswerk der Firma Polydor in Deutschland
und der Geschwindigkeit M 33 UpM, Stereo', N'a) Cover/Hülle: 26x26 cm
b) Innenhülle: 25x25cm
c) Langspielplatte mit dem Durchmesser 10 Inch = 25 cm', N'Cover: Innenhülle: Schallplatte:
Keine Risse, minimale Bereibungen
leichte Einrisse und kleine Flecken
Zustand 2- (Zustand =neu/Zustand 5=nur mehr zur Dekoration)', N'Cover: Beschriftung auf der Rückseite mit Bleistift 2B Innenhülle: Beschriftung mit Bleistift 2B
Schallplatte: Beschriftung am Labelaufdruck mit Bleistift 2B
(AW-1a) (AW-1b) (AW-1c)', NULL, 1, CAST(N'2020-01-01T15:00:00.0000000' AS DateTime2), 10, N'Hubert Kaufmann', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (69, 1, NULL, NULL, NULL, N'Fanartikel:

Bierkrug:

Weißer Bierkrug glasiert und bemalt mit grünem Rand, Lorbeerkranz, dem Wappen der Stadt Wien und dem Logo des Deutschen Sängerbundes. Weiters mit der Aufschrift „Deutsches Sängerbundesfest Wien 1928 – 19.-23. Juli 1928.“
Auf der Unterseite des Kruges befindet sich die Herstellermarke:
Porzellan-Malerei Ferd. Vasold – Liezen, Steiermark', N'Bierkrug aus Porzellan, handbemalen und glasiert', N'11 cm Höhe
8,5 cm Durchmesser', N'Der Krug weist einige Beschädigungen auf
- Am oberen Rand – Abplatzungen der Glasur
- Am oberen Rand – 2 Stellen leicht ausgeschlagen
- Am unteren Rand ist ein kleines Eck ausgeschlagen (1,5 cm x 0,5 cm)
', N'Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.', NULL, 32, CAST(N'2018-03-13T15:00:00.0000000' AS DateTime2), 0, N'Robert Hold', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (71, 2, NULL, NULL, NULL, N'Okarina:

a) Holzschatuelle mit Logo der Firma Matthäus Bauer, Wien VI/1, Mariahilferstrasse 19/21, Gegründet 1836 mit 2 Okarinen. Die Firma Bauer hat die Okarinen
über die Firma Meißen in Deutschland bezogen und mit eigenem Logo weiterverkauft. Da auf dem Logo die Firma Bauer noch als „K&K Hoflieferant“ geführt wird, stammt die Schatulle mit Inhalt aus der Zeit zwischen 1900 und 1918
b) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung Fis
c) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung C
Die Okarina (ital. ocarina = kleine Gans) ist eine Gefäßflöte/Kugelflöte,
die zur Familie der Schnabelflöten gehört. Okarinen können aus gebranntem, glasiertem Ton, aus Porzellan, luftgetrocknetem Ton oder aus Holz sein.
Der Klang der „Porzellan“ Okarina ist viel härter als der Klang einer herkömmlichen Okarina aus Ton. Die Porzellan Okarina hat sich, trotz ihrer edlen Herkunft
und schönen Bemalung, nie durchgesetzt und gilt heute eher als Sammlerinstrument.', N'a) Holzschatulle mit dunkelbraunem Leder überzogen, auf der rechten Innenseite
eine Formschale für 2 Okarinen mit rotem Samt ausgelegt. Umfasst wird diese Formschale mit einer roten Kordel. Auf der linken Innenseite ist ein Wattepolster mit roter Seide überzogen. Auf diesem Polster ist das Logo angebracht. Der Verschluss der Holzschatulle besteht aus zwei Messing-Verschlüssen, auf denen kleine Verzierungen angebracht sind.
b) Beide Okarinen bestehen aus Porzellan, bemalt mit blauem Zwiebelmuster, und sind glasiert.', N'a) Holzschatulle 23cm x 130 cm x 5 cm 
b) Fis Okarina: 19 cm x 7,5 cm
c) C Okarina: 15,5 cm x 6,5 cm', N'a) Schatulle – außen: Leder berieben, Messing Verschlüsse, leichte Patina
b) Schatulle – innen: Zustand 1 (Zustand 1=neuwertig/Zustand =nicht sammelwürdig)', N'Schatulle: Auf der Innenseite der Schatulle ein mit Edding 8040 beschriftetes, Textilband einlegen (AW-2a)
Okarinen: Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.
Fis Okarina Inventarnummer AW-2b
C Okarina Inventarnummer AW-2c', NULL, 23, CAST(N'2021-04-23T22:00:00.0000000' AS DateTime2), 0, N'Gerda Steiner', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (72, 9, NULL, NULL, 8, N'
CD mit dem Titel: A ganze Weil g´s ungen und g´spielt
mit drei Musik- und Gesangsgruppen:
- Donnersbacher Viergesang
- Irdninger Klarinett´n Musi
- Walter Kern und seine Musikanten

Musik- und Gesangstitel lt. Scan

Produzent: MMusik - Manfred Machhammer, Am Sendergrund 22, Dobl
                    ISBN Nr. 9006315000651', N' CD Hülle aus Kunststoff
', N'a) Hülle: 14x12,5 cm
b) 4 seitiges Booklet
', N'Hülle: leichte Kratzer, gebrauchter Zustand 2-
CD: ohne Kratzer Zustand 1-

', N'Cover: Beschriftung auf der Rückseite mit Volksklang Archivaufkleber', NULL, 25, CAST(N'2020-01-01T15:00:00.0000000' AS DateTime2), 10, N'Albin Wiesenhofer', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (74, 2, NULL, NULL, NULL, N'Okarina:

a) Holzschatuelle mit Logo der Firma Matthäus Bauer, Wien VI/1, Mariahilferstrasse 19/21, Gegründet 1836 mit 2 Okarinen. Die Firma Bauer hat die Okarinen
über die Firma Meißen in Deutschland bezogen und mit eigenem Logo weiterverkauft. Da auf dem Logo die Firma Bauer noch als „K&K Hoflieferant“ geführt wird, stammt die Schatulle mit Inhalt aus der Zeit zwischen 1900 und 1918
b) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung Fis
c) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung C
Die Okarina (ital. ocarina = kleine Gans) ist eine Gefäßflöte/Kugelflöte,
die zur Familie der Schnabelflöten gehört. Okarinen können aus gebranntem, glasiertem Ton, aus Porzellan, luftgetrocknetem Ton oder aus Holz sein.
Der Klang der „Porzellan“ Okarina ist viel härter als der Klang einer herkömmlichen Okarina aus Ton. Die Porzellan Okarina hat sich, trotz ihrer edlen Herkunft
und schönen Bemalung, nie durchgesetzt und gilt heute eher als Sammlerinstrument.', N'a) Holzschatulle mit dunkelbraunem Leder überzogen, auf der rechten Innenseite
eine Formschale für 2 Okarinen mit rotem Samt ausgelegt. Umfasst wird diese Formschale mit einer roten Kordel. Auf der linken Innenseite ist ein Wattepolster mit roter Seide überzogen. Auf diesem Polster ist das Logo angebracht. Der Verschluss der Holzschatulle besteht aus zwei Messing-Verschlüssen, auf denen kleine Verzierungen angebracht sind.
b) Beide Okarinen bestehen aus Porzellan, bemalt mit blauem Zwiebelmuster, und sind glasiert.', N'a) Holzschatulle 23cm x 130 cm x 5 cm 
b) Fis Okarina: 19 cm x 7,5 cm
c) C Okarina: 15,5 cm x 6,5 cm', N'a) Schatulle – außen: Leder berieben, Messing Verschlüsse, leichte Patina
b) Schatulle – innen: Zustand 1 (Zustand 1=neuwertig/Zustand =nicht sammelwürdig)', N'Schatulle: Auf der Innenseite der Schatulle ein mit Edding 8040 beschriftetes, Textilband einlegen (AW-2a)
Okarinen: Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.
Fis Okarina Inventarnummer AW-2b
C Okarina Inventarnummer AW-2c', NULL, 23, CAST(N'2021-04-23T22:00:00.0000000' AS DateTime2), 0, N'Gerda Steiner', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (75, 9, NULL, NULL, NULL, N'Postkarte:

Postkarte mit Scherzmotiv im Querformat, die einen Jäger und drei Hasen und die Aufschrift: „Tuats ma nix, i tua euch a nix! Schiass, Mir ham ka Angst und Waidmannsheil“ zeigt. Es handelt sich um eine Kunstpostkarte, aufgegeben in Aflenz in der Steiermark am 7.5.1931 nach Bruck a. d. Mur (Entfernung 37 Kilometer). Die Karte ist mit zwei 5 Groschen Briefmarken frankiert.', N'Die Postkarte besteht auf der Vorderseite aus einem Holzfurnier, das auf einen Karton aufgeklebt wurde. Das Besondere an dieser Karte ist, dass das Motiv mittels Brandmalerei gezeichnet worden ist.', N'13,5 cm x 9,3 cm', N'Die Karte hat nur einen leichten Eckknick links unten, sonst ist die Karte in sehr schönem Zustand.', N'Beschriftung auf der Rückseite mit Bleistift 2B', NULL, 20, CAST(N'2021-05-14T17:00:00.0000000' AS DateTime2), 22, N'Gerlind Kerner', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (80, 1, NULL, NULL, NULL, N'
Langspielplatte mit dem Titel: Heimatklänge Inhalt: 10 Musiktitel, 5 Musiktitel pro Seite
Seite A:

1. Drobn auf der Pack Ländler – Kapelle Köppel 2. Der steirische Brauch Walzerlied – Kern Buam
3. Weststeirer Polka – Kapelle Köppel
4. Spielt im Dorf die Blaskapell ́n – Walzerlied
Berglandecho, Gesang Edi Wolf
5. Die lustige Harmonika Polka – Kern Buam

Seite B:
1. Ich hab an Bauernkasten Walzerlied – Fritz Edtmeier
mit instrumentaler Begleitung der Kern Buam
2. Heut fahr ́n wir fort Polka – Berglandecho
3. Die Dorffeuerwehr Polkalied – Kapelle Köppel
4. Koanachtaler-Jodler – Kapelle Köppel, Solojodler Sigi Zwanzger 5. Gruß aus Mariazell Polka – Pretuler Buam

Hersteller: Firma Polydor mit der Nummer 82047 Club-Sonderauflage 4/66 Herstellungsjahr: 1966', N'a) Schallplattencover/Schallplattenhülle aus Karton, Vorder- Rückseite farbig bedruckt Druck: Lang & Gratzenberger, Wien
b) Innenhülle aus Papier mit einem Mittelloch
b) Langspielplatte aus Vinyl, Presswerk der Firma Polydor in Deutschland
und der Geschwindigkeit M 33 UpM, Stereo', N'a) Cover/Hülle: 26x26 cm
b) Innenhülle: 25x25cm
c) Langspielplatte mit dem Durchmesser 10 Inch = 25 cm', N'Cover: Innenhülle: Schallplatte:
Keine Risse, minimale Bereibungen
leichte Einrisse und kleine Flecken
Zustand 2- (Zustand =neu/Zustand 5=nur mehr zur Dekoration)', N'Cover: Beschriftung auf der Rückseite mit Bleistift 2B Innenhülle: Beschriftung mit Bleistift 2B
Schallplatte: Beschriftung am Labelaufdruck mit Bleistift 2B
(AW-1a) (AW-1b) (AW-1c)', NULL, 1, CAST(N'2020-01-01T15:00:00.0000000' AS DateTime2), 10, N'Hubert Kaufmann', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (81, 2, NULL, NULL, NULL, N'Okarina:

a) Holzschatuelle mit Logo der Firma Matthäus Bauer, Wien VI/1, Mariahilferstrasse 19/21, Gegründet 1836 mit 2 Okarinen. Die Firma Bauer hat die Okarinen
über die Firma Meißen in Deutschland bezogen und mit eigenem Logo weiterverkauft. Da auf dem Logo die Firma Bauer noch als „K&K Hoflieferant“ geführt wird, stammt die Schatulle mit Inhalt aus der Zeit zwischen 1900 und 1918
b) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung Fis
c) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung C
Die Okarina (ital. ocarina = kleine Gans) ist eine Gefäßflöte/Kugelflöte,
die zur Familie der Schnabelflöten gehört. Okarinen können aus gebranntem, glasiertem Ton, aus Porzellan, luftgetrocknetem Ton oder aus Holz sein.
Der Klang der „Porzellan“ Okarina ist viel härter als der Klang einer herkömmlichen Okarina aus Ton. Die Porzellan Okarina hat sich, trotz ihrer edlen Herkunft
und schönen Bemalung, nie durchgesetzt und gilt heute eher als Sammlerinstrument.', N'a) Holzschatulle mit dunkelbraunem Leder überzogen, auf der rechten Innenseite
eine Formschale für 2 Okarinen mit rotem Samt ausgelegt. Umfasst wird diese Formschale mit einer roten Kordel. Auf der linken Innenseite ist ein Wattepolster mit roter Seide überzogen. Auf diesem Polster ist das Logo angebracht. Der Verschluss der Holzschatulle besteht aus zwei Messing-Verschlüssen, auf denen kleine Verzierungen angebracht sind.
b) Beide Okarinen bestehen aus Porzellan, bemalt mit blauem Zwiebelmuster, und sind glasiert.', N'a) Holzschatulle 23cm x 130 cm x 5 cm 
b) Fis Okarina: 19 cm x 7,5 cm
c) C Okarina: 15,5 cm x 6,5 cm', N'a) Schatulle – außen: Leder berieben, Messing Verschlüsse, leichte Patina
b) Schatulle – innen: Zustand 1 (Zustand 1=neuwertig/Zustand =nicht sammelwürdig)', N'Schatulle: Auf der Innenseite der Schatulle ein mit Edding 8040 beschriftetes, Textilband einlegen (AW-2a)
Okarinen: Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.
Fis Okarina Inventarnummer AW-2b
C Okarina Inventarnummer AW-2c', NULL, 23, CAST(N'2021-04-23T22:00:00.0000000' AS DateTime2), 0, N'Gerda Steiner', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (82, 2, NULL, NULL, NULL, N'Okarina:

a) Holzschatuelle mit Logo der Firma Matthäus Bauer, Wien VI/1, Mariahilferstrasse 19/21, Gegründet 1836 mit 2 Okarinen. Die Firma Bauer hat die Okarinen
über die Firma Meißen in Deutschland bezogen und mit eigenem Logo weiterverkauft. Da auf dem Logo die Firma Bauer noch als „K&K Hoflieferant“ geführt wird, stammt die Schatulle mit Inhalt aus der Zeit zwischen 1900 und 1918
b) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung Fis
c) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung C
Die Okarina (ital. ocarina = kleine Gans) ist eine Gefäßflöte/Kugelflöte,
die zur Familie der Schnabelflöten gehört. Okarinen können aus gebranntem, glasiertem Ton, aus Porzellan, luftgetrocknetem Ton oder aus Holz sein.
Der Klang der „Porzellan“ Okarina ist viel härter als der Klang einer herkömmlichen Okarina aus Ton. Die Porzellan Okarina hat sich, trotz ihrer edlen Herkunft
und schönen Bemalung, nie durchgesetzt und gilt heute eher als Sammlerinstrument.', N'a) Holzschatulle mit dunkelbraunem Leder überzogen, auf der rechten Innenseite
eine Formschale für 2 Okarinen mit rotem Samt ausgelegt. Umfasst wird diese Formschale mit einer roten Kordel. Auf der linken Innenseite ist ein Wattepolster mit roter Seide überzogen. Auf diesem Polster ist das Logo angebracht. Der Verschluss der Holzschatulle besteht aus zwei Messing-Verschlüssen, auf denen kleine Verzierungen angebracht sind.
b) Beide Okarinen bestehen aus Porzellan, bemalt mit blauem Zwiebelmuster, und sind glasiert.', N'a) Holzschatulle 23cm x 130 cm x 5 cm 
b) Fis Okarina: 19 cm x 7,5 cm
c) C Okarina: 15,5 cm x 6,5 cm', N'a) Schatulle – außen: Leder berieben, Messing Verschlüsse, leichte Patina
b) Schatulle – innen: Zustand 1 (Zustand 1=neuwertig/Zustand =nicht sammelwürdig)', N'Schatulle: Auf der Innenseite der Schatulle ein mit Edding 8040 beschriftetes, Textilband einlegen (AW-2a)
Okarinen: Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.
Fis Okarina Inventarnummer AW-2b
C Okarina Inventarnummer AW-2c', NULL, 23, CAST(N'2021-04-23T22:00:00.0000000' AS DateTime2), 0, N'Gerda Steiner', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (93, 1, NULL, NULL, NULL, N'
Langspielplatte mit dem Titel: Heimatklänge Inhalt: 10 Musiktitel, 5 Musiktitel pro Seite
Seite A:

1. Drobn auf der Pack Ländler – Kapelle Köppel 2. Der steirische Brauch Walzerlied – Kern Buam
3. Weststeirer Polka – Kapelle Köppel
4. Spielt im Dorf die Blaskapell ́n – Walzerlied
Berglandecho, Gesang Edi Wolf
5. Die lustige Harmonika Polka – Kern Buam

Seite B:
1. Ich hab an Bauernkasten Walzerlied – Fritz Edtmeier
mit instrumentaler Begleitung der Kern Buam
2. Heut fahr ́n wir fort Polka – Berglandecho
3. Die Dorffeuerwehr Polkalied – Kapelle Köppel
4. Koanachtaler-Jodler – Kapelle Köppel, Solojodler Sigi Zwanzger 5. Gruß aus Mariazell Polka – Pretuler Buam

Hersteller: Firma Polydor mit der Nummer 82047 Club-Sonderauflage 4/66 Herstellungsjahr: 1966', N'a) Schallplattencover/Schallplattenhülle aus Karton, Vorder- Rückseite farbig bedruckt Druck: Lang & Gratzenberger, Wien
b) Innenhülle aus Papier mit einem Mittelloch
b) Langspielplatte aus Vinyl, Presswerk der Firma Polydor in Deutschland
und der Geschwindigkeit M 33 UpM, Stereo', N'a) Cover/Hülle: 26x26 cm
b) Innenhülle: 25x25cm
c) Langspielplatte mit dem Durchmesser 10 Inch = 25 cm', N'Cover: Innenhülle: Schallplatte:
Keine Risse, minimale Bereibungen
leichte Einrisse und kleine Flecken
Zustand 2- (Zustand =neu/Zustand 5=nur mehr zur Dekoration)', N'Cover: Beschriftung auf der Rückseite mit Bleistift 2B Innenhülle: Beschriftung mit Bleistift 2B
Schallplatte: Beschriftung am Labelaufdruck mit Bleistift 2B
(AW-1a) (AW-1b) (AW-1c)', NULL, 1, CAST(N'2020-01-01T15:00:00.0000000' AS DateTime2), 10, N'Hubert Kaufmann', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (96, 2, NULL, NULL, NULL, N'Okarina:

a) Holzschatuelle mit Logo der Firma Matthäus Bauer, Wien VI/1, Mariahilferstrasse 19/21, Gegründet 1836 mit 2 Okarinen. Die Firma Bauer hat die Okarinen
über die Firma Meißen in Deutschland bezogen und mit eigenem Logo weiterverkauft. Da auf dem Logo die Firma Bauer noch als „K&K Hoflieferant“ geführt wird, stammt die Schatulle mit Inhalt aus der Zeit zwischen 1900 und 1918
b) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung Fis
c) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung C
Die Okarina (ital. ocarina = kleine Gans) ist eine Gefäßflöte/Kugelflöte,
die zur Familie der Schnabelflöten gehört. Okarinen können aus gebranntem, glasiertem Ton, aus Porzellan, luftgetrocknetem Ton oder aus Holz sein.
Der Klang der „Porzellan“ Okarina ist viel härter als der Klang einer herkömmlichen Okarina aus Ton. Die Porzellan Okarina hat sich, trotz ihrer edlen Herkunft
und schönen Bemalung, nie durchgesetzt und gilt heute eher als Sammlerinstrument.', N'a) Holzschatulle mit dunkelbraunem Leder überzogen, auf der rechten Innenseite
eine Formschale für 2 Okarinen mit rotem Samt ausgelegt. Umfasst wird diese Formschale mit einer roten Kordel. Auf der linken Innenseite ist ein Wattepolster mit roter Seide überzogen. Auf diesem Polster ist das Logo angebracht. Der Verschluss der Holzschatulle besteht aus zwei Messing-Verschlüssen, auf denen kleine Verzierungen angebracht sind.
b) Beide Okarinen bestehen aus Porzellan, bemalt mit blauem Zwiebelmuster, und sind glasiert.', N'a) Holzschatulle 23cm x 130 cm x 5 cm 
b) Fis Okarina: 19 cm x 7,5 cm
c) C Okarina: 15,5 cm x 6,5 cm', N'a) Schatulle – außen: Leder berieben, Messing Verschlüsse, leichte Patina
b) Schatulle – innen: Zustand 1 (Zustand 1=neuwertig/Zustand =nicht sammelwürdig)', N'Schatulle: Auf der Innenseite der Schatulle ein mit Edding 8040 beschriftetes, Textilband einlegen (AW-2a)
Okarinen: Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.
Fis Okarina Inventarnummer AW-2b
C Okarina Inventarnummer AW-2c', NULL, 23, CAST(N'2021-04-23T22:00:00.0000000' AS DateTime2), 0, N'Gerda Steiner', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (97, 9, NULL, NULL, 5, N'Autogrammkarte:

Autogrammkarte des Edelweiß Duos (Hans und Hermann) im Querformat.  Die Autogrammkarte ist anläßlich der Erscheinung ihrer LP/MC "Servus Gruezi Hallo" bei der Plattenfirma Amadeo in den 1970er Jahren erschienen.
Autogrammadresse: Johann Pammer, Weizbachbach 89a, 8045 Graz.', N'Autogrammkarte in Farbe', N'10,5x12,5cm', N'Die Autogrammkarte ist ohne Knicke und Risse. Zustand 2', N'Beschriftung auf der Rückseite mit Bleistift 2B', NULL, 19, CAST(N'2021-05-14T17:00:00.0000000' AS DateTime2), 5, N'Albin Wiesenhofer', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (104, 1, NULL, NULL, NULL, N'Fanartikel:

Bierkrug:

Weißer Bierkrug glasiert und bemalt mit grünem Rand, Lorbeerkranz, dem Wappen der Stadt Wien und dem Logo des Deutschen Sängerbundes. Weiters mit der Aufschrift „Deutsches Sängerbundesfest Wien 1928 – 19.-23. Juli 1928.“
Auf der Unterseite des Kruges befindet sich die Herstellermarke:
Porzellan-Malerei Ferd. Vasold – Liezen, Steiermark', N'Bierkrug aus Porzellan, handbemalen und glasiert', N'11 cm Höhe
8,5 cm Durchmesser', N'Der Krug weist einige Beschädigungen auf
- Am oberen Rand – Abplatzungen der Glasur
- Am oberen Rand – 2 Stellen leicht ausgeschlagen
- Am unteren Rand ist ein kleines Eck ausgeschlagen (1,5 cm x 0,5 cm)
', N'Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.', NULL, 32, CAST(N'2018-03-13T15:00:00.0000000' AS DateTime2), 0, N'Robert Hold', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 1, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (114, 1, NULL, NULL, NULL, N'
Langspielplatte mit dem Titel: Heimatklänge Inhalt: 10 Musiktitel, 5 Musiktitel pro Seite
Seite A:

1. Drobn auf der Pack Ländler – Kapelle Köppel 2. Der steirische Brauch Walzerlied – Kern Buam
3. Weststeirer Polka – Kapelle Köppel
4. Spielt im Dorf die Blaskapell ́n – Walzerlied
Berglandecho, Gesang Edi Wolf
5. Die lustige Harmonika Polka – Kern Buam

Seite B:
1. Ich hab an Bauernkasten Walzerlied – Fritz Edtmeier
mit instrumentaler Begleitung der Kern Buam
2. Heut fahr ́n wir fort Polka – Berglandecho
3. Die Dorffeuerwehr Polkalied – Kapelle Köppel
4. Koanachtaler-Jodler – Kapelle Köppel, Solojodler Sigi Zwanzger 5. Gruß aus Mariazell Polka – Pretuler Buam

Hersteller: Firma Polydor mit der Nummer 82047 Club-Sonderauflage 4/66 Herstellungsjahr: 1966', N'a) Schallplattencover/Schallplattenhülle aus Karton, Vorder- Rückseite farbig bedruckt Druck: Lang & Gratzenberger, Wien
b) Innenhülle aus Papier mit einem Mittelloch
b) Langspielplatte aus Vinyl, Presswerk der Firma Polydor in Deutschland
und der Geschwindigkeit M 33 UpM, Stereo', N'a) Cover/Hülle: 26x26 cm
b) Innenhülle: 25x25cm
c) Langspielplatte mit dem Durchmesser 10 Inch = 25 cm', N'Cover: Innenhülle: Schallplatte:
Keine Risse, minimale Bereibungen
leichte Einrisse und kleine Flecken
Zustand 2- (Zustand =neu/Zustand 5=nur mehr zur Dekoration)', N'Cover: Beschriftung auf der Rückseite mit Bleistift 2B Innenhülle: Beschriftung mit Bleistift 2B
Schallplatte: Beschriftung am Labelaufdruck mit Bleistift 2B
(AW-1a) (AW-1b) (AW-1c)', NULL, 1, CAST(N'2020-01-01T15:00:00.0000000' AS DateTime2), 10, N'Hubert Kaufmann', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 0, N'EK')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (116, 1, NULL, NULL, NULL, N'
Langspielplatte mit dem Titel: Heimatklänge Inhalt: 10 Musiktitel, 5 Musiktitel pro Seite
Seite A:

1. Drobn auf der Pack Ländler – Kapelle Köppel 2. Der steirische Brauch Walzerlied – Kern Buam
3. Weststeirer Polka – Kapelle Köppel
4. Spielt im Dorf die Blaskapell ́n – Walzerlied
Berglandecho, Gesang Edi Wolf
5. Die lustige Harmonika Polka – Kern Buam

Seite B:
1. Ich hab an Bauernkasten Walzerlied – Fritz Edtmeier
mit instrumentaler Begleitung der Kern Buam
2. Heut fahr ́n wir fort Polka – Berglandecho
3. Die Dorffeuerwehr Polkalied – Kapelle Köppel
4. Koanachtaler-Jodler – Kapelle Köppel, Solojodler Sigi Zwanzger 5. Gruß aus Mariazell Polka – Pretuler Buam

Hersteller: Firma Polydor mit der Nummer 82047 Club-Sonderauflage 4/66 Herstellungsjahr: 1966', N'a) Schallplattencover/Schallplattenhülle aus Karton, Vorder- Rückseite farbig bedruckt Druck: Lang & Gratzenberger, Wien
b) Innenhülle aus Papier mit einem Mittelloch
b) Langspielplatte aus Vinyl, Presswerk der Firma Polydor in Deutschland
und der Geschwindigkeit M 33 UpM, Stereo', N'a) Cover/Hülle: 26x26 cm
b) Innenhülle: 25x25cm
c) Langspielplatte mit dem Durchmesser 10 Inch = 25 cm', N'Cover: Innenhülle: Schallplatte:
Keine Risse, minimale Bereibungen
leichte Einrisse und kleine Flecken
Zustand 2- (Zustand =neu/Zustand 5=nur mehr zur Dekoration)', N'Cover: Beschriftung auf der Rückseite mit Bleistift 2B Innenhülle: Beschriftung mit Bleistift 2B
Schallplatte: Beschriftung am Labelaufdruck mit Bleistift 2B
(AW-1a) (AW-1b) (AW-1c)', NULL, 1, CAST(N'2020-01-01T15:00:00.0000000' AS DateTime2), 10, N'Hubert Kaufmann', 0, N'EK')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'test', 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (125, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2), 0, NULL, 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (126, 2, NULL, NULL, NULL, N'Okarina:

a) Holzschatuelle mit Logo der Firma Matthäus Bauer, Wien VI/1, Mariahilferstrasse 19/21, Gegründet 1836 mit 2 Okarinen. Die Firma Bauer hat die Okarinen
über die Firma Meißen in Deutschland bezogen und mit eigenem Logo weiterverkauft. Da auf dem Logo die Firma Bauer noch als „K&K Hoflieferant“ geführt wird, stammt die Schatulle mit Inhalt aus der Zeit zwischen 1900 und 1918
b) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung Fis
c) 1 Okarina – Tonflöte der Firma Meißen mit blauem Zwiebelmuster und der Stimmung C
Die Okarina (ital. ocarina = kleine Gans) ist eine Gefäßflöte/Kugelflöte,
die zur Familie der Schnabelflöten gehört. Okarinen können aus gebranntem, glasiertem Ton, aus Porzellan, luftgetrocknetem Ton oder aus Holz sein.
Der Klang der „Porzellan“ Okarina ist viel härter als der Klang einer herkömmlichen Okarina aus Ton. Die Porzellan Okarina hat sich, trotz ihrer edlen Herkunft
und schönen Bemalung, nie durchgesetzt und gilt heute eher als Sammlerinstrument.', N'a) Holzschatulle mit dunkelbraunem Leder überzogen, auf der rechten Innenseite
eine Formschale für 2 Okarinen mit rotem Samt ausgelegt. Umfasst wird diese Formschale mit einer roten Kordel. Auf der linken Innenseite ist ein Wattepolster mit roter Seide überzogen. Auf diesem Polster ist das Logo angebracht. Der Verschluss der Holzschatulle besteht aus zwei Messing-Verschlüssen, auf denen kleine Verzierungen angebracht sind.
b) Beide Okarinen bestehen aus Porzellan, bemalt mit blauem Zwiebelmuster, und sind glasiert.', N'a) Holzschatulle 23cm x 130 cm x 5 cm 
b) Fis Okarina: 19 cm x 7,5 cm
c) C Okarina: 15,5 cm x 6,5 cm', N'a) Schatulle – außen: Leder berieben, Messing Verschlüsse, leichte Patina
b) Schatulle – innen: Zustand 1 (Zustand 1=neuwertig/Zustand =nicht sammelwürdig)', N'Schatulle: Auf der Innenseite der Schatulle ein mit Edding 8040 beschriftetes, Textilband einlegen (AW-2a)
Okarinen: Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.
Fis Okarina Inventarnummer AW-2b
C Okarina Inventarnummer AW-2c', NULL, 23, CAST(N'2021-04-23T22:00:00.0000000' AS DateTime2), 0, N'Gerda Steiner', 0, N'EK')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (127, 8, NULL, NULL, NULL, N'Tonträgerkatalog:
Sammelverzeichnis aller 45UpM-Schallplatten (Normal- und Sonderklasse – Extendet Play) folgender Firmen bis 30. September 1955:
1. Columbia
2. His Master ́s Voice
3. Parlophon
4. Odeon
5. M.G.M (Metro Goldwyn Mayer)
Das Sammelverzeichnis hat einen Umfang von 59 Seiten und wurde nur an Vertragshändler abgegeben, damit diese die Bestellungen für ihre Kunden tätigen konnten. Dieses Verzeichnis wurde von der Österreichischen Columbia Grammophon Gesellschaft, 1010 Wien, Kärntnerstraße 80, ausgegeben.
Die Single Schallplatte (45 UpM) wurde um 1949 eingeführt. In diesem Verzeichnis aus dem Jahre 1955 befinden sich 220 Musiktitel aus den Bereichen Klassik und amerikanische Musikinterpreten wie z. B. Duke Ellington, Benny Goodman, usw.
Es kommen noch keine Interpreten der ländlichen Volks- oder Blasmusik sowie des Volksgesanges vor. In Amerika erfolgte die Umstellung von 78 UpM auf 45 UpM
um 1954. Die 45 UpM Singles mit Musiktiteln der ländlichen Volksmusik, Volksgesang und Blasmusik wurden erst ab 1956/1957 erzeugt und in Österreich verkauft. Auch die 45 UpM Singles der Original Oberkrainer V.S. Avsenik gelangten erst ab 1956/1957 zum Verkauf. Bis ca. 1959/1960 wurden noch gleiche Musiktitel parallel auf
78 UpM Schellacks und 45 UpM Singles verkauft.', N'Das Verzeichnis ist auf Papier gedruck und mit Heftklammern fixiert.', N'21 cm x 14,3 cm', N'Das Sammlerverzeichnis ist in sehr schönem Zustand, auf der Rückseite sind leichte Knicke.', N'Beschriftung auf der Innenseite vom Titelblatt mit Bleistift 2B
', NULL, 23, CAST(N'2020-02-23T13:00:00.0000000' AS DateTime2), 0, N'Hedwig Mair', 0, N'EK')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 0, N'EK')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 0, N'AW')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (131, 1, NULL, NULL, 4, N'Foto "Ledergassler Burschen-Ball"

Aufnahme:  1920er Jahre
Fotograf:    unbekannt
Schenkung der Bild Datei aus der Sammlung "Sammer - Kleinsteinbach" 2010 ', N'Glasplatte - Bild Datei', N'Originalgröße vom Glasnegativ unbekannt', N'Zustand  der Bild Datei 2', N'Beschriftung der digitalen Bild Datei', NULL, 27, CAST(N'2021-05-14T17:00:00.0000000' AS DateTime2), 0, N'Albin Wiesenhofer', 0, N'AW')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (132, 1, NULL, NULL, NULL, N'Fanartikel:

Bierkrug:

Weißer Bierkrug glasiert und bemalt mit grünem Rand, Lorbeerkranz, dem Wappen der Stadt Wien und dem Logo des Deutschen Sängerbundes. Weiters mit der Aufschrift „Deutsches Sängerbundesfest Wien 1928 – 19.-23. Juli 1928.“
Auf der Unterseite des Kruges befindet sich die Herstellermarke:
Porzellan-Malerei Ferd. Vasold – Liezen, Steiermark', N'Bierkrug aus Porzellan, handbemalen und glasiert', N'11 cm Höhe
8,5 cm Durchmesser', N'Der Krug weist einige Beschädigungen auf
- Am oberen Rand – Abplatzungen der Glasur
- Am oberen Rand – 2 Stellen leicht ausgeschlagen
- Am unteren Rand ist ein kleines Eck ausgeschlagen (1,5 cm x 0,5 cm)
', N'Unterseite reinigen mit Aceton, vorlackieren mit Paraloid B72, mit Tusche beschriften und überlackieren mit Paraloid.', NULL, 32, CAST(N'2018-03-13T15:00:00.0000000' AS DateTime2), 0, N'Robert Hold', 0, N'AW')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 1, NULL)
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 0, N'PR')
INSERT [dbo].[Objekt] ([ID], [HerkunftID], [StandortID], [Objektbezeichnung], [KategorieID], [Beschreibung], [Material], [Abmessungen], [Zustand], [Objektbeschriftung], [BildID], [BezeichnungID], [Datum], [Euro], [Name], [Vorlage], [Kuerzel]) VALUES (135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Objekt] OFF
GO
ALTER TABLE [dbo].[File] ADD  DEFAULT ((0)) FOR [Serial]
GO
ALTER TABLE [dbo].[Objekt] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Datum]
GO
ALTER TABLE [dbo].[Objekt] ADD  DEFAULT ((0)) FOR [Euro]
GO
ALTER TABLE [dbo].[Objekt] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Vorlage]
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
ALTER TABLE [dbo].[Objekt]  WITH CHECK ADD  CONSTRAINT [FK_Objekt_Bezeichnung_BezeichnungID] FOREIGN KEY([BezeichnungID])
REFERENCES [dbo].[Bezeichnung] ([ID])
GO
ALTER TABLE [dbo].[Objekt] CHECK CONSTRAINT [FK_Objekt_Bezeichnung_BezeichnungID]
GO
ALTER TABLE [dbo].[Objekt]  WITH CHECK ADD  CONSTRAINT [FK_Objekt_Bild_BildID] FOREIGN KEY([BildID])
REFERENCES [dbo].[Bild] ([ID])
GO
ALTER TABLE [dbo].[Objekt] CHECK CONSTRAINT [FK_Objekt_Bild_BildID]
GO
ALTER TABLE [dbo].[Objekt]  WITH CHECK ADD  CONSTRAINT [FK_Objekt_Herkunft_HerkunftID] FOREIGN KEY([HerkunftID])
REFERENCES [dbo].[Herkunft] ([ID])
GO
ALTER TABLE [dbo].[Objekt] CHECK CONSTRAINT [FK_Objekt_Herkunft_HerkunftID]
GO
ALTER TABLE [dbo].[Objekt]  WITH CHECK ADD  CONSTRAINT [FK_Objekt_Kategorie_KategorieID] FOREIGN KEY([KategorieID])
REFERENCES [dbo].[Kategorie] ([ID])
GO
ALTER TABLE [dbo].[Objekt] CHECK CONSTRAINT [FK_Objekt_Kategorie_KategorieID]
GO
ALTER TABLE [dbo].[Objekt]  WITH CHECK ADD  CONSTRAINT [FK_Objekt_Standort_StandortID] FOREIGN KEY([StandortID])
REFERENCES [dbo].[Standort] ([ID])
GO
ALTER TABLE [dbo].[Objekt] CHECK CONSTRAINT [FK_Objekt_Standort_StandortID]
GO
ALTER TABLE [dbo].[Objekt2]  WITH CHECK ADD  CONSTRAINT [FK_Objekt_Kategorie2_Kategorie2ID] FOREIGN KEY([Kategorie2ID])
REFERENCES [dbo].[Kategorie2] ([ID])
GO
ALTER TABLE [dbo].[Objekt2] CHECK CONSTRAINT [FK_Objekt_Kategorie2_Kategorie2ID]
GO
ALTER TABLE [dbo].[Objekt3]  WITH CHECK ADD  CONSTRAINT [FK_Objekt_Kategorie3_Kategorie3ID] FOREIGN KEY([Kategorie3])
REFERENCES [dbo].[Kategorie3] ([ID])
GO
ALTER TABLE [dbo].[Objekt3] CHECK CONSTRAINT [FK_Objekt_Kategorie3_Kategorie3ID]
GO
select 'http://volksklang.azurewebsites.net/Objekts/Download/' + cast(id as varchar(20)) + '?' + cast(serial as varchar(20)) from dbo.[file] where serial in (select id from objekt)
http://volksklang.azurewebsites.net/Objekts/Download/18?72
http://volksklang.azurewebsites.net/Objekts/Download/23?97
http://volksklang.azurewebsites.net/Objekts/Download/24?97
http://volksklang.azurewebsites.net/Objekts/Download/33?114
http://volksklang.azurewebsites.net/Objekts/Download/34?116
http://volksklang.azurewebsites.net/Objekts/Download/35?116
http://volksklang.azurewebsites.net/Objekts/Download/36?116
http://volksklang.azurewebsites.net/Objekts/Download/37?114
http://volksklang.azurewebsites.net/Objekts/Download/38?114
http://volksklang.azurewebsites.net/Objekts/Download/39?114
http://volksklang.azurewebsites.net/Objekts/Download/40?114
http://volksklang.azurewebsites.net/Objekts/Download/41?124
http://volksklang.azurewebsites.net/Objekts/Download/42?125
http://volksklang.azurewebsites.net/Objekts/Download/43?125
http://volksklang.azurewebsites.net/Objekts/Download/44?128
http://volksklang.azurewebsites.net/Objekts/Download/46?131
