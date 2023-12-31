USE [Uchebnaya_pr_SS]
GO
/****** Object:  Table [dbo].[Academics]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academics](
	[Id_Academics] [int] IDENTITY(1,1) NOT NULL,
	[FullName_Academics] [nvarchar](max) NULL,
	[DateBorn_Academics] [date] NULL,
	[Specialization_Academics] [nvarchar](50) NULL,
	[YearAssigment_Academics] [int] NULL,
 CONSTRAINT [PK_Full_Academics] PRIMARY KEY CLUSTERED 
(
	[Id_Academics] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id_Country] [int] IDENTITY(1,1) NOT NULL,
	[Name_Country] [nvarchar](30) NULL,
	[Capital_Country] [nvarchar](30) NULL,
	[Square_Country] [varchar](max) NULL,
	[Population_Country] [int] NULL,
	[Continent_Country] [nvarchar](30) NULL,
	[Tip_Managment_Country] [int] NULL,
 CONSTRAINT [PK_Id_Country] PRIMARY KEY CLUSTERED 
(
	[Id_Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
	[Kod_Discipline] [int] NOT NULL,
	[Volume_Discipline] [int] NULL,
	[Name_Discipline] [nvarchar](50) NULL,
	[Ispolnitel_Discipline] [nvarchar](3) NULL,
 CONSTRAINT [PK_Kod_Discipline] PRIMARY KEY CLUSTERED 
(
	[Kod_Discipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Tab_Nomer_Employee] [int] NOT NULL,
	[Shifr_Kafedra] [nvarchar](3) NULL,
	[Name_Employee] [nvarchar](100) NULL,
	[Role_Employee] [nvarchar](100) NULL,
	[Salary_Employee] [decimal](7, 2) NULL,
	[Boss_Employee] [int] NULL,
 CONSTRAINT [PK_Tab_Nomer_Employee] PRIMARY KEY CLUSTERED 
(
	[Tab_Nomer_Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Examen]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examen](
	[Date_Examen] [date] NULL,
	[Kod_Examen] [int] NULL,
	[Reg_Number_Examen] [int] NULL,
	[Tab_Number_Examen] [int] NULL,
	[Auditoria_Examen] [varchar](4) NULL,
	[Ocenka_Examen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facultet]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facultet](
	[Abb_Facultet] [nvarchar](2) NOT NULL,
	[Name_Facultet] [nvarchar](50) NULL,
 CONSTRAINT [PK_Abb_Facultet] PRIMARY KEY CLUSTERED 
(
	[Abb_Facultet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gymnasists]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gymnasists](
	[Id_Gymnasists] [int] IDENTITY(1,1) NOT NULL,
	[Familiya_Gymnasists] [varchar](50) NOT NULL,
	[Scores_Gymnasists] [float] NULL,
 CONSTRAINT [PK_ID_Gymnasists] PRIMARY KEY CLUSTERED 
(
	[Id_Gymnasists] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inzhener]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inzhener](
	[Tab_Number_Inzhener] [int] NULL,
	[Specialnost_Inzhener] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kafedra]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kafedra](
	[Shifr_Kafedra] [nvarchar](3) NOT NULL,
	[Name_Kafedra] [nvarchar](50) NULL,
	[Abb_Facultet] [nvarchar](2) NULL,
 CONSTRAINT [PK_Shifr_Kafedra] PRIMARY KEY CLUSTERED 
(
	[Shifr_Kafedra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Management]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Management](
	[ID_Management] [int] NOT NULL,
	[Vid_Management] [nvarchar](30) NULL,
 CONSTRAINT [PK_ID_Management] PRIMARY KEY CLUSTERED 
(
	[ID_Management] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialization](
	[Number_Spec] [varchar](8) NOT NULL,
	[Napravlenie_Spec] [nvarchar](100) NULL,
	[Shifr_Kafedra] [nvarchar](3) NULL,
 CONSTRAINT [PK_Number_Spec] PRIMARY KEY CLUSTERED 
(
	[Number_Spec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Reg_Number_Student] [int] NOT NULL,
	[Number_Student] [varchar](8) NULL,
	[SName_Student] [nvarchar](50) NULL,
 CONSTRAINT [PK_Reg_Number_Student] PRIMARY KEY CLUSTERED 
(
	[Reg_Number_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Tab_Number_Teacher] [int] NULL,
	[Zvanie_Teacher] [nvarchar](50) NULL,
	[Stepen_Teacher] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ucheniki]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ucheniki](
	[Id_Ucheniki] [int] IDENTITY(1,1) NOT NULL,
	[Familiya_Ucheniki] [varchar](50) NOT NULL,
	[Subject_Ucheniki] [varchar](50) NOT NULL,
	[School_Ucheniki] [varchar](50) NOT NULL,
	[Scores_Ucheniki] [float] NULL,
 CONSTRAINT [PK_ID_Ucheniki] PRIMARY KEY CLUSTERED 
(
	[Id_Ucheniki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zav_Kafedra]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zav_Kafedra](
	[Tab_Number_Zav_Kafedra] [int] NULL,
	[Stazh_Zav_Kafedra] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zayavka]    Script Date: 14.11.2023 11:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zayavka](
	[Kod_Zayavka] [int] NULL,
	[Number_Zayavka] [varchar](8) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Academics] ON 

INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (1, N'Аничков Николай Николаевич', CAST(N'1885-11-03' AS Date), N'медицина', 1939)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (2, N'Бартольд Василий Владимирович', CAST(N'1869-11-15' AS Date), N'историк', 1913)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (3, N'Белопольский Аристарх Аполлонович', CAST(N'1854-07-13' AS Date), N'астрофизик', 1903)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (4, N'Бородин Иван Парфеньевич', CAST(N'1847-01-30' AS Date), N'ботаник', 1902)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (5, N'Вальден Павел Иванович', CAST(N'1863-07-26' AS Date), N'химик-технолог', 1910)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (6, N'Вернадский Владимир Иванович', CAST(N'1863-03-12' AS Date), N'геохимик', 1908)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (7, N'Виноградов Павел Гаврилович', CAST(N'1854-11-30' AS Date), N'историк', 1914)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (8, N'Ипатьев Владимир Николаевич', CAST(N'1867-11-21' AS Date), N'химик', 1916)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (9, N'Истрин Василий Михайлович', CAST(N'1865-02-22' AS Date), N'филолог', 1907)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (10, N'Карпинский Александр Петрович', CAST(N'1847-01-07' AS Date), N'геолог', 1889)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (11, N'Коковцов Павел Константинович', CAST(N'1861-07-01' AS Date), N'историк', 1906)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (12, N'Курнаков Николай Семёнович', CAST(N'1860-12-06' AS Date), N'химик', 1913)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (13, N'Марр Николай Яковлевич', CAST(N'1865-01-06' AS Date), N'лингвист', 1912)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (14, N'Насонов Николай Викторович', CAST(N'1855-02-26' AS Date), N'зоолог', 1906)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (15, N'Ольденбург Сергей Фёдорович', CAST(N'1863-09-26' AS Date), N'историк', 1903)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (16, N'Павлов Иван Петрович', CAST(N'1849-09-26' AS Date), N'физиолог', 1907)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (17, N'Перетц Владимир Николаевич', CAST(N'1870-01-31' AS Date), N'филолог', 1914)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (18, N'Соболевский Алексей Иванович', CAST(N'1857-01-07' AS Date), N'лингвист', 1900)
INSERT [dbo].[Academics] ([Id_Academics], [FullName_Academics], [DateBorn_Academics], [Specialization_Academics], [YearAssigment_Academics]) VALUES (19, N'Стеклов Владимир Андреевич', CAST(N'1864-01-09' AS Date), N'математик', 1912)
SET IDENTITY_INSERT [dbo].[Academics] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (1, N'Австрия', N'Вена', N'83858', 8741753, N'Европа', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (2, N'Азербайджан', N'Баку', N'86600', 9705600, N'Азия', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (3, N'Албания', N'Тирана', N'28748', 2866026, N'Европа', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (4, N'Алжир', N'Алжир', N'2381740', 39813722, N'Африка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (5, N'Ангола', N'Луанда', N'1246700', 25831000, N'Африка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (6, N'Аргентина', N'Буэнос-Айрес', N'2766890', 43847000, N'Южная Америка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (7, N'Афганистан', N'Кабул', N'647500', 29822848, N'Азия', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (8, N'Бангладеш', N'Дакка', N'144000', 160221000, N'Азия', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (9, N'Бахрейн', N'Манама', N'701', 1397000, N'Азия', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (10, N'Белиз', N'Бельмопан', N'22966', 377968, N'Северная Америка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (11, N'Белоруссия', N'Минск', N'207595', 9498400, N'Европа', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (12, N'Бельгия', N'Брюссель', N'30528', 11250585, N'Европа', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (13, N'Бенин', N'Порто-Ново', N'112620', 11167000, N'Африка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (14, N'Болгария', N'София', N'110910', 7153784, N'Европа', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (15, N'Боливия', N'Сукре', N'1098580', 10985059, N'Южная Америка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (16, N'Ботсвана', N'Габороне', N'600370', 2209208, N'Африка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (17, N'Бразилия', N'Бразилиа', N'8511965', 206081432, N'Южная Америка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (18, N'Буркина-Фасо', N'Уагадугу', N'274200', 19034397, N'Африка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (19, N'Бутан', N'Тхимпху', N'47000', 784000, N'Азия', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (20, N'Великобритания', N'Лондон', N'244820', 65341183, N'Европа', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (21, N'Венгрия', N'Будапешт', N'93030', 9830485, N'Европа', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (22, N'Венесуэла', N'Каракас', N'912050', 31028637, N'Южная Америка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (23, N'Восточный Тимор', N'Дили', N'14874', 1167242, N'Азия', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (24, N'Вьетнам', N'Ханой', N'329560', 91713300, N'Азия', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (25, N'Афганистан', N'Кабул', N'647', 20340, N'Азия', 3)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (26, N'Монголия', N'Улан-Батор', N'1565', 1555, N'Азия', 4)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (27, N'Япония', N'Токио', N'372', 114276, N'Азия', 1)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (28, N'Франция', N'Париж', N'551', 53183, N'Европа', 3)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (29, N'Швеция', N'Стокгольм', N'450', 8268, N'Европа', 1)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (30, N'Египет', N'Каир', N'1001', 38740, N'Африка', 3)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (31, N'Сомали', N'Могадишо', N'638', 3350, N'Африка', NULL)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (32, N'США', N'Вашингтон', N'9363', 217700, N'Америка', 3)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (33, N'Мексика', N'Мехико', N'1973', 62500, N'Америка', 4)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (34, N'Мальта', N'Валлетта', N'3000', 330, N'Европа', 4)
INSERT [dbo].[Countries] ([Id_Country], [Name_Country], [Capital_Country], [Square_Country], [Population_Country], [Continent_Country], [Tip_Managment_Country]) VALUES (35, N'Монако', N'Монако', N'2000', 25, N'Европа', 1)
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
INSERT [dbo].[Discipline] ([Kod_Discipline], [Volume_Discipline], [Name_Discipline], [Ispolnitel_Discipline]) VALUES (101, 320, N'Математика', N'вм')
INSERT [dbo].[Discipline] ([Kod_Discipline], [Volume_Discipline], [Name_Discipline], [Ispolnitel_Discipline]) VALUES (102, 160, N'Информатика', N'пи')
INSERT [dbo].[Discipline] ([Kod_Discipline], [Volume_Discipline], [Name_Discipline], [Ispolnitel_Discipline]) VALUES (103, 160, N'Физика', N'оф')
INSERT [dbo].[Discipline] ([Kod_Discipline], [Volume_Discipline], [Name_Discipline], [Ispolnitel_Discipline]) VALUES (202, 120, N'Базы данных', N'ис')
INSERT [dbo].[Discipline] ([Kod_Discipline], [Volume_Discipline], [Name_Discipline], [Ispolnitel_Discipline]) VALUES (204, 160, N'Электроника', N'эф')
INSERT [dbo].[Discipline] ([Kod_Discipline], [Volume_Discipline], [Name_Discipline], [Ispolnitel_Discipline]) VALUES (205, 80, N'Программирование', N'пи')
INSERT [dbo].[Discipline] ([Kod_Discipline], [Volume_Discipline], [Name_Discipline], [Ispolnitel_Discipline]) VALUES (209, 80, N'Моделирование', N'мм')
GO
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (101, N'пи', N'Прохоров П.П.', N'зав. кафедрой', CAST(35000.00 AS Decimal(7, 2)), 101)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (102, N'пи', N'Семенов С.С.', N'преподаватель', CAST(25000.00 AS Decimal(7, 2)), 101)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (105, N'пи', N'Петров П.П.', N'преподаватель', CAST(25000.00 AS Decimal(7, 2)), 101)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (153, N'пи', N'Сидорова С.С.', N'инженер', CAST(15000.00 AS Decimal(7, 2)), 102)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (201, N'ис', N'Андреев А.А.', N'зав. кафедрой', CAST(35000.00 AS Decimal(7, 2)), 201)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (202, N'ис', N'Борисов Б.Б.', N'преподаватель', CAST(25000.00 AS Decimal(7, 2)), 201)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (241, N'ис', N'Глухов Г.Г.', N'инженер', CAST(20000.00 AS Decimal(7, 2)), 201)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (242, N'ис', N'Чернов Ч.Ч.', N'инженер', CAST(15000.00 AS Decimal(7, 2)), 202)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (301, N'мм', N'Басов Б.Б.', N'зав. кафедрой', CAST(35000.00 AS Decimal(7, 2)), 301)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (302, N'мм', N'Сергеева С.С.', N'преподаватель', CAST(25000.00 AS Decimal(7, 2)), 301)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (401, N'оф', N'Волков В.В.', N'зав. кафедрой', CAST(35000.00 AS Decimal(7, 2)), 401)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (402, N'оф', N'Зайцев З.З.', N'преподаватель', CAST(25000.00 AS Decimal(7, 2)), 401)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (403, N'оф', N'Смирнов С.С.', N'преподаватель', CAST(15000.00 AS Decimal(7, 2)), 401)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (435, N'оф', N'Лисин Л.Л.', N'инженер', CAST(20000.00 AS Decimal(7, 2)), 402)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (501, N'вм', N'Кузнецов К.К.', N'зав. кафедрой', CAST(35000.00 AS Decimal(7, 2)), 501)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (502, N'вм', N'Романцев Р.Р.', N'преподаватель', CAST(25000.00 AS Decimal(7, 2)), 501)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (503, N'вм', N'Соловьев С.С.', N'преподаватель', CAST(25000.00 AS Decimal(7, 2)), 501)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (601, N'эф', N'Зверев З.З.', N'зав. кафедрой', CAST(35000.00 AS Decimal(7, 2)), 601)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (602, N'эф', N'Сорокина С.С.', N'преподаватель', CAST(25000.00 AS Decimal(7, 2)), 601)
INSERT [dbo].[Employee] ([Tab_Nomer_Employee], [Shifr_Kafedra], [Name_Employee], [Role_Employee], [Salary_Employee], [Boss_Employee]) VALUES (614, N'эф', N'Григорьев Г.Г.', N'инженер', CAST(20000.00 AS Decimal(7, 2)), 602)
GO
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-05' AS Date), 102, 10101, 102, N'т505', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-05' AS Date), 102, 10102, 102, N'т505', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-05' AS Date), 202, 20101, 202, N'т506', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-05' AS Date), 202, 20102, 202, N'т506', 3)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-07' AS Date), 102, 30101, 105, N'ф419', 3)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-07' AS Date), 102, 30102, 101, N'т506', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-07' AS Date), 102, 80101, 102, N'м425', 5)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-09' AS Date), 205, 80102, 402, N'м424', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-09' AS Date), 209, 20101, 302, N'ф333', 3)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-10' AS Date), 101, 10101, 501, N'т506', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-10' AS Date), 101, 10102, 501, N'т506', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-10' AS Date), 204, 30102, 601, N'ф349', 5)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-10' AS Date), 209, 80101, 301, N'э105', 5)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-10' AS Date), 209, 80102, 301, N'э105', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-12' AS Date), 101, 80101, 502, N'с324', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-15' AS Date), 101, 30101, 503, N'ф417', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-15' AS Date), 101, 50101, 501, N'ф201', 5)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-15' AS Date), 101, 50102, 501, N'ф201', 3)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-15' AS Date), 103, 10101, 403, N'ф414', 4)
INSERT [dbo].[Examen] ([Date_Examen], [Kod_Examen], [Reg_Number_Examen], [Tab_Number_Examen], [Auditoria_Examen], [Ocenka_Examen]) VALUES (CAST(N'2015-06-17' AS Date), 102, 10101, 102, N'т505', 5)
GO
INSERT [dbo].[Facultet] ([Abb_Facultet], [Name_Facultet]) VALUES (N'Гн', N'Гуманитарные науки')
INSERT [dbo].[Facultet] ([Abb_Facultet], [Name_Facultet]) VALUES (N'Ен', N'Естественные науки')
INSERT [dbo].[Facultet] ([Abb_Facultet], [Name_Facultet]) VALUES (N'Ит', N'Информационные технологии')
INSERT [dbo].[Facultet] ([Abb_Facultet], [Name_Facultet]) VALUES (N'Фм', N'Физико-математический')
GO
INSERT [dbo].[Inzhener] ([Tab_Number_Inzhener], [Specialnost_Inzhener]) VALUES (153, N'электроник')
INSERT [dbo].[Inzhener] ([Tab_Number_Inzhener], [Specialnost_Inzhener]) VALUES (241, N'электроник')
INSERT [dbo].[Inzhener] ([Tab_Number_Inzhener], [Specialnost_Inzhener]) VALUES (242, N'программист')
INSERT [dbo].[Inzhener] ([Tab_Number_Inzhener], [Specialnost_Inzhener]) VALUES (435, N'электроник')
INSERT [dbo].[Inzhener] ([Tab_Number_Inzhener], [Specialnost_Inzhener]) VALUES (614, N'программист')
GO
INSERT [dbo].[Kafedra] ([Shifr_Kafedra], [Name_Kafedra], [Abb_Facultet]) VALUES (N'вм', N'Высшая математика', N'ен')
INSERT [dbo].[Kafedra] ([Shifr_Kafedra], [Name_Kafedra], [Abb_Facultet]) VALUES (N'ис', N'Информационные системы', N'ит')
INSERT [dbo].[Kafedra] ([Shifr_Kafedra], [Name_Kafedra], [Abb_Facultet]) VALUES (N'мм', N'Математическое моделирование', N'фм')
INSERT [dbo].[Kafedra] ([Shifr_Kafedra], [Name_Kafedra], [Abb_Facultet]) VALUES (N'оф', N'Общая физика', N'ен')
INSERT [dbo].[Kafedra] ([Shifr_Kafedra], [Name_Kafedra], [Abb_Facultet]) VALUES (N'пи', N'Прикладная информатика', N'ит')
INSERT [dbo].[Kafedra] ([Shifr_Kafedra], [Name_Kafedra], [Abb_Facultet]) VALUES (N'эф', N'Экспериментальная физика', N'фм')
GO
INSERT [dbo].[Management] ([ID_Management], [Vid_Management]) VALUES (1, N'Конституционная монархия')
INSERT [dbo].[Management] ([ID_Management], [Vid_Management]) VALUES (2, N'Абсолютная монархия')
INSERT [dbo].[Management] ([ID_Management], [Vid_Management]) VALUES (3, N'Президентская республика')
INSERT [dbo].[Management] ([ID_Management], [Vid_Management]) VALUES (4, N'Парламентская республика')
INSERT [dbo].[Management] ([ID_Management], [Vid_Management]) VALUES (5, N'Военная хунта')
GO
INSERT [dbo].[Specialization] ([Number_Spec], [Napravlenie_Spec], [Shifr_Kafedra]) VALUES (N'01.03.04', N'Прикладная математика', N'мм')
INSERT [dbo].[Specialization] ([Number_Spec], [Napravlenie_Spec], [Shifr_Kafedra]) VALUES (N'09.03.02', N'Информационные системы и технологии', N'ис')
INSERT [dbo].[Specialization] ([Number_Spec], [Napravlenie_Spec], [Shifr_Kafedra]) VALUES (N'09.03.03', N'Прикладная информатика', N'пи')
INSERT [dbo].[Specialization] ([Number_Spec], [Napravlenie_Spec], [Shifr_Kafedra]) VALUES (N'14.03.02', N'Ядерные физика и технологии', N'эф')
INSERT [dbo].[Specialization] ([Number_Spec], [Napravlenie_Spec], [Shifr_Kafedra]) VALUES (N'38.03.05', N'Бизнес-информатика', N'ис')
GO
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (10101, N'09.03.03', N'Николаева Н. Н.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (10102, N'09.03.03', N'Иванов И. И.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (10103, N'09.03.03', N'Крюков К. К.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (20101, N'09.03.02', N'Андреев А. А.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (20102, N'09.03.02', N'Федоров Ф. Ф.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (30101, N'14.03.02', N'Бондаренко Б. Б.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (30102, N'14.03.02', N'Цветков К. К.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (30103, N'14.03.02', N'Петров П. П.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (50101, N'01.03.04', N'Сергеев С. С.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (50102, N'01.03.04', N'Кудрявцев К. К.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (80101, N'38.03.05', N'Макаров М. М.')
INSERT [dbo].[Student] ([Reg_Number_Student], [Number_Student], [SName_Student]) VALUES (80102, N'38.03.05', N'Яковлев Я. Я.')
GO
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (101, N'профессор', N'д.т.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (102, N'доцент', N'к.ф.-м.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (105, N'доцент', N'к.т.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (201, N'профессор', N'д.ф.-м.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (202, N'доцент', N'к.ф.-м.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (301, N'профессор', N'д.т.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (302, N'доцент', N'к.т.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (401, N'профессор', N'д.т.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (402, N'доцент', N'к.т.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (403, N'ассистент', NULL)
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (501, N'профессор', N'д.ф.-м.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (502, N'профессор', N'д.ф.-м.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (503, N'доцент', N'к.ф.-м.н.')
INSERT [dbo].[Teacher] ([Tab_Number_Teacher], [Zvanie_Teacher], [Stepen_Teacher]) VALUES (601, N'профессор', N'д.ф.-м.н.')
GO
SET IDENTITY_INSERT [dbo].[Ucheniki] ON 

INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (1, N'Иванова', N'Математика', N'Лицей', 98.5)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (2, N'Петров', N'Физика', N'Лицей', 99)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (3, N'Сидоров', N'Математика', N'Лицей', 88)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (4, N'Полухина', N'Физика', N'Гимназия', 78)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (5, N'Матвеева', N'Химия', N'Лицей', 92)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (6, N'Касимов', N'Химия', N'Гимназия', 68)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (7, N'Нурулин', N'Математика', N'Гимназия', 81)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (8, N'Авдеев', N'Физика', N'Лицей', 87)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (9, N'Никитина', N'Химия', N'Лицей', 94)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (10, N'Барышева', N'Химия', N'Лицей', 88)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (12, N'Сирачова', N'Математика', N'Гимназия', 98)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (13, N'Семенова', N'Химия', N'Гимназия', 80)
INSERT [dbo].[Ucheniki] ([Id_Ucheniki], [Familiya_Ucheniki], [Subject_Ucheniki], [School_Ucheniki], [Scores_Ucheniki]) VALUES (14, N'Гараев', N'Информатика', N'Гимназия', 74)
SET IDENTITY_INSERT [dbo].[Ucheniki] OFF
GO
INSERT [dbo].[Zav_Kafedra] ([Tab_Number_Zav_Kafedra], [Stazh_Zav_Kafedra]) VALUES (101, 15)
INSERT [dbo].[Zav_Kafedra] ([Tab_Number_Zav_Kafedra], [Stazh_Zav_Kafedra]) VALUES (201, 18)
INSERT [dbo].[Zav_Kafedra] ([Tab_Number_Zav_Kafedra], [Stazh_Zav_Kafedra]) VALUES (301, 20)
INSERT [dbo].[Zav_Kafedra] ([Tab_Number_Zav_Kafedra], [Stazh_Zav_Kafedra]) VALUES (401, 10)
INSERT [dbo].[Zav_Kafedra] ([Tab_Number_Zav_Kafedra], [Stazh_Zav_Kafedra]) VALUES (501, 18)
INSERT [dbo].[Zav_Kafedra] ([Tab_Number_Zav_Kafedra], [Stazh_Zav_Kafedra]) VALUES (601, 8)
GO
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (101, N'01.03.04')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (205, N'01.03.04')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (209, N'01.03.04')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (101, N'09.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (102, N'09.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (103, N'09.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (202, N'09.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (205, N'09.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (209, N'09.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (101, N'09.03.03')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (102, N'09.03.03')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (103, N'09.03.03')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (202, N'09.03.03')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (205, N'09.03.03')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (101, N'14.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (102, N'14.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (103, N'14.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (204, N'14.03.02')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (101, N'38.03.05')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (103, N'38.03.05')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (202, N'38.03.05')
INSERT [dbo].[Zayavka] ([Kod_Zayavka], [Number_Zayavka]) VALUES (209, N'38.03.05')
GO
ALTER TABLE [dbo].[Discipline]  WITH CHECK ADD  CONSTRAINT [FK_Ispolnitel_Discipline] FOREIGN KEY([Ispolnitel_Discipline])
REFERENCES [dbo].[Kafedra] ([Shifr_Kafedra])
GO
ALTER TABLE [dbo].[Discipline] CHECK CONSTRAINT [FK_Ispolnitel_Discipline]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Shifr_Kafedra] FOREIGN KEY([Shifr_Kafedra])
REFERENCES [dbo].[Kafedra] ([Shifr_Kafedra])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Shifr_Kafedra]
GO
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Kod_Examen] FOREIGN KEY([Kod_Examen])
REFERENCES [dbo].[Discipline] ([Kod_Discipline])
GO
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Kod_Examen]
GO
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Reg_Number_Examen] FOREIGN KEY([Reg_Number_Examen])
REFERENCES [dbo].[Student] ([Reg_Number_Student])
GO
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Reg_Number_Examen]
GO
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Tab_Number_Examen] FOREIGN KEY([Tab_Number_Examen])
REFERENCES [dbo].[Employee] ([Tab_Nomer_Employee])
GO
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Tab_Number_Examen]
GO
ALTER TABLE [dbo].[Inzhener]  WITH CHECK ADD  CONSTRAINT [FK_Tab_Number_Inzhener] FOREIGN KEY([Tab_Number_Inzhener])
REFERENCES [dbo].[Employee] ([Tab_Nomer_Employee])
GO
ALTER TABLE [dbo].[Inzhener] CHECK CONSTRAINT [FK_Tab_Number_Inzhener]
GO
ALTER TABLE [dbo].[Kafedra]  WITH CHECK ADD  CONSTRAINT [FK_Abb_Facultet] FOREIGN KEY([Abb_Facultet])
REFERENCES [dbo].[Facultet] ([Abb_Facultet])
GO
ALTER TABLE [dbo].[Kafedra] CHECK CONSTRAINT [FK_Abb_Facultet]
GO
ALTER TABLE [dbo].[Specialization]  WITH CHECK ADD  CONSTRAINT [FK_Shifr_Kafedra_Spec] FOREIGN KEY([Shifr_Kafedra])
REFERENCES [dbo].[Kafedra] ([Shifr_Kafedra])
GO
ALTER TABLE [dbo].[Specialization] CHECK CONSTRAINT [FK_Shifr_Kafedra_Spec]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Number_Student] FOREIGN KEY([Number_Student])
REFERENCES [dbo].[Specialization] ([Number_Spec])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Number_Student]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Tab_Number_Teacher] FOREIGN KEY([Tab_Number_Teacher])
REFERENCES [dbo].[Employee] ([Tab_Nomer_Employee])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Tab_Number_Teacher]
GO
ALTER TABLE [dbo].[Zav_Kafedra]  WITH CHECK ADD  CONSTRAINT [FK_Tab_Number_Zav_Kafedra] FOREIGN KEY([Tab_Number_Zav_Kafedra])
REFERENCES [dbo].[Employee] ([Tab_Nomer_Employee])
GO
ALTER TABLE [dbo].[Zav_Kafedra] CHECK CONSTRAINT [FK_Tab_Number_Zav_Kafedra]
GO
ALTER TABLE [dbo].[Zayavka]  WITH CHECK ADD  CONSTRAINT [FK_Kod_Zayavka] FOREIGN KEY([Kod_Zayavka])
REFERENCES [dbo].[Discipline] ([Kod_Discipline])
GO
ALTER TABLE [dbo].[Zayavka] CHECK CONSTRAINT [FK_Kod_Zayavka]
GO
ALTER TABLE [dbo].[Zayavka]  WITH CHECK ADD  CONSTRAINT [FK_Number_Zayavka] FOREIGN KEY([Number_Zayavka])
REFERENCES [dbo].[Specialization] ([Number_Spec])
GO
ALTER TABLE [dbo].[Zayavka] CHECK CONSTRAINT [FK_Number_Zayavka]
GO
ALTER TABLE [dbo].[Gymnasists]  WITH CHECK ADD  CONSTRAINT [CK_Scores_Gymnasists] CHECK  (([Scores_Gymnasists]>=(0) AND [Scores_Gymnasists]<=(100)))
GO
ALTER TABLE [dbo].[Gymnasists] CHECK CONSTRAINT [CK_Scores_Gymnasists]
GO
ALTER TABLE [dbo].[Ucheniki]  WITH CHECK ADD  CONSTRAINT [CK_Scores_Ucheniki] CHECK  (([Scores_Ucheniki]>=(0) AND [Scores_Ucheniki]<=(100)))
GO
ALTER TABLE [dbo].[Ucheniki] CHECK CONSTRAINT [CK_Scores_Ucheniki]
GO
