USE [master]
GO
/****** Object:  Database [curso_php]    Script Date: 12/02/2020 06:12:59 p. m. ******/
CREATE DATABASE [curso_php]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'curso_php', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\curso_php.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'curso_php_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\curso_php_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [curso_php] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [curso_php].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [curso_php] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [curso_php] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [curso_php] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [curso_php] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [curso_php] SET ARITHABORT OFF 
GO
ALTER DATABASE [curso_php] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [curso_php] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [curso_php] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [curso_php] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [curso_php] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [curso_php] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [curso_php] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [curso_php] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [curso_php] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [curso_php] SET  ENABLE_BROKER 
GO
ALTER DATABASE [curso_php] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [curso_php] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [curso_php] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [curso_php] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [curso_php] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [curso_php] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [curso_php] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [curso_php] SET RECOVERY FULL 
GO
ALTER DATABASE [curso_php] SET  MULTI_USER 
GO
ALTER DATABASE [curso_php] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [curso_php] SET DB_CHAINING OFF 
GO
ALTER DATABASE [curso_php] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [curso_php] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [curso_php] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'curso_php', N'ON'
GO
ALTER DATABASE [curso_php] SET QUERY_STORE = OFF
GO
USE [curso_php]
GO
/****** Object:  Schema [curso_php]    Script Date: 12/02/2020 06:12:59 p. m. ******/
CREATE SCHEMA [curso_php]
GO
/****** Object:  Schema [m2ss]    Script Date: 12/02/2020 06:12:59 p. m. ******/
CREATE SCHEMA [m2ss]
GO
/****** Object:  Schema [test]    Script Date: 12/02/2020 06:12:59 p. m. ******/
CREATE SCHEMA [test]
GO
/****** Object:  Table [curso_php].[informacion]    Script Date: 12/02/2020 06:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [curso_php].[informacion](
	[Nombre] [varchar](50) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Idioma] [varchar](50) NOT NULL,
 CONSTRAINT [PK_informacion_Nombre] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [test].[hobbies]    Script Date: 12/02/2020 06:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [test].[hobbies](
	[COL 1] [nvarchar](38) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [test].[noticias1]    Script Date: 12/02/2020 06:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [test].[noticias1](
	[COL 1] [nvarchar](245) NULL,
	[COL 2] [nvarchar](184) NULL,
	[COL 3] [nvarchar](159) NULL,
	[COL 4] [nvarchar](79) NULL,
	[COL 5] [nvarchar](53) NULL,
	[COL 6] [nvarchar](59) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [test].[noticias2]    Script Date: 12/02/2020 06:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [test].[noticias2](
	[COL 1] [nvarchar](257) NULL,
	[COL 2] [nvarchar](203) NULL,
	[COL 3] [nvarchar](114) NULL,
	[COL 4] [nvarchar](152) NULL,
	[COL 5] [nvarchar](120) NULL,
	[COL 6] [nvarchar](66) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [test].[noticias3]    Script Date: 12/02/2020 06:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [test].[noticias3](
	[COL 1] [nvarchar](4) NULL,
	[COL 2] [nvarchar](294) NULL,
	[COL 3] [nvarchar](10) NULL,
	[COL 4] [nvarchar](8) NULL,
	[COL 5] [nvarchar](5) NULL,
	[COL 6] [nvarchar](18) NULL,
	[COL 7] [nvarchar](6) NULL,
	[COL 8] [nvarchar](42) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [test].[the_worlds_50_best_restaurants_2018]    Script Date: 12/02/2020 06:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [test].[the_worlds_50_best_restaurants_2018](
	[COL 1] [nvarchar](4) NULL,
	[COL 2] [nvarchar](7) NULL,
	[COL 3] [nvarchar](32) NULL,
	[COL 4] [nvarchar](16) NULL,
	[COL 5] [nvarchar](12) NULL,
	[COL 6] [nvarchar](10) NULL,
	[COL 7] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [test].[worldcups]    Script Date: 12/02/2020 06:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [test].[worldcups](
	[COL 1] [nvarchar](4) NULL,
	[COL 2] [nvarchar](12) NULL,
	[COL 3] [nvarchar](10) NULL,
	[COL 4] [nvarchar](14) NULL,
	[COL 5] [nvarchar](11) NULL,
	[COL 6] [nvarchar](14) NULL,
	[COL 7] [nvarchar](11) NULL,
	[COL 8] [nvarchar](14) NULL,
	[COL 9] [nvarchar](13) NULL,
	[COL 10] [nvarchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [test].[hobbies] ADD  DEFAULT (NULL) FOR [COL 1]
GO
ALTER TABLE [test].[noticias1] ADD  DEFAULT (NULL) FOR [COL 1]
GO
ALTER TABLE [test].[noticias1] ADD  DEFAULT (NULL) FOR [COL 2]
GO
ALTER TABLE [test].[noticias1] ADD  DEFAULT (NULL) FOR [COL 3]
GO
ALTER TABLE [test].[noticias1] ADD  DEFAULT (NULL) FOR [COL 4]
GO
ALTER TABLE [test].[noticias1] ADD  DEFAULT (NULL) FOR [COL 5]
GO
ALTER TABLE [test].[noticias1] ADD  DEFAULT (NULL) FOR [COL 6]
GO
ALTER TABLE [test].[noticias2] ADD  DEFAULT (NULL) FOR [COL 1]
GO
ALTER TABLE [test].[noticias2] ADD  DEFAULT (NULL) FOR [COL 2]
GO
ALTER TABLE [test].[noticias2] ADD  DEFAULT (NULL) FOR [COL 3]
GO
ALTER TABLE [test].[noticias2] ADD  DEFAULT (NULL) FOR [COL 4]
GO
ALTER TABLE [test].[noticias2] ADD  DEFAULT (NULL) FOR [COL 5]
GO
ALTER TABLE [test].[noticias2] ADD  DEFAULT (NULL) FOR [COL 6]
GO
ALTER TABLE [test].[noticias3] ADD  DEFAULT (NULL) FOR [COL 1]
GO
ALTER TABLE [test].[noticias3] ADD  DEFAULT (NULL) FOR [COL 2]
GO
ALTER TABLE [test].[noticias3] ADD  DEFAULT (NULL) FOR [COL 3]
GO
ALTER TABLE [test].[noticias3] ADD  DEFAULT (NULL) FOR [COL 4]
GO
ALTER TABLE [test].[noticias3] ADD  DEFAULT (NULL) FOR [COL 5]
GO
ALTER TABLE [test].[noticias3] ADD  DEFAULT (NULL) FOR [COL 6]
GO
ALTER TABLE [test].[noticias3] ADD  DEFAULT (NULL) FOR [COL 7]
GO
ALTER TABLE [test].[noticias3] ADD  DEFAULT (NULL) FOR [COL 8]
GO
ALTER TABLE [test].[the_worlds_50_best_restaurants_2018] ADD  DEFAULT (NULL) FOR [COL 1]
GO
ALTER TABLE [test].[the_worlds_50_best_restaurants_2018] ADD  DEFAULT (NULL) FOR [COL 2]
GO
ALTER TABLE [test].[the_worlds_50_best_restaurants_2018] ADD  DEFAULT (NULL) FOR [COL 3]
GO
ALTER TABLE [test].[the_worlds_50_best_restaurants_2018] ADD  DEFAULT (NULL) FOR [COL 4]
GO
ALTER TABLE [test].[the_worlds_50_best_restaurants_2018] ADD  DEFAULT (NULL) FOR [COL 5]
GO
ALTER TABLE [test].[the_worlds_50_best_restaurants_2018] ADD  DEFAULT (NULL) FOR [COL 6]
GO
ALTER TABLE [test].[the_worlds_50_best_restaurants_2018] ADD  DEFAULT (NULL) FOR [COL 7]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 1]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 2]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 3]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 4]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 5]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 6]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 7]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 8]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 9]
GO
ALTER TABLE [test].[worldcups] ADD  DEFAULT (NULL) FOR [COL 10]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'curso_php.informacion' , @level0type=N'SCHEMA',@level0name=N'curso_php', @level1type=N'TABLE',@level1name=N'informacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'test.hobbies' , @level0type=N'SCHEMA',@level0name=N'test', @level1type=N'TABLE',@level1name=N'hobbies'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'test.noticias1' , @level0type=N'SCHEMA',@level0name=N'test', @level1type=N'TABLE',@level1name=N'noticias1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'test.noticias2' , @level0type=N'SCHEMA',@level0name=N'test', @level1type=N'TABLE',@level1name=N'noticias2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'test.noticias3' , @level0type=N'SCHEMA',@level0name=N'test', @level1type=N'TABLE',@level1name=N'noticias3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'test.the_worlds_50_best_restaurants_2018' , @level0type=N'SCHEMA',@level0name=N'test', @level1type=N'TABLE',@level1name=N'the_worlds_50_best_restaurants_2018'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'test.worldcups' , @level0type=N'SCHEMA',@level0name=N'test', @level1type=N'TABLE',@level1name=N'worldcups'
GO
USE [master]
GO
ALTER DATABASE [curso_php] SET  READ_WRITE 
GO
