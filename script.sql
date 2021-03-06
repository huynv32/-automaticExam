USE [master]
GO
/****** Object:  Database [Demo.nnet]    Script Date: 7/23/2021 5:19:06 PM ******/
CREATE DATABASE [Demo.nnet] ON  PRIMARY 
( NAME = N'Demo.nnet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Demo.nnet.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demo.nnet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Demo.nnet_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demo.nnet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demo.nnet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demo.nnet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demo.nnet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demo.nnet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demo.nnet] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demo.nnet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Demo.nnet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demo.nnet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demo.nnet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demo.nnet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demo.nnet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demo.nnet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demo.nnet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demo.nnet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demo.nnet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Demo.nnet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demo.nnet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demo.nnet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demo.nnet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demo.nnet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demo.nnet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demo.nnet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demo.nnet] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Demo.nnet] SET  MULTI_USER 
GO
ALTER DATABASE [Demo.nnet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demo.nnet] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Demo.nnet', N'ON'
GO
USE [Demo.nnet]
GO
/****** Object:  Table [dbo].[StudentScore]    Script Date: 7/23/2021 5:19:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentScore](
	[RollName] [varchar](150) NOT NULL,
	[StudentName] [varchar](150) NOT NULL,
	[NoPaper] [varchar](50) NOT NULL,
	[Score] [float] NOT NULL,
	[NoQuestion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Demo.nnet] SET  READ_WRITE 
GO
