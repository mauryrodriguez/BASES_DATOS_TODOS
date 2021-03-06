USE [master]
GO
/****** Object:  Database [turismo]    Script Date: 12/02/2020 06:14:09 p. m. ******/
CREATE DATABASE [turismo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'turismo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\turismo.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'turismo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\turismo_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [turismo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [turismo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [turismo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [turismo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [turismo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [turismo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [turismo] SET ARITHABORT OFF 
GO
ALTER DATABASE [turismo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [turismo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [turismo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [turismo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [turismo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [turismo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [turismo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [turismo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [turismo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [turismo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [turismo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [turismo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [turismo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [turismo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [turismo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [turismo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [turismo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [turismo] SET RECOVERY FULL 
GO
ALTER DATABASE [turismo] SET  MULTI_USER 
GO
ALTER DATABASE [turismo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [turismo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [turismo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [turismo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [turismo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'turismo', N'ON'
GO
ALTER DATABASE [turismo] SET QUERY_STORE = OFF
GO
USE [turismo]
GO
/****** Object:  Table [dbo].[deportes_eventos_abril_2019]    Script Date: 12/02/2020 06:14:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deportes_eventos_abril_2019](
	[MES] [nvarchar](50) NOT NULL,
	[A_O] [smallint] NOT NULL,
	[INSTALACION] [nvarchar](50) NOT NULL,
	[ENTIDAD] [nvarchar](50) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[ACTIVIDAD] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRNS_Activities_2013_2015]    Script Date: 12/02/2020 06:14:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRNS_Activities_2013_2015](
	[ActivityNumber] [nvarchar](50) NULL,
	[HobbyName] [nvarchar](50) NULL,
	[ActivityName] [nvarchar](100) NULL,
	[SeasonName] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](50) NULL,
	[Community_Center] [nvarchar](50) NULL,
	[NumberEnrolled] [tinyint] NULL,
	[BeginningDate] [date] NULL,
	[EndingDate] [date] NULL,
	[StartingTime] [nvarchar](50) NULL,
	[EndingTime] [nvarchar](50) NULL,
	[Minimum_Age] [tinyint] NULL,
	[Maximum_Age] [tinyint] NULL,
	[WeekDays] [nvarchar](50) NULL,
	[NumberOfHours] [float] NULL,
	[NumberOfDates] [tinyint] NULL,
	[Fee] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorldCups]    Script Date: 12/02/2020 06:14:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorldCups](
	[Year] [smallint] NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Winner] [nvarchar](50) NOT NULL,
	[Runners_Up] [nvarchar](50) NOT NULL,
	[Third] [nvarchar](50) NOT NULL,
	[Fourth] [nvarchar](50) NOT NULL,
	[GoalsScored] [tinyint] NOT NULL,
	[QualifiedTeams] [tinyint] NOT NULL,
	[MatchesPlayed] [tinyint] NOT NULL,
	[Attendance] [float] NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [turismo] SET  READ_WRITE 
GO
