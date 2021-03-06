USE [QICdb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Content]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ContentID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NULL,
	[WebPageID] [int] NULL,
	[EnContent] [nvarchar](max) NULL,
	[LangContent] [nvarchar](max) NULL,
	[IsReachText] [bit] NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContentImage]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentImage](
	[ContentImageID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NULL,
	[WebPageID] [int] NULL,
	[LangContent] [nvarchar](200) NULL,
	[PicsUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContentImage] PRIMARY KEY CLUSTERED 
(
	[ContentImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HeaderContent]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeaderContent](
	[HeaderID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NULL,
	[HeaderName] [nvarchar](50) NULL,
	[HeaderContent] [nvarchar](max) NULL,
 CONSTRAINT [PK_HederContent] PRIMARY KEY CLUSTERED 
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageID] [int] IDENTITY(1,1) NOT NULL,
	[Lang] [nvarchar](50) NULL,
	[LangShort] [nvarchar](10) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebPage]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebPage](
	[WebPageID] [int] IDENTITY(1,1) NOT NULL,
	[PageNo] [int] NULL,
	[PageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_WebPage] PRIMARY KEY CLUSTERED 
(
	[WebPageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201505201250473_InitialCreate', N'QIC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04EEDA6E8DC697669DA06F0157E2AE85489422518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB2E0A1459717866381C92C3D191FFFDFB9FF1DB07DF33EE7114BB01999807A37DD3C0C40E1C972C276642172F5E9B6FDF7CFBCDF8CCF11F8C8FB9DC1193839E249E98779486C79615DB77D847F1C877ED288883051DD9816F2127B00EF7F77FB20E0E2C0C10266019C6F87D42A8EBE3F407FC9C06C4C6214D90771938D88BF9736899A5A8C615F2711C221B4FCCDF2FA6A34CCA344E3C17810533EC2D4C0311125044C1BEE30F319ED12820CB59080F9077FB1862905B202FC6DCEEE352BCEB10F60FD910ACB2630E6527310DFC9E800747DC2796D87D25CF9A85CFC06B67E05DFAC8469D7A6E625E38387DF43EF0C001A2C2E3A91731E1897959A83889C32B4C4779C75106791E01DCD720FA3CAA22EE199DFBED15317438DA67FFED19D3C4A349842704273442DE9E7193CC3DD7FE0D3FDE069F31991C1DCC1747AF5FBE42CED1AB1FF1D1CBEA4861AC20577B008F6EA220C411D88617C5F84DC3AAF7B3C48E45B74A9FCC2B104BB01C4CE3123DBCC36449EF60A11CBE368D73F7013BF9131E5C1F880BAB073AD128819F5789E7A1B9878B76AB5127FB7F83D6C397AF06D17A85EEDD653AF5827E583811ACABF7D84B5BE33B37CC96576DBE3F71B1F328F0D9EF7A7C65AD9F664112D96C308156E416454B4CEBD68DAD32783B8534831A3EAC73D4DD0F6D66A91CDE4A5136A0555642AE62D3AB21B7F769F5768EB8933084C94B438B79A429E0CA436A24F4DA33A0AD0C9583AEA1426008FFE79DEFCC47AE37C0D6D7410B641B0B37F27131CA9F030834447ADB7C83E21856BEF32B8AEF1A4C877F0E60FA0CDB49040139A3C80F9F5CDBCD5D40F055E2CF599C6F4ED7605373FB353847360DA233C27AAD8DF72EB03F07093D23CE29A2F803B57340F6F3D6F5BB030C62CE896DE3383E8760C6CE3480643A07BC20F4E8B0371CDB98B69D7A4C3DE4FAEADC43D8423FE5A265FEA1969072108D982A0F6932F55DB0744937537351BDA99944ABA95CACAFA90CAC9BA55C526F682AD06A672635586697CED0F0A95D0ABBFBB9DD7A87B76E2FA8B871063B24FE05131CC136E6DC204A7144CA19E8B26F6C235948A78F297DF2B329D5F41179C9D0AA565A0DE92630FC6A4861777F35A466C2E37BD7615949870B4F2E0CF09DE4D577A9F6352758B6E9E5501BE6A6956F660FD02D9793380E6C375D058A52172F54D4ED871CCE68AF5A64A3112B1F30300874971D79F004C6668A41754D4EB18729364EECAC143845B18D1CD98D3020A78761F989AA30ACAC80D48DFB41D209918E23D609B14B500C2BD525545E162EB1DD1079AD5E127A763CC2D8D80B1D62CB290E31610A5B3DD145B9BAE0C10C28F40893D2E6A1B15589B8E640D464ADBA396F4B61CB7997EA101B89C996DC5913973C7F7B92C06CF6D80682B3D9255D0CD016EFB611A0FCAED23500C48BCBAE05A87063D204284FA93612A0758F6D2140EB2E7976019A5D51BBCEBF705FDDB5F0AC5F94377FAC37BA6B0BB159F3C78E8566967B421F0A3D702487E7E99C35E207AAB89C819DFC7E16F354570C11063EC3B45EB229F35D651E6A35838841D40458065A0B287FED2701490BAA8771792DAFD13A9E45F480CDEB6E8DB07CEF17602B312063575F7F5604F52F49C5E0EC74FB284656448314E49D2E0B151C4540889B577DE01D9CA2ABCBCA8EE9920BF7C9862B03E393D1E0A096CC55E3A47C30837B290FCD762FA912B23E29D95A5E12D2278D97F2C10CEE251EA3ED4E5224053DD282B55C543FC2075A6C79A5A3386D8AB6B195B1A1F883B1A5A14D8D2F5118BA6459A151F127C62CE3504D5FCCFA938CFC0CC3B26305D7A8B0B6D04483082DB1D00AAAC1D273378AE929A2688E589D67EAF89298F26CD56CFFB9CAEAF1294F627E0EE4D2ECDF598FCACBFADA192B2721BCEF398CCC67994C5A3E57CCBBBABBC1E86CC84391A2623F0DBCC427FAC44ADF3B7B6F57ED9F3D9111C69660BF9438495E92D2DBBACB3B4D88BC18D69C9C225F597D82F4103A37E7D966D5D1BA0C548F9217A4AA28BA22D5D6264C97B8749A243117EC3F47AD084FB38E3801A50AC01FF5C4A8701824B04A5B77D43ACDA48A596FE98E287049AA9042530F2BAB8C919A91D58695F0341E554B74D7207344AAE8726B7764055BA40AAD685E015B61B3D8D61D554128A9022B9ABB6397EC1271F3DCE1934A7B43E97D546597D7F5CE2A0DC6D3EC84C31C759577F455A0CAE39E58FC2DBC04C69FEF6414696F70BDA328AB55AC17451A0CFD4E537BAB5DDF681A5FC5EB316BAFAA6B9B79D3AB7A3D5EBF587DD288902E6EA248A1BDB8C00917B531BF34B57F0423DDA23211D3C8DD0807F9634CB13F6202A3D9176FEAB9986DDBB9C02522EE02C734A3679887FB0787C2F734BBF36D8B15C78EA7B874EA3E70A9CFD9069856E41E45F61D8A64DEC31ADF7F94A05249F98238F86162FE99F63A4EAB13EC5FE9E33DE322FE40DC2F0934DC460936FE92799CC3F0E19B2F533BFAF54277AF5EFCF129EBBA675C47B0628E8D7DC197ABCC70FD9B865ED6645DD7B066E52F1D9EEF82AA7D56A0441516C4EA5F11CC5D3AC81704B995DFF9E8E1FBBEA629BF12580B51F125C0507883B850C7F45F054BCBF277E0274D59FEFD06AB66FDAF629A96F1EF92FE6022DFBFFB3694F7DCE251A3B80B6D624B4AFDDCCA975E8B3CB9EDB349A255AFB5D065EA740FB835E8D12B44C63363160F763A2A88C383616F33B49F9C2DBC2B04E192BAB15D5EF026A9C00DAF7FFE570CE01DE0AC293838DBE7F96E3AD674F5DB1D274BF663F3EE58B07166D6F639BB9B0E365D9977C783AD173377C7626D5BE7E79623ADF311BA759EAD4C19D2BC8751D582DB78B459E11C6EF8F3008220CB28B3CF1FD5C4AD26D2698BC25244AF54CF1813154B0B47D22B4934ABED37567EE0370E96CB34ABD5F02C9B74F3FDBF51379769D6AD612F6E8301ACE40FAA58D92DFB5813D9E939317E6B23692198B7E5AC8D2FD59F13C17710A7D4568FE61DF1F3E1F30EE29221974E0FFEAEFCBA17CECECA5F4684F33B76972504FB3B8904DBB553B390B9208B203FBC058B7211A14273892972E0483D89A8BB4036856656634EBFDF4EEB76EC4DC71C3B17E43AA1614261C8D89F7BB582174B029AF4A724E5BACDE3EB30FD5324430C01CC74596DFE9AFC9CB89E53D87DAEA80969205876C12BBA6C2E29ABEC2E1F0BA4AB807404E2EE2B92A25BEC871E80C5D76486EEF12AB641F8BDC34B643F9615401D48FB44D4DD3E3E75D132427ECC31CAFEF01362D8F11FDEFC078BC40C0B20540000, N'6.1.1-30610')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8546e9d9-1ba6-4a2a-b6c6-4bdd684d1271', N'admin2@qic.com', 0, N'AFUTo4YqX2MGkncLa3pWGnR3ivPmZ8pXKSx8i8LhPgVyUL0VjQnkRZ03l0aj4+S4DQ==', N'd3f25e55-ed86-4bac-a28c-e8df31cb534b', NULL, 0, 0, NULL, 1, 0, N'admin2@qic.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a56d58ec-b9bb-4d6e-9ebb-ce163c757ced', N'admin@qic.com', 0, N'AONwWKhHNe3IOnR8uN6WyIvYef8Z2wmLB+joQkg85qgUwERHy9zyoVg3IEcqQ9DvSw==', N'edbb6910-d898-4857-81e7-4800a778fdc8', NULL, 0, 0, NULL, 1, 0, N'admin@qic.com')
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1, 3, 4, N'Scope of Work', N'Scope of Works', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (2, 3, 4, N'We Are Construction Company', N'<h1>We are Contracting Company</h1>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (3, 3, 4, N'We Are Construction Company buildings', N'We are <span class="bb3">Constracting</span>&nbsp;Company <span class="bb1">buildings</span>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (4, 3, 4, N'Flexible and Easy to Use Ultra Construction Layout', N'<h3><strong>Flexible</strong> and Easy to Use</h3>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (5, 3, 4, N'This is Photoshops version of Lorem Ipsum. Provin gravida nibh vel velit auctor aliquet. Aenean solicitudin. lorem quis bibendum auctor. nisi elit consequant', N'This is <i>Photoshops </i>version of Lorem Ipsum. Provin gravida nibh vel velit auctor aliquet.<br/> Aenean solicitudin. lorem quis bibendum auctor. nisi elit consequant', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (6, 3, 4, N'Learn More', N'', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (7, 3, 4, N'Construction use Built with Construction', N'<h3><strong>Construction</strong> use</h3>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (8, 3, 4, N'This is Photoshops version of Lorem Ipsum. Provin gravida nibh vel velit auctor aliquet. Aenean solicitudin. lorem quis bibendum auctor. nisi elit consequant', N'This is <i>Photoshops </i>version of Lorem Ipsum. Provin gravida nibh vel velit auctor aliquet. <br/>Aenean solicitudin. lorem quis bibendum auctor. nisi elit consequant', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (9, 3, 4, N'Learn More', N'Learn More', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (10, 3, 4, N'what we offer', N'what we offer', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (11, 3, 4, N'Mechanical', N'Mechanical', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (12, 3, 4, N'Electrical', N'Electrical', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (13, 3, 4, N'Our Projects', N'', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (14, 3, 4, N'latest works', N'latest works', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (15, 3, 4, N'Show All', N'Show All', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (16, 3, 4, N'Commercial Building Projects', N'Commercial Building Projects', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (17, 3, 4, N'Residential Building Projects', N'Residential Building Projects', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (18, 3, 4, N'Industrial Building Projects', N'Industrial Building Projects', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (19, 3, 7, N'MISSION', N'OUR MISSION', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (20, 3, 7, N'VISION', N'OUR VISION', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (21, 3, 7, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', N'<p>To add value to our customers business by
providing innovative and cost-efficient Services. Our aim is to deliver
superior work solutions to our customers through our comprehensive approach to
project management, quality assurance and our focus on customer relationships.</p>

<span>QIC is dedicated to establish its position as a
leader in the arena &nbsp;HVAC, Mechanical,
Electrical, Plumbing (MEP) contracting, by providing cost-effective, innovative
solutions and products, matched only by the quality of our service. Our mission
is to be a respected contracting organization committed to professional,
ethical conduct. We desire to be known for honesty, integrity and highly
trained personnel</span><br>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (22, 3, 7, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', N'<p>To be recognized and respected by our
clients and customers for our integrity, quality of service delivery,
timeliness, professionalism and innovation in operating our business and
providing a high quality service delivery.</p>

<p><span>Our approach and processes are different
for each client and fit into their requirements, processes and the agreed
workflows. However, all of our expertise, experience, systems, processes and
protocols are used to build a process and system that our clients are
comfortable with.</span></p>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (23, 3, 8, N'GM MESSAGE', N'CEO MESSAGE', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (24, 3, 8, N'This is Photoshops version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', N'<p>The success of our companies can be
attributed to our ability to continuously identify and quickly respond to the
changing demands across the markets. Our core values of integrity, respect,
rigor, involvement and quality in everything we do remain consistent. These values
are embraced by our people and have played a major role in our success and will
continue going forward.</p>

<p><span>Quality and integrity being the core
philosophy of the QIC, Management has developed and implemented a quality
management system in compliance. Across the board we have implemented those
processes and policies aimed to achieve and exceed the high standards we have
set for ourselves. Our employees who are highly qualified, skilled and customer
oriented transform our vision into reality.</span></p>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (25, 3, 9, N'INTRODUCTION', N'INTRODUCTION', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (26, 3, 9, N'This is Photoshops version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', N'<p>Quality Indicator Contracting (QIC) is a
Mechanical, Electrical, Plumbing (MEP) Contracting Company that provides full
service and products for industrial, commercial and residential clients. </p>

<p>QIC performs work for customers
throughout the Kingdom of Saudi Arabia. We have the necessary personnel,
equipment, expertise and financial wherewithal to handle a broad range of
projects.</p>

<p>QIC has been growing tremendously in the
last few years, having executed small to large scale projects in a very short
time with high quality and competitive prices which has given the company great
advantage amongst its competitors. The compliance with the international
building standards and new technologies has been instrumental in completing our
projects on time and meeting its budget.</p>

<p><span>&nbsp;</span></p>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (27, 3, 11, N'CERTIFICATION & REGISTRATION', N'CERTIFICATION & REGISTRATION', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (28, 3, 12, N'ORGANIZATION CHART', N'', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (29, 3, 13, N'Get in touch!', N'Get in touch!', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (30, 3, 13, N'This is Photoshops version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.', N'Address : KSA, Riyadh, Malaz, Salahdine Road,
Alaqariah Building&nbsp;', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (32, 3, 13, N'Home Address', N' 92690 Riyadh 11663', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (33, 3, 13, N'Phone', N'+966 11 47 43 177', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (34, 3, 13, N'Email', N'info@qic-sa.com', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (35, 3, 13, N'Send Message', N'Send Message', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (37, 4, 4, N'Scope of Work', N'نطاق العمل', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (38, 4, 4, N'We Are Construction Company', N'', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (39, 4, 4, N'We Are Construction Company buildings', N'', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (40, 4, 4, N'Flexible and Easy to Use Ultra Construction Layout', N'', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (41, 4, 4, N'This is Photoshops version of Lorem Ipsum. Provin gravida nibh vel velit auctor aliquet. Aenean solicitudin. lorem quis bibendum auctor. nisi elit consequant', N'<b>adasfsfafsf</b><br>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (42, 4, 4, N'Learn More', N'', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (43, 4, 4, N'Construction use Built with Construction', N'', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (44, 4, 4, N'This is Photoshops version of Lorem Ipsum. Provin gravida nibh vel velit auctor aliquet. Aenean solicitudin. lorem quis bibendum auctor. nisi elit consequant', N'', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (45, 4, 4, N'Learn More', N'أعرف أكثر', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (46, 4, 4, N'what we offer', N'ما نقدمه', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (47, 4, 4, N'Mechanical', N'ميكانيكي', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (48, 4, 4, N'Electrical', N'كهربائي', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (49, 4, 4, N'Our Projects', N'', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (50, 4, 4, N'latest works', N'آخر أعمال', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (51, 4, 4, N'Show All', N'عرض الكل', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (52, 4, 4, N'Commercial Building Projects', N'مشاريع المباني التجارية', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (53, 4, 4, N'Residential Building Projects', N'سكني مشاريع البناء', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (54, 4, 4, N'Industrial Building Projects', N'مشاريع المباني الصناعية', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (55, 4, 7, N'MISSION', N'مهمة', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (56, 4, 7, N'VISION', N'رؤية', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (57, 4, 7, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', N'صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!<br>صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!<br>صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!<br><h1><br></h1>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (58, 4, 7, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', N'صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!<br>صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!<br>صول على اتصال!&nbsp;&nbsp;الحصول على اتصال!<br>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (59, 4, 8, N'GM MESSAGE', N'على اتصال!', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (60, 4, 8, N'This is Photoshops version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim.', N'<h3>على اتصال!</h3><h3>على اتصال!</h3><h3>على اتصال!</h3><h3>على اتصال!</h3><h3>على اتصال!</h3><br><br><br><br><br>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (61, 4, 9, N'INTRODUCTION', N'على اتصال!', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (62, 4, 9, N'CERTIFICATION & REGISTRATION', N'الحصول على اتصال!', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (63, 4, 11, N'CERTIFICATION & REGISTRATION', N'شهادة والتسجيل', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (64, 4, 12, N'ORGANIZATION CHART', N'', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (65, 4, 13, N'Get in touch!', N'الحصول على اتصال!', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (66, 4, 13, N'This is Photoshops version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.', N'هذا هو الإصدار&nbsp; من أبجد هوز. حامل؛ حبلى&nbsp; فيل ، أبجد&nbsp; مرضي&nbsp; هوز velit. نام غير المصنفة في موضع&nbsp; على&nbsp; أوديو&nbsp; على أوديو&nbsp; ااا غير السيرة&nbsp; الاتحاد الأوروبي في إيليت.', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (67, 4, 13, N'Home Address', N'عنوان المنزل ع 2', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (69, 4, 10, N'Scope of Work', N'نطاق العمل', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (70, 4, 13, N'Phone', N'+966 11 47 43 177', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (71, 3, 10, N'SCOPE OF WORK', N'SCOPE OF WORKS', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (72, 3, 10, N'Mechanical', N'Mechanical&nbsp;<br>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (73, 4, 10, N'Mechanical', N'ميكانيكي', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (74, 3, 10, N'Electrical', N'Electrical', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (75, 4, 10, N'Electrical', N' الحصول على اتصال!', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (76, 3, 8, N'John Smith', N'Mohamed Yehia Itani', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (77, 3, 8, N'Chief Executive Officer', N'General Manager', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (78, 4, 8, N'Chief Executive Officer', N'Chief Executive Officer', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (79, 4, 8, N'John Smith', N'John Smith', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (80, 3, 9, N'Mr. Mohammed Munawar', N'Mr. Mohammed Munawar', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (81, 4, 9, N'Mr. Mohammed Munawar', N'السيد محمد منور', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (82, 3, 9, N'Chief Executive Officer', N'Chief Executive Officer', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (83, 4, 9, N'Chief Executive Officer', N'الرئيس التنفيذي', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (84, 3, 9, N'Mr. Abdel Hadi Qasqas', N'Mr. Abdel Hadi Qasqas', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (85, 4, 9, N'Mr. Abdel Hadi Qasqas', N'السيد عبد الهادي قصقص', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (86, 3, 9, N'Architect', N'Architect', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (87, 4, 9, N'Architect', N'مهندس معماري', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (88, 3, 9, N'William Mayer', N'William Mayer', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (89, 4, 9, N'William Mayer', N'وليام ماير', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1076, 3, 9, N'Finance Manager', N'Finance Manager', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1077, 4, 9, N'Finance Manager', N'مدير مالى', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1078, 3, 10, N'Title of Image', N'Mechanical Service', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1079, 4, 10, N'Title of Image', N'Title of Image', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1080, 3, 10, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.', N'<p>QIC offer a high-level of expertise
within the mechanical engineering discipline. We have a team of engineers. We
encourage our engineers to get involved with various organizations allowing us
to stay on the cutting edge of new technology. Our engineers design for a
variety of projects and clients thus having an in-depth knowledge base to pull
from. We are able to provide assessments, recommend alternatives and provide a
properly designed high-functioning system to meet the client’s very specific
individual need.</p>

<p><b>Our expertise covers a wide variety of
mechanical including:</b></p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Central
Plant Heating and Cooling Systems</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Boiler Systems</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Chiller Systems</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Cooling
Tower Systems</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Pumping
Systems</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Heating
water, chilled water and condenser</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Water
Piping Systems</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Existing
System Renovations and Remodels</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Fire
Fighting System</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Drainage
System</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Pump Room</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Irrigation
System</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Commercial
waste and vent systems. </p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Commercial
domestic water and hot water systems.</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Central
domestic water heating plant Systems.</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Storm
water systems.</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Storm
water pre-treatment systems.</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Commercial
plumbing systems design.</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Correctional
facilities plumbing design.</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Acid
neutralizing pre-treatment systems.</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Compressed
air equipment and piping design.</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span>High
Pressure process piping systems</span></p>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1081, 4, 10, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1082, 3, 10, N'Title of Image', N'Electrical Service', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1083, 4, 10, N'Title of Image', N'Title of Image', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1084, 3, 10, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.', N'<p>QIC offer a high-level of expertise
within the electrical engineering discipline. We encourage our engineers to get
involved with various organizations and build good working relationships with
lighting and power vendors. This allows us to stay on the cutting edge of new
technology and applications as well as keeping us abreast of guidelines and
ordinances. Our engineers are able to provide design services for electrical
distribution and lighting systems on a variety of projects thus having an
in-depth knowledge base to draw upon. We work very closely with the client to
provide accurate assessments, recommend alternatives, and thus provide an
environment that is highly functional, safe and aesthetically pleasing to the
client.</p>

<p><b>Our expertise covers a wide variety of
electrical including:</b></p>

<p>&nbsp;</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Interior
and Exterior Lighting</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Electrical
Service Single line Diagrams</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Short
Circuit Analysis</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Office
Core and Shell Design</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Generator
Design and Specification</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Computer
Room UPS Design and Specification</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Fire
Alarm Design and Layout</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Telecommunication
Infrastructure Systems</p>

<p><span>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>Security
System Infrastructure Systems</p>

<p><b><span>&nbsp;</span></b></p>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1085, 4, 10, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in lobortis nisl, vitae iaculis sapien. Phasellus ultrices gravida massa luctus ornare. Suspendisse blandit quam elit, eu imperdiet neque semper et.', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1087, 4, 13, N'Email', N'info@qic-sa.com', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1088, 4, 13, N'Send Message', N'Send Message', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1089, 3, 13, N'Find us on Google Map', N'Find us on Google Map', 0)
GO
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1090, 4, 13, N'Find us on Google Map', N'تجدنا على خريطة جوجل', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1091, 3, 13, N'Your message was sent successfully! I will be in touch as soon as I can.', N'Your message was sent successfully! I will be in touch as soon as I can.', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1092, 4, 13, N'Your message was sent successfully! I will be in touch as soon as I can.', N'<pre>تم إرسال رسالتك بنجاح ! وسوف تكون على <span>اتصال بأسرع ما أستطيع.</span></pre>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1093, 3, 13, N'Something went wrong, try refreshing and submitting the form again.', N'Something went wrong, try refreshing and submitting the form again.', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1094, 4, 13, N'Something went wrong, try refreshing and submitting the form again.', N'<pre>حدث خطأ ما ، في محاولة منعش وتقديم <span>النموذج مرة أخرى </span></pre>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1102, 3, 14, N'Project', N'Project', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1103, 4, 14, N'Project', N'Project', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1108, 3, 14, N'Acomplished With', N'Acomplished With', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1109, 4, 14, N'Acomplished With', N'Acomplished With', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1110, 3, 14, N'On Going', N'On Going', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1111, 4, 14, N'On Going', N'On Going', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1112, 3, 15, N'Careers', N'Careers', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1113, 4, 15, N'Careers', N'Careers', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1114, 3, 15, N'Careers Content', N'<p>Due to our continued growth, we are
always adding to our team of skilled Sales engineers, draftsman, technician
etc. We would like to hear from individuals who share our commitment to quality
and innovation and who have a genuine desire to join a growing organization
serving a national and international client base.</p>

<p>We provide our employees with outstanding
office facilities, a challenging work environment, a healthy social atmosphere
as well as excellent career development and personal development opportunities.
This enables our employees to realise their own ambitions as well as enhancing
their skills and knowledge.</p>

<p>If you are looking for a rewarding
opportunity, new challenges and have a desire to work with a world-class team
then we would like to hear from you. Send your updated resume to <a rel="nofollow" target="_blank"><span>info@qic-sa.com</span></a></p>', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1115, 4, 15, N'Careers Content', N'Careers Content', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1116, 3, 15, N'hr@qic.com', N'hr@qic.com', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (1117, 4, 15, N'hr@qic.com', N'hr@qic.com', 1)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (2112, 3, 15, N'Send Resume', N'Send Resume', 0)
INSERT [dbo].[Content] ([ContentID], [LanguageID], [WebPageID], [EnContent], [LangContent], [IsReachText]) VALUES (2113, 4, 15, N'Send Resume', N'Send Resume', 0)
SET IDENTITY_INSERT [dbo].[Content] OFF
SET IDENTITY_INSERT [dbo].[ContentImage] ON 

INSERT [dbo].[ContentImage] ([ContentImageID], [LanguageID], [WebPageID], [LangContent], [PicsUrl]) VALUES (1, 3, 8, N'Mechanical', N'/Upload/3d8df9b0-3fed-4d77-aba1-b63cbbf06719.png')
INSERT [dbo].[ContentImage] ([ContentImageID], [LanguageID], [WebPageID], [LangContent], [PicsUrl]) VALUES (2, 4, 8, N'Mechanical', N'/Upload/05fa9f24-fce2-4a16-9473-1a7bfe48aa37.jpg')
INSERT [dbo].[ContentImage] ([ContentImageID], [LanguageID], [WebPageID], [LangContent], [PicsUrl]) VALUES (3, 3, 8, N'Electrical', N'/Upload/2f33f6e8-b243-4685-87fa-aed5913b3ab0.png')
INSERT [dbo].[ContentImage] ([ContentImageID], [LanguageID], [WebPageID], [LangContent], [PicsUrl]) VALUES (4, 4, 8, N'Electrical', N'/Upload/c8cc81bf-7b9e-4c16-bebc-9d52c2baa122.jpg')
INSERT [dbo].[ContentImage] ([ContentImageID], [LanguageID], [WebPageID], [LangContent], [PicsUrl]) VALUES (13, 3, 3, N'Acomplished With', N'/Upload/3a1d8b5d-7e7c-49f8-894b-996e699bf8ee.jpg')
INSERT [dbo].[ContentImage] ([ContentImageID], [LanguageID], [WebPageID], [LangContent], [PicsUrl]) VALUES (14, 4, 3, N'Acomplished With', N'/Upload/8253c634-6ebc-473d-b07d-aa7757f60912.jpg')
INSERT [dbo].[ContentImage] ([ContentImageID], [LanguageID], [WebPageID], [LangContent], [PicsUrl]) VALUES (15, 3, 3, N'OnGoing', N'/Upload/0c6fd4f0-8636-42ac-9d25-f3bc0ccb49ed.jpg')
INSERT [dbo].[ContentImage] ([ContentImageID], [LanguageID], [WebPageID], [LangContent], [PicsUrl]) VALUES (16, 4, 3, N'OnGoing', N'/Upload/b1c19de1-91f3-4f44-85d9-8f692c77a617.jpg')
SET IDENTITY_INSERT [dbo].[ContentImage] OFF
SET IDENTITY_INSERT [dbo].[HeaderContent] ON 

INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (2, 3, N'Home', N'HOME')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (3, 4, N'Home', N'منزل')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (5, 4, N'QIC', N'تشي')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (6, 3, N'QIC', N'QIC')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (7, 4, N'Mission & Vision', N'الرؤية والرسالة')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (8, 3, N'Mission & Vision', N'MISSION & VISION')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (9, 3, N'GM Message', N'GM MESSAGE')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (10, 4, N'GM Message', N'مقدمة')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (11, 3, N'Introduction', N'INTRODUCTION')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (12, 4, N'Introduction', N'مقدمة')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (13, 3, N'Scope of work', N'SCOPE OF WORK')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (14, 4, N'Scope of work', N'نطاق العمل')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (15, 3, N'Certification & Registration', N'CERTIFICATION & REGISTRATIONe')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (16, 4, N'Certification & Registration', N'شهادة والتسجيل')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (17, 3, N'Organization', N'ORGANIZATION')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (18, 4, N'Organization', N'منظمة')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (19, 3, N'Projects', N'PROJECTS')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (20, 4, N'Projects', N'مشاريع')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (21, 3, N'Accomplished with', N'ACCOMPLISHED or EXECUTED')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (22, 4, N'Accomplished with', N'المنجزة مع')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (23, 3, N'Ongoing', N'ONGOING')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (24, 4, N'Ongoing', N'معلقة')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (25, 3, N'Career', N'CAREER')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (81, 4, N'Career', N'التوظيف')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (82, 3, N'Contact Us', N'CONTACT US')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (83, 4, N'Contact Us', N'اتصل بنا')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (84, 3, N'About Company', N'ABOUT COMPANY')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (85, 4, N'About Company', N'الشركة نحو')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (86, 3, N'About Company Content', N'QIC offers a full spectrum of MEP Construction, Civil, Facility Management, HVAC Trading, Swimming Pool/Landscaping  etc. for customers across all area of Residential, Commercial, Industrial and Educational sector . QIC has undertaken small scale to large scale contracting projects to become one of the fast-growing private sector in the Kingdom of Saudi Arabia. The main activities of the company are MEP engineering services.')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (87, 4, N'About Company Content', N'معلومات الاتصالمعلومات الاتصالمعلومات الاتصالمعلومات الاتصالمعلومات الاتصالمعلومات الاتصالمعلومات الاتصال')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (88, 3, N'Company', N'COMPANY')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (89, 4, N'Company', N'شركة')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (90, 3, N'CONTACT INFORMATION', N'CONTACT INFORMATIONS')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (91, 4, N'CONTACT INFORMATION', N'معلومات الاتصال')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (92, 3, N'Phone', N'+966 11 47 43 177')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (97, 4, N'Phone', N'+966 11 47 43 177')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (98, 3, N'Fax', N'+966 11 47 43 154')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (99, 4, N'Fax', N'+966 11 47 43 154')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (100, 3, N'Email', N'info@qic-sa.com')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (101, 4, N'Email', N'  info@qic-sa.com')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (102, 3, N'Address1', N'Quality Indicator Contracting est.')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (103, 4, N'Address1', N'معلومات الاتصال')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (104, 3, N'Address2', N'KSA, Riyadh, Malaz, Salahdine Road,Alaqariah Building')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (105, 4, N'Address2', N'معلومات الاتصال')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (106, 3, N'Address3', N'P.O.Box : 92690 Riyadh 11663')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (107, 4, N'Address3', N'صندوق بريد : 92690 الرياض 11663')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (108, 3, N'Copyright', N'  ©  Copyright 2016 ')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (109, 4, N'Copyright', N'© ???? ????? ??????2016')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (110, 3, N'All Rights', N'All rights reserved Engineerbabu Inc')
INSERT [dbo].[HeaderContent] ([HeaderID], [LanguageID], [HeaderName], [HeaderContent]) VALUES (111, 4, N'All Rights', N'جميع الحقوق محفوظة')
SET IDENTITY_INSERT [dbo].[HeaderContent] OFF
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([LanguageID], [Lang], [LangShort]) VALUES (3, N'English', N'en')
INSERT [dbo].[Language] ([LanguageID], [Lang], [LangShort]) VALUES (4, N'Arabic', N'ar')
SET IDENTITY_INSERT [dbo].[Language] OFF
SET IDENTITY_INSERT [dbo].[WebPage] ON 

INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (4, 1, N'Home')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (5, 2, N'About')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (7, 5, N'MISSION VISION')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (8, 6, N'GM Manager')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (9, 7, N'INTRODUCTION')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (10, 8, N'SCOPE OF WORK')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (11, 9, N'CERTIFICATION & REGISTRATION')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (12, 10, N'ORGANIZATION')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (13, 11, N'Contact Us')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (14, 3, N'Project')
INSERT [dbo].[WebPage] ([WebPageID], [PageNo], [PageName]) VALUES (15, 12, N'Career')
SET IDENTITY_INSERT [dbo].[WebPage] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_Content_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([LanguageID])
GO
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_Content_Language]
GO
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_Content_WebPage] FOREIGN KEY([WebPageID])
REFERENCES [dbo].[WebPage] ([WebPageID])
GO
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_Content_WebPage]
GO
ALTER TABLE [dbo].[ContentImage]  WITH CHECK ADD  CONSTRAINT [FK_ContentImage_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([LanguageID])
GO
ALTER TABLE [dbo].[ContentImage] CHECK CONSTRAINT [FK_ContentImage_Language]
GO
ALTER TABLE [dbo].[HeaderContent]  WITH CHECK ADD  CONSTRAINT [FK_HederContent_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([LanguageID])
GO
ALTER TABLE [dbo].[HeaderContent] CHECK CONSTRAINT [FK_HederContent_Language]
GO
/****** Object:  StoredProcedure [dbo].[spGetLanguage]    Script Date: 6/6/2016 1:37:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetLanguage]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Language
END


GO
