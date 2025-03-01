USE [master]
GO
/****** Object:  Database [Xiaoyou]    Script Date: 06/22/2016 21:55:37 ******/
CREATE DATABASE [Xiaoyou] ON  PRIMARY 
( NAME = N'Xiaoyou', FILENAME = N'G:\网站开发语言\ASP.Net\201409750146贾俊祥\数据库文件\Xiaoyou.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Xiaoyou_log', FILENAME = N'G:\网站开发语言\ASP.Net\201409750146贾俊祥\数据库文件\Xiaoyou_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Xiaoyou] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Xiaoyou].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [Xiaoyou] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Xiaoyou] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Xiaoyou] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Xiaoyou] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Xiaoyou] SET ARITHABORT OFF
GO
ALTER DATABASE [Xiaoyou] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Xiaoyou] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Xiaoyou] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Xiaoyou] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Xiaoyou] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Xiaoyou] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Xiaoyou] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Xiaoyou] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Xiaoyou] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Xiaoyou] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Xiaoyou] SET  DISABLE_BROKER
GO
ALTER DATABASE [Xiaoyou] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Xiaoyou] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Xiaoyou] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Xiaoyou] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Xiaoyou] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Xiaoyou] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Xiaoyou] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Xiaoyou] SET  READ_WRITE
GO
ALTER DATABASE [Xiaoyou] SET RECOVERY FULL
GO
ALTER DATABASE [Xiaoyou] SET  MULTI_USER
GO
ALTER DATABASE [Xiaoyou] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Xiaoyou] SET DB_CHAINING OFF
GO
USE [Xiaoyou]
GO
/****** Object:  Table [dbo].[xiaoyou]    Script Date: 06/22/2016 21:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xiaoyou](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
	[sex] [text] NULL,
	[class] [nvarchar](20) NULL,
	[grade] [nvarchar](20) NULL,
	[major] [varchar](20) NULL,
	[tel] [nvarchar](30) NULL,
	[address] [text] NULL,
	[job] [text] NULL,
	[qq] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[xiaoyou] ON
INSERT [dbo].[xiaoyou] ([id], [name], [sex], [class], [grade], [major], [tel], [address], [job], [qq]) VALUES (1, N'张三', N'男', N'1班', N'2014', N'新闻', N'123', N'临沂', N'暂无', N'123')
INSERT [dbo].[xiaoyou] ([id], [name], [sex], [class], [grade], [major], [tel], [address], [job], [qq]) VALUES (2, N'李四', N'男', N'2班', N'2014', N'软件', N'456', N'济南', N'白领', N'456')
INSERT [dbo].[xiaoyou] ([id], [name], [sex], [class], [grade], [major], [tel], [address], [job], [qq]) VALUES (3, N'王五', N'女', N'1班', N'2015', N'机械', N'785', N'青岛', N'教师', N'785')
INSERT [dbo].[xiaoyou] ([id], [name], [sex], [class], [grade], [major], [tel], [address], [job], [qq]) VALUES (4, N'赵六', N'女', N'1班', N'2015', N'软件', N'78421', N'德州', N'经理', N'78421')
INSERT [dbo].[xiaoyou] ([id], [name], [sex], [class], [grade], [major], [tel], [address], [job], [qq]) VALUES (5, N'张珊', N'女', N'2班', N'2014', N'软件', N'1485', N'临沂', N'暂无', N'1485')
SET IDENTITY_INSERT [dbo].[xiaoyou] OFF
/****** Object:  Table [dbo].[userinfo]    Script Date: 06/22/2016 21:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userinfo](
	[name] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[qx] [int] NOT NULL,
	[qq] [nvarchar](10) NULL,
	[tel] [nvarchar](20) NULL,
	[email] [nvarchar](20) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[userinfo] ([name], [password], [qx], [qq], [tel], [email]) VALUES (N'admin', N'123', 1, N'123456', N'123456', N'123456@163.com')
INSERT [dbo].[userinfo] ([name], [password], [qx], [qq], [tel], [email]) VALUES (N'sa', N'sa', 0, N'456789', N'456789', N'456789@163.com')
