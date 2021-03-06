USE [master]
GO
/****** Object:  Database [DM1]    Script Date: 19.06.2021 17:28:24 ******/
CREATE DATABASE [DM1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DM1', FILENAME = N'E:\sql server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DM1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DM1_log', FILENAME = N'E:\sql server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DM1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DM1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DM1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DM1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DM1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DM1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DM1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DM1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DM1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DM1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DM1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DM1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DM1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DM1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DM1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DM1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DM1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DM1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DM1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DM1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DM1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DM1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DM1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DM1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DM1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DM1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DM1] SET  MULTI_USER 
GO
ALTER DATABASE [DM1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DM1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DM1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DM1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DM1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DM1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DM1] SET QUERY_STORE = OFF
GO
USE [DM1]
GO
/****** Object:  Table [dbo].[House]    Script Date: 19.06.2021 17:28:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.06.2021 17:28:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[House] ON 

INSERT [dbo].[House] ([Id], [UserId], [Address]) VALUES (1, 2, N'Сусанина')
SET IDENTITY_INSERT [dbo].[House] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (2, N'Семенов', N'Евгений ', N'Николаевич', N'32-25-55', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (3, N'Денисова', N'Олеся', N'Леонидовна', NULL, N'dummy@email.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (5, N'Сафронов', N'Алексей', N'Вячеславович', NULL, N'client@esoft.tech')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (6, N'Кудряшов', N'Александр', N'Витальевич', N'551988', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (8, N'Фёдоров', N'Алексей', N'Николаевич', NULL, N'fedorov@mail.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (10, N'Пелымская', N'Светлана', N'Александровна', N'83452112233', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (12, N'Коновальчик', N'Татьяна', N'Геннадьевна', NULL, N'dummy@email.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (14, N'Молоковская', N'Светлана', N'Михайловна', N'898489848', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (16, N'Моторина', N'Анастасия', N'Сергеевна', N'895159848', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (17, N'Поспелова', N'Ольга', N'Александровна', NULL, N'angel@mail.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (18, N'Жиляков', N'Владимир', N'Владимирович', N'445588', N'445588@email.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (20, N'Ефремов', N'Владислав', N'Николаевич', NULL, N'parampampam@mail.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (21, N'Баль', N'Валентина', N'Сергеевна', N'+7998888444', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (22, N'Стрелков', N'Артем', N'Николаевич', NULL, N'test@test.test')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (23, N'Луканин', N'Павел', N'Валерьевич', NULL, N'foo@bar.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (25, N'Шарипова', N'Эльвира', N'Закирчановна', N'12345678910', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (26, N'Фомина', N'Маргарита', N'Николаевна', NULL, N'fomina@email.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (27, N'Кремлев', N'Владислав', N'Юрьевич', N'777', N'kremlevvu@gmail.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (28, N'Пономарева', N'Елена', N'Сергеевна', NULL, N'ponomareva@gmail.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (29, N'Шелест', N'Тамара', N'Васильевна', N'112', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (30, N'Шарипов', N'Рустам', N'Владимирович', NULL, N'sharipov@yandex.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (31, N'Романов', N'Сергей', N'Федорович', N'02', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (32, N'Кручинин', N'Иван', N'Андреевич', NULL, N'kruch@list.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (33, N'Алферов', N'Алексей', N'Николаевич', N'+688899444', NULL)
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (35, N'Попов ', N'Алексей', N'Николаевич', N'+0489848565', N'popovan@bik.ru')
INSERT [dbo].[User] ([Id], [FirstName], [Name], [LastName], [Phone], [Email]) VALUES (36, N'Неезжала', N'Наталья', N'Леонидовна', NULL, N'neez@mail.ru')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_User]
GO
USE [master]
GO
ALTER DATABASE [DM1] SET  READ_WRITE 
GO
