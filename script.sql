USE [master]
GO
/****** Object:  Database [dbo_Secim_Istatistik_Grafik_Sistemi]    Script Date: 20.10.2022 23:34:27 ******/
CREATE DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbo_Secim_Istatistik_Grafik_Sistemi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbo_Secim_Istatistik_Grafik_Sistemi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbo_Secim_Istatistik_Grafik_Sistemi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbo_Secim_Istatistik_Grafik_Sistemi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbo_Secim_Istatistik_Grafik_Sistemi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET  MULTI_USER 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET QUERY_STORE = OFF
GO
USE [dbo_Secim_Istatistik_Grafik_Sistemi]
GO
/****** Object:  Table [dbo].[tbl_Ilce]    Script Date: 20.10.2022 23:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Ilce](
	[Ilce_ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Ilce_Adi] [varchar](20) NULL,
	[A_Partisi] [smallint] NULL,
	[B_Partisi] [smallint] NULL,
	[C_Partisi] [smallint] NULL,
	[D_Partisi] [smallint] NULL,
	[E_Partisi] [smallint] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [dbo_Secim_Istatistik_Grafik_Sistemi] SET  READ_WRITE 
GO
